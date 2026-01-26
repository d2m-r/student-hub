### dplyr & pipes demo

## dplyr functions

# filter()
filter(mmdata, Weight >= 50)
filter(mmdata, Green == 7, Blue == 7)

# select()
select(mmdata, Bag, Weight)
select(mmdata, Bag, Yellow, Red)
select(mmdata, Red, Yellow, Bag)
select(mmdata, -Bag)
select(mmdata, starts_with("B"))
select(mmdata, bag_id = Bag, Red, Blue, wght = Weight)
select(mmdata, red = Red, bag_id = Bag)
rename(mmdata, red = Red, bag_id = Bag)

# arrange() 
arrange(mmdata, Weight)
mmdata %>% 
    arrange(Blue, -Red)

# put it together: filter+select+rename+arrange
mmdata %>% 
    filter(Weight >= 50) %>% 
    select(-Bag) %>% 
    rename(Tangerine = Orange, Lemon = Yellow) %>% 
    arrange(Tangerine, -Lemon)

# mutate()
mutate(mmdata, Candy = "M&M") #very useful
mutate(mmdata, Christmas = Red + Green)
mutate(mmdata,
       Primary = Red + Blue + Yellow,
       Avg_Primary_Weight = Weight/Primary)
mutate(mmdata,
       Weight = Weight*.035, #convert grams to ounces, replacing values in Weight column
       Weight_Gr = Weight/.035, # convert back...just to be confusing I guess
       Total = Red + Green + Blue + Orange + Yellow + Brown,
       Avg_Weight_Oz = Weight/Total)

#####

# messing with the data a bit to use in next examples
mmdata2 <- mmdata %>%  
    mutate(Whose = case_when(Bag < 11 ~ "Natalie",
                             Bag < 21 ~ "Audrey",
                             TRUE ~ "Gilroy"),
           Big_Green = ifelse(Green > 7, TRUE, FALSE))
#####

# group_by() & summarize()
summarize(mmdata2, mean_wgt = mean(Weight))
group_by(mmdata2, Whose) %>% summarize(whose_mean_wgt = mean(Weight))
mmdata2 %>% 
    group_by(Whose, Big_Green) %>% 
    summarize(count_big_green_bags = n()) # the n() function counts rows without taking any arguments
mmdata2 %>% 
    group_by(Whose, Big_Green) %>% 
    summarize(Sum_BG_Green = sum(Green), Sum_BG_Red = sum(Red), Sum_BG_Blue = sum(Blue)) %>% 
    # We can regroup by just one condition to then summarize on summary values
    # although why we would want the mean per person of the sum of each color Big Green and not Big Green is beyond me
    group_by(Whose) %>% 
    summarize(why_green = mean(Sum_BG_Green), why_red = mean(Sum_BG_Red), why_blue = (mean(Sum_BG_Blue)))

# ONE GIANT PIPE!
# Who has the Citrus-y-est, Primary-est, and Christmas-y collections of M&Ms?
# This is an absurd pipe for example purposes only
# Please never actually construct something that does something so confusing and pointless

mmdata %>%  
    # Divvy up the bags evenly
    mutate(Whose = case_when(Bag < 11 ~ "Natalie",
                             Bag < 21 ~ "Audrey",
                             TRUE ~ "Gilroy")) %>% 
    # Natalie benevolently removes herself from the competition
    filter(Whose != "Natalie") %>% 
    # Who cares about bag number now that we've divided them up
    select(-Bag) %>% 
    # This rowwise() function makes it easier to sum up many columns in the next line, but you could skip it if you wrote out each column individually: mutate(Total = Red + Yellow + Green + ...)
    rowwise() %>% 
    # c_across() is a helper function that makes it easier to sum up many columns
    mutate(Total = sum(c_across(Red:Brown))) %>% 
    # Fruity flavors please
    rename(Tangerine = Orange, Lemon = Yellow, Grapefruit = Red, Lime = Green) %>% 
    # Classic m&m color schemes, doesn't everyone associate grapefruit and lime with Christmas?
    mutate(Christmas = Grapefruit + Lime,
           Primary = Grapefruit + Blue + Lemon,
           Citrus = Tangerine + Lemon + Grapefruit + Lime) %>% 
    # Group by Whose to summarize Audrey's and Gilroy's collections separately
    group_by(Whose) %>% 
    # Sum up the totals for each collection
    summarize(Total = sum(Total), sum_Christmas = sum(Christmas), sum_Primary = sum(Primary), sum_Citrus = sum(Citrus)) %>% 
    # Calculate the percentage of each collection that is each flavor, which we need to know for important reasons
    # Take a second to figure out exactly what these percentages mean, so we know what the winner has actually managed to achieve
    mutate(pct_Christmas = sum_Christmas/Total, pct_Primary = sum_Primary/Total, pct_Citrus = sum_Citrus/Total) %>%
    # Select only the columns we care about
    select(1:2, Christmas = pct_Christmas, Primary = pct_Primary, Citrus = pct_Citrus) %>% 
    # Sort rows to find our citrus champion
    arrange(Citrus)

# Congratulations Gilroy! You have the most citrus-y collection of M&Ms!
