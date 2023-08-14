#Establish 12 digits format to ID tag first before read.csv
options(digits = 15)

library(dplyr)
library(openxlsx)
combined_data2 <- read.csv("Combined_data3FINAL.csv")
View(combined_data2)

###############################################

# blackwater exclusive_1

blackwater_exclusive_1 <- combined_data2 %>%
  group_by(dec_tag) %>%
  filter(site == "Blackwater" & !any(c("Lower Avochie", "Upper Avochie", "Submersible Avochie") %in% site)) %>%
  summarise(count = n()) %>%
  ungroup()

# View the resulting data
View(blackwater_exclusive_1)

# count blackwater_exclusive, n= 260

# Save blackwater_exclusive_1 as an Excel file
write.xlsx(blackwater_exclusive_1, file = "blackwater_exclusive_1.xlsx", rowNames = FALSE)

# blackwater and then later upper avochie

blackwater_upp_av_1 <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Blackwater", "Upper Avochie") %in% site) & !any(c("Lower Avochie", "Submersible Avochie") %in% site)) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(blackwater_upp_av_1)

# n= 78

# Save blackwater_upp_av_1 as an Excel file
write.xlsx(blackwater_upp_av_1, file = "blackwater_upp_av_1.xlsx", rowNames = FALSE)


# blackwater then upper avochie and finally lower avochie

blackwater_upp_av_low_av_1 <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Blackwater", "Upper Avochie", "Lower Avochie") %in% site) & !any(site == "Submersible Avochie")) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(blackwater_upp_av_low_av_1)

# n= 19

# Save blackwater_upp_av_1 as an Excel file
write.xlsx(blackwater_upp_av_low_av_1, file = "blackwater_upp_av_low_av_1.xlsx", rowNames = FALSE)

# blackwater, upper avochie and then submersible avochie

blackwater_upp_av_sub_av <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Blackwater", "Upper Avochie", "Submersible Avochie") %in% site) & !any(site == "Lower Avochie")) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(blackwater_upp_av_sub_av)

# n=3

# Save blackwater_upp_av_sub_av as an Excel file
write.xlsx(blackwater_upp_av_sub_av, file = "blackwater_upp_av_sub_av.xlsx", rowNames = FALSE)

# blackwater then lower avochie and finally submersible avochie

blackwater_low_av_sub_av <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Blackwater", "Lower Avochie", "Submersible Avochie") %in% site) & !any(site == "Upper Avochie")) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(blackwater_low_av_sub_av)

# n= 1

# Save blackwater_low_av_sub_av as an Excel file
write.xlsx(blackwater_low_av_sub_av, file = "blackwater_low_av_sub_av.xlsx", rowNames = FALSE)

# blackwater then lower avochie

blackwater_low_av_1 <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Blackwater", "Lower Avochie") %in% site) & !any(c("Submersible Avochie", "Upper Avochie") %in% site)) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(blackwater_low_av_1)

# n= 28

# Save blackwater_low_av_1 as an Excel file
write.xlsx(blackwater_low_av_1, file = "blackwater_low_av_1.xlsx", rowNames = FALSE)

# blackwater then submersible avochie

blackwater_sub_av <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Blackwater", "Submersible Avochie") %in% site) & !any(c("Lower Avochie", "Upper Avochie") %in% site)) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(blackwater_sub_av)

# n= 4

# Save blackwater_sub_av as an Excel file
write.xlsx(blackwater_sub_av, file = "blackwater_sub_av.xlsx", rowNames = FALSE)


# all 4 sites

all_sites_fish_1 <- combined_data2 %>%
  group_by(dec_tag) %>%
  filter(all(c("Blackwater", "Upper Avochie", "Lower Avochie", "Submersible Avochie") %in% site)) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(all_sites_fish_1)

# count all fish that started from blackwater and made it to submersibe avochie in the end
# n= 2

# Save all_sites_fish_1 as an Excel file
write.xlsx(all_sites_fish_1, file = "all_sites_fish_1.xlsx", rowNames = FALSE)







# upper avochie exclusive
upper_avochie_exclusives_1 <- combined_data2 %>%
  group_by(dec_tag) %>%
  filter(site == "Upper Avochie" & !any(c("Blackwater", "Lower Avochie", "Submersible Avochie") %in% site)) %>%
  summarise(count = n()) %>%
  ungroup()

View(upper_avochie_exclusives_1)
# n=105

# Save upper_avochie_exclusives_1 as an Excel file
write.xlsx(upper_avochie_exclusives_1, file = "upper_avochie_exclusives_1.xlsx", rowNames = FALSE)

# lower avochie exclusives
lower_avochie_exclusives_1 <- combined_data2 %>%
  group_by(dec_tag) %>%
  filter(site == "Lower Avochie" & !any(c("Blackwater", "Upper Avochie", "Submersible Avochie") %in% site)) %>%
  summarise(count = n()) %>%
  ungroup()

View(lower_avochie_exclusives_1)
# n=31


# Save lower_avochie_exclusives_1 as an Excel file
write.xlsx(lower_avochie_exclusives_1, file = "lower_avochie_exclusives_1.xlsx", rowNames = FALSE)

# submersible avochie
submersible_avochie_exclusives <- combined_data2 %>%
  group_by(dec_tag) %>%
  filter(site == "Submersible Avochie" & !any(c("Blackwater", "Upper Avochie", "Lower Avochie") %in% site)) %>%
  summarise(count = n()) %>%
  ungroup()

View(submersible_avochie_exclusives)
# n=8

# Save submersible_avochie_exclusives as an Excel file
write.xlsx(submersible_avochie_exclusives, file = "submersible_avochie_exclusives.xlsx", rowNames = FALSE)

# both_avochies (upper and lower) 

#Filter fish detected exclusively at BOTH first Avochie
both_avochies_1 <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Upper Avochie", "Lower Avochie") %in% site) & !any(c("Blackwater", "Submersible Avochie") %in% site)) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(both_avochies_1)
# n=28

# Save both_avochies_1 as an Excel file
write.xlsx(both_avochies_1, file = "both_avochies_1.xlsx", rowNames = FALSE)


# upper and submersible

upp_sub_avochies <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Upper Avochie", "Submersible Avochie") %in% site) & !any(c("Blackwater", "Lower Avochie") %in% site)) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(upp_sub_avochies)
# n=5


# Save upp_sub_avochies as an Excel file
write.xlsx(upp_sub_avochies, file = "upp_sub_avochies.xlsx", rowNames = FALSE)

#lower and submersible

low_sub_avochies <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Lower Avochie", "Submersible Avochie") %in% site) & !any(c("Blackwater", "Upper Avochie") %in% site)) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(low_sub_avochies)
# n=0

# Save low_sub_avochies as an Excel file
write.xlsx(low_sub_avochies, file = "low_sub_avochies.xlsx", rowNames = FALSE)


# all three avochies, NO BLACKWATER
all_three_avochies <- combined_data2 %>% 
  group_by(dec_tag) %>%
  filter(all(c("Upper Avochie", "Lower Avochie", "Submersible Avochie") %in% site) & !any(site == "Blackwater")) %>%
  distinct(dec_tag, .keep_all = TRUE) %>%
  ungroup()

View(all_three_avochies)
# n=1

# Save all_three_avochies as an Excel file
write.xlsx(all_three_avochies, file = "all_three_avochies.xlsx", rowNames = FALSE)
