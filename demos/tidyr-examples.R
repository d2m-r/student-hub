##############################################
############# WEEK 4 : TIDYR #################
##############################################


### COMBINING DATA ###

# Bind rows with base::rbind and dplyr::bind_rows

# Create two tibbles, 3 columns: col1 col2 col3; each with 5 rows

tibble1 <- tibble(col1 = c(1, 2, 3, 4, 5),
                  col2 = c(6, 7, 8, 9, 10),
                  col3 = c(11, 12, 13, 14, 15))

tibble2 <- tibble(col1 = c(16, 17, 18, 19, 20),
                  col2 = c(21, 22, 23, 24, 25),
                  col3 = c(26, 27, 28, 29, 30))

# a third with an extra column
tibble3 <- tibble(col1 = c(16, 17, 18, 19, 20),
                  col2 = c(21, 22, 23, 24, 25),
                  col3 = c(26, 27, 28, 29, 30),
                  col4 = c(31, 32, 33, 34, 35))

# a fourth with different column names
tibble4 <- tibble(col_1 = c(16, 17, 18, 19, 20),
                  col_2 = c(21, 22, 23, 24, 25),
                  col_3 = c(26, 27, 28, 29, 30))

# a fifth with a different number of rows
tibble5 <- tibble(col1 = c(16, 17, 18, 19, 20, 21),
                  col2 = c(21, 22, 23, 24, 25, 26),
                  col3 = c(26, 27, 28, 29, 30, 31))

tibble1
tibble2
tibble3
tibble4
tibble5

rbind(tibble1, tibble2) # works fine
# rbind(tibble1, tibble3) ## NOT RUN -- gives an error because the tibbles have a different number of columns
# rbind(tibble1, tibble4) ## NOT RUN -- gives an error because the tibbles have different column names

bind_rows(tibble1, tibble2) # works fine, identical to rbind
bind_rows(tibble1, tibble3) # works fine, adds the extra column with NAs for missing the tibble1 values
bind_rows(tibble1, tibble4) # runs without error but treats the columns as different, so it adds the tibble4 columns to the end of the tibble1 columns

# Bind columns with base::cbind and dplyr::bind_cols

cbind(tibble1, tibble2) # works fine -- adds the columns of tibble2 to the right of tibble1, though it's not great that the columns have the same names
cbind(tibble1, tibble3) # works fine -- same number of rows, it's works like above
# cbind(tibble1, tibble5) ## NOT RUN -- gives an error because the tibbles have a different number of rows

bind_cols(tibble1, tibble2) # works fine, identical to cbind *except* it renames the columns to avoid conflicts, which is preferable
bind_cols(tibble1, tibble4) # column names were already different, so it doesn't need to rename
# bind_cols(tibble1, tibble5) ## NOT RUN -- gives an error because the tibbles have a different number of rows (same as with cbind)

# Note the difference between bind_rows and bind_cols in how they handle different numbers of rows/columns
# bind_rows will add NAs for missing values, bind_cols will give an error

## JOINS ##

# a family of functions that combine data from two data frames based on common variables
# anything you can do with bind_rows/bind_cols you can do with joins (not the reverse)

# Two data frames to join
# Both have a "name" column, but the values in the "name" columns are not the same
# Mick is only in _members, Keith is only in _instruments
# John and Paul are in both

band_members
band_instruments

## Four most common kinds of joins

# Inner join: only rows with matching values in both data frames are returned
# result: 2 rows, one for John and one for Paul
inner_join(band_members, band_instruments)

# Full join: all rows from both data frames are returned, with NAs for missing values
# result: 4 rows, one for each band member; NAs for Mick's instrument and Keith's band
full_join(band_members, band_instruments)


# Left join: all rows from the first data frame are returned, with NAs for missing values in the second data frame
# result: 3 rows, one for each band member in band_members; no Keith
left_join(band_members, band_instruments)


# Right join: all rows from the second data frame are returned, with NAs for missing values in the first data frame
# result: 3 rows, one for each band member in band_instruments; no Mick
right_join(band_members, band_instruments)

# For left and right joins, order matters! The first data frame is the "left" and the second is the "right"
# Which means a left join is the same as a right join with the data frames reversed (though row order will differ)
left_join(band_members, band_instruments)
right_join(band_instruments, band_members)


# The "by" argument specifies the column(s) to join on
# These are all identical
left_join(band_members, band_instruments)
left_join(band_members, band_instruments,
          by = join_by(name))
left_join(band_members, band_instruments,
          by = "name")
right_join(band_instruments, band_members)
band_instruments %>%
    right_join(band_members,
               by = "name")

# If the columns have different names, you can specify the columns to join on in each data frame
rename.band_members <- band_members %>%
    rename(member = name)

# the order of the names should match the order of the dfs
left_join(rename.band_members, band_instruments,
          by = c("member" = "name")) 



### TIDYR ###


# Read in the mmdata from above if it's not loaded!
# mmdata <- read_csv("00_in-class-materials/data/mmdata-ND.csv")


## Pivot wide and long

# pivot mmdata (originally wide) to long
mmdata.long <- mmdata %>%
    pivot_longer(cols = c("Red", "Green", "Blue", "Orange", "Yellow", "Brown"),
                 names_to = "Color",
                 values_to = "Number")


# pivot long mmdata to wide; back to where it started
mmdata.wide <- mmdata.long %>% 
    pivot_wider(names_from = "Color", values_from = "Number") %>% 
    # Relocate works like select by reordering columns, but doesn't drop anything
    # Kind of like how rename works like select by renaming but not dropping
    relocate(Weight,.after = last_col())

# They are the same
mmdata.wide == mmdata
# Or are they??
all.equal(mmdata.wide, mmdata)
# Basically yes. The differences are in the df attributes, not the data
# You can view attributes of any object in the environment tab by clicking
# the little blue arrow next to the object name
# or with

attributes(mmdata.wide)
attributes(mmdata)


# Create example tbl for tidyr functions

# ?Q?: Is this wide or long?
glasses <- tibble(
    condition = c(1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2),
    participant = c(1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6),
    score = runif(12),
    notes = c("glasses_none", "glasses_none", "none_none", "none_none",
              "none_incomplete", "none_incomplete", "none_none", "none_none",
              "glasses_none", "glasses_none", "glasses_late", "glasses_late")
)

# Separate "notes" column into two columns by recognizing "_" separator
glasses.sep <- glasses %>%
    separate(notes, c("vision_correction", "other_notes"), sep = "_")

# separate() works, but it has been superseded by 
# separate_wider_position() & separate_wider_position()

# *_position() will split based on integer values for each new column and for the separator
glasses.sep.pos <- glasses %>% 
    separate_wider_position(notes, c(vision_correction = 4, 1, other_notes = 4), too_many = "drop") # not super helpful here

# *_delim() will split based on a given separator, like separate()
# but has slightly different syntax
glasses.sep.delim <- glasses %>% 
    separate_wider_delim(notes, delim = "_", names = c("vision_correction", "other_notes"))

## Take a minute to view glasses.sep, glasses.sep.pos, and glasses.sep.delim to see the differences

# Unite the 2 columns back to 1 with a new separator (use ; not _)
glasses.unite <- glasses.sep %>%
    unite("semicolon_notes", "vision_correction":"other_notes", sep = ";")


## Missing data

# Create example tibble: daily temperature readings with gaps
weather <- tibble(
  date = as.Date(c("2026-01-20", "2026-01-21", "2026-01-21", "2026-01-23", "2026-01-24")),
  station = c("North", "North", "South", "South", "North"),
  temp_max = c(32, NA, 28, 30, NA),
  temp_min = c(18, 15, NA, 20, 17),
  notes = c("Clear", NA, "Windy", NA, "Cloudy")
)

weather


# expand() - Create NEW tibble with all combinations
# Note: Only date and station columns - original data dropped!
weather |> 
  expand(date, station)


# complete() - ADD missing combinations to existing data
# Note: All original columns retained, NAs for new rows
weather |> 
  complete(date, station)


# Drop rows with ANY NA
weather |> drop_na()

# Fill down (use previous non-NA value)
weather |> fill(notes)

# Fill up (use next non-NA value)
weather |> fill(temp_max, .direction = "up")

# Replace NAs with specific values
weather |> 
  replace_na(list(
    temp_max = 999,
    temp_min = 999,
    notes = "No notes"
  ))

# ?Q? What's actually missing in this missingdata tibble?
missingdata <- tibble(
    condition = c(1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2),
    participant = c(1, NA, NA, NA, 2, NA, NA, NA, 3, NA, NA),
    trial = c(1, 2, 3, 4, 1, 2, 3, 4, 1, 3, 4),
    score = c(0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1),
)

fixeddata <- missingdata %>%
    # participant id is only indicated for the first observation for each participant, fill it in for the rest
    fill(participant) %>% 
    # p3 did not complete trial 2, but we should still see evidence of the (incomplete) observation
    complete(condition, trial) %>%
    replace_na(list(participant = 3)) %>% # a HACK (will not generalize/will break)
    arrange(condition, participant, trial) # just to make it pretty

## Alternatively...

# use crossing() to create a tibble of all possible (i.e. expected) participant x trial observations 
# note that crossing() is a wrapper for expand_grid(), which is a helper for expand(), meaning you can replicate this just with expand() but this is more convenient
# Remember this isn't the data itself, it's a kind of template for how the data could be structured in an ideal world with nothing missing
all.ptcp.trial.combos <- crossing(
    participant = unique(missingdata$participant),
    trial = c(1:4)) %>%
    filter(!is.na(participant)) 

## now fix the missing data by...
fixeddata2 <- missingdata %>%
    # using the same fill() fnct to fix participant col.
    fill(participant) %>%
    # join with the expanded tibble of expected combos
    full_join(all.ptcp.trial.combos) %>%
    arrange(participant, trial) %>% # superstitious (it's already sorted this way) but harmless
    # the expected observation for p3, trial2 has been created and is missing values for score (appropriately) and condition, but we know what the condition should be and use fill() as we did above 
    fill(condition)
