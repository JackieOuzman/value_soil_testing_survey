#### **Question 14 N**

#Grower
#Which test do you currently use for soil N testing?
  
# Nitrogen 1 - Type of test = Organic carbon = Q14.1.1
# Nitrogen 1 - Frequency (times per season) NO RESPONSES!
# Nitrogen 1 - How many representative samples per paddock = Q14.1.3
# Nitrogen 2 - Type of test = Mineral N = Q14.2.1
# Nitrogen 2 - Frequency (times per season) NO RESPONSES!
# Nitrogen 2 - How many representative samples per paddock = Q14.2.3
# Nitrogen 3 - Type of test = Total n = Q14.3.1
# Nitrogen 3 - Frequency (times per season) NO RESPONSES!
# Nitrogen 3 - How many representative samples per paddock = Q14.3.3
# How frequently are paddocks tested i.e. every 3 years, every 5 years ... other?
 
###### Type of test 1 #### 
  
data
data$Q_14.1.1
data$Q_14.1.3

### use this this to count how many we have for test 1=organic carbon
subsetQ_14.1_coded_agro <- select(data, Q_14.1.1, Q_14.1.3, Resp_Group, `Respondent ID`) %>% 
  filter(Resp_Group == "Agronomist" )

head(subsetQ_14.1_coded_agro)

sum(is.na(subsetQ_14.1_coded_agro$Q_14.1.1)) #number of NA in this Question 14.1.1
sum(is.na(subsetQ_14.1_coded_agro$Q_14.1.3)) #number of NA in this Question 14.1.3


subsetQ_14.1_coded_agro_OC <- filter(subsetQ_14.1_coded_agro,
                                     Q_14.1.1 == "Organic Carbon")

#tail(subsetQ_14.1_coded_agro_OC)

subsetQ_14.1_coded_agro_MN <- filter(subsetQ_14.1_coded_agro,
                                     Q_14.1.1 == "Mineral N (Nitrate/Ammonium)")
subsetQ_14.1_coded_agro_TN <- filter(subsetQ_14.1_coded_agro,
                                     Q_14.1.1 == "Total N")


###### Type of test 2 #### 
data$Q_14.2.1
data$Q_14.2.3

### use this this to count how many we have for test 1=organic carbon
subsetQ_14.2_coded_agro <- select(data, Q_14.2.1, Q_14.2.3, Resp_Group, `Respondent ID`) %>% 
  filter(Resp_Group == "Agronomist" )

head(subsetQ_14.2_coded_agro)

sum(is.na(subsetQ_14.2_coded_agro$Q_14.2.1)) #number of NA in this Question 14.2.1
sum(is.na(subsetQ_14.2_coded_agro$Q_14.2.3)) #number of NA in this Question 14.2.3

#tail(subsetQ_14.2_coded_agro_OC)

subsetQ_14.2_coded_agro_OC <- filter(subsetQ_14.2_coded_agro,
                                     Q_14.2.1 == "Organic Carbon")
subsetQ_14.2_coded_agro_MN <- filter(subsetQ_14.2_coded_agro,
                                     Q_14.2.1 == "Mineral N (Nitrate/Ammonium)")
subsetQ_14.2_coded_agro_TN <- filter(subsetQ_14.2_coded_agro,
                                     Q_14.2.1 == "Total N")

###### Type of test 3 #### 
data$Q_14.3.1
data$Q_14.3.3

### use this this to count how many we have for test 1=organic carbon
subsetQ_14.3_coded_agro <- select(data, Q_14.3.1, Q_14.3.3, Resp_Group, `Respondent ID`) %>% 
  filter(Resp_Group == "Agronomist" )

head(subsetQ_14.3_coded_agro)

sum(is.na(subsetQ_14.3_coded_agro$Q_14.3.1)) #number of NA in this Question 14.3.1
sum(is.na(subsetQ_14.3_coded_agro$Q_14.3.3)) #number of NA in this Question 14.3.3

#tail(subsetQ_14.3_coded_agro_OC)

subsetQ_14.3_coded_agro_OC <- filter(subsetQ_14.3_coded_agro,
                                     Q_14.3.1 == "Organic Carbon")
subsetQ_14.3_coded_agro_MN <- filter(subsetQ_14.3_coded_agro,
                                     Q_14.3.1 == "Mineral N (Nitrate/Ammonium)")
subsetQ_14.3_coded_agro_TN <- filter(subsetQ_14.3_coded_agro,
                                     Q_14.3.1 == "Total N")

###Join 3 tests OC
subsetQ_14.1_coded_agro_OC
subsetQ_14.2_coded_agro_OC
subsetQ_14.3_coded_agro_OC

#remane clm headings

colnames(subsetQ_14.1_coded_agro_OC)[1] <- "Q_14"
colnames(subsetQ_14.1_coded_agro_OC)[2] <- "Q_14_freq"

colnames(subsetQ_14.2_coded_agro_OC)[1] <- "Q_14"
colnames(subsetQ_14.2_coded_agro_OC)[2] <- "Q_14_freq"


colnames(subsetQ_14.3_coded_agro_OC)[1] <- "Q_14"
colnames(subsetQ_14.3_coded_agro_OC)[2] <- "Q_14_freq"


Q14_OC_agro <-bind_rows(subsetQ_14.1_coded_agro_OC, subsetQ_14.2_coded_agro_OC, subsetQ_14.3_coded_agro_OC)

###Join 3 tests total N
subsetQ_14.1_coded_agro_TN
subsetQ_14.2_coded_agro_TN
subsetQ_14.3_coded_agro_TN

#remane clm headings

colnames(subsetQ_14.1_coded_agro_TN)[1] <- "Q_14"
colnames(subsetQ_14.1_coded_agro_TN)[2] <- "Q_14_freq"

colnames(subsetQ_14.2_coded_agro_TN)[1] <- "Q_14"
colnames(subsetQ_14.2_coded_agro_TN)[2] <- "Q_14_freq"


colnames(subsetQ_14.3_coded_agro_TN)[1] <- "Q_14"
colnames(subsetQ_14.3_coded_agro_TN)[2] <- "Q_14_freq"


Q14_TN_agro <-bind_rows(subsetQ_14.1_coded_agro_TN, subsetQ_14.2_coded_agro_TN, subsetQ_14.3_coded_agro_TN)

Q14_TN_agro

###Join 3 tests Mineral M
subsetQ_14.1_coded_agro_MN
subsetQ_14.2_coded_agro_MN
subsetQ_14.3_coded_agro_MN

#remane clm headings

colnames(subsetQ_14.1_coded_agro_MN)[1] <- "Q_14"
colnames(subsetQ_14.1_coded_agro_MN)[2] <- "Q_14_freq"

colnames(subsetQ_14.2_coded_agro_MN)[1] <- "Q_14"
colnames(subsetQ_14.2_coded_agro_MN)[2] <- "Q_14_freq"


colnames(subsetQ_14.3_coded_agro_MN)[1] <- "Q_14"
colnames(subsetQ_14.3_coded_agro_MN)[2] <- "Q_14_freq"


Q14_MN_agro <-bind_rows(subsetQ_14.1_coded_agro_MN, subsetQ_14.2_coded_agro_MN, subsetQ_14.3_coded_agro_MN)


# NEED to add colomn for # samples per paddock
####what depth ??


Q14_MN_agro
subsetQ14_MN_agro <- Q14_MN_agro %>% 
  group_by(Resp_Group) %>% 
  count(Q_14_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ14_OC_agro <- Q14_OC_agro %>% 
  group_by(Resp_Group) %>% 
  count(Q_14_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ14_TN_agro <- Q14_TN_agro %>% 
  group_by(Resp_Group) %>% 
  count(Q_14_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ14_MN_agro 
subsetQ14_OC_agro
subsetQ14_TN_agro

###join df with test
Q14_MN_agro
Q14_OC_agro
Q14_TN_agro

Q14_all_test <- bind_rows(Q14_MN_agro,Q14_OC_agro, Q14_TN_agro)

Q14_all_test


# filter out NA? no need as by asking for resposes to MN, OC & TN has automatically filtered out na#######
subsetQ14_All_agro <- Q14_all_test %>% 
  filter(!is.na(Q_14)) %>%
  group_by(Resp_Group) %>% 
  count(Q_14) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ14_All_agro




data_agro <- filter(data, Resp_Group == "Agronomist" )

#check out if we have any missing data for this question
#data_agro %>% group_by(Resp_Group) %>%
#         summarise(sum(is.na(Q_13.1)))

data_grower <- filter(data, Resp_Group == "Grower" )

data_grower

### any test do argo and grower sep and then join

Q13_percent_testing_2018_agro <- data_agro %>%
  filter(!is.na(Q_13.1)) %>% #this removes the na from the anlaysis
  group_by( Q_13.1 ) %>%
  summarise(n = n()) %>%
  mutate(percent = (freq = n / sum(n)),
         type = "percent_testing_2018",
         Resp_Group = "Agronomist")









# subsetQ_14.1_coded_grower <- select(data, Q_14.1.1, Q_14.1.3, Resp_Group) %>% 
#   filter(Resp_Group == "Grower" )
# 
# 
# 
# data$Q_14.1.1

### use this to count the how many we have for test 2=Mineral N
subsetQ_14.1_coded_agro <- select(data, Q_14.1.1, Q_14.1.3, Resp_Group) %>% 
  filter(Resp_Group == "Agronomist" ) %>% group_by (Q_14.1.1, Q_14.1.3 ) %>% summarise()

subsetQ_14.1_coded_agro

str(data$Q_14.1.1)

subsetQ_14.1_coded_agro <- data %>% 
  group_by(Resp_Group) %>% 
  count(Q_14.1.1) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ_14.1_coded_agro

subsetQ_14.3_coded_agro <- data %>% 
  group_by(Resp_Group) %>% 
  count(Q_14.1.3) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ_14.3_coded_agro









data$Q_14.1.1

### use this this to count the how many we have for test 2=Mineral N
subsetQ_14.1_coded_agro <- select(data, Q_14.1.1, Q_14.1.3, Resp_Group) %>% 
  filter(Resp_Group == "Agronomist" ) %>% group_by (Q_14.1.1, Q_14.1.3 ) %>% summarise()

subsetQ_14.1_coded_agro <- group_by(data, names_display) %>% 
  summarise(
    count = n () ) %>% 
  arrange(names_display)

subsetQ_14.1_coded_agro



###By Agro
#data$Q_14.1.1 %>% 
 # mutate(Q_14.1.1 == "Test", Q_14.1.3 == "Samples"))



data_Q_14.1summary <- select(data, Q_14.1.1,  Resp_Group) %>% 
  group_by(Resp_Group) %>% 
  count() %>% 
  mutate(percent = 
           (freq = n / sum(n))) %>% 
  filter(Q_14.1.1 != "NA") %>% 
  select(Resp_Group, percent) # %>% 
#mutate( nutrient = "N")
data_Q_14.1summary





subsetQ_14.1_coded_agro <- as.data.frame(count(subset_14.1_coded_agro, vars = Q_14.1.1, vars = Q_14.1.3 ))
#subsetQ_14.1_coded
names(subsetQ_14.1_coded) <- c("source", "Q_14.1_count") 
#subsetQ_14.2_coded
subsetQ_14.2_coded <- as.data.frame(count(subsetQ_14.2_coded_agro, vars = Q_14.2.1, vars = Q_14.2.3))
names(subsetQ_14.2_coded) <- c("source", "Q_14.2_count") 
subsetQ_14.3_coded <- as.data.frame(count(subsetQ_14.3_coded_agro, vars = Q_14.3.1, vars = Q_14.3.3))
names(subsetQ_14.3_coded) <- c("source", "Q_14.3_count") 

#subsetQ_14.1_coded
#subsetQ_14.2_coded
#subsetQ_14.3_coded
#join all the count data togther

subsetQ_14_coded_agro_1 <- full_join(subsetQ_14.1_coded, subsetQ_14.2_coded )
#subsetQ_14_coded_agro_1
subsetQ_14_coded_agro <- full_join(subsetQ_14_coded_agro_1, subsetQ_14.3_coded )
#subsetQ_14_coded_agro

subsetQ_14_coded_agro$Q_14.1_count[is.na(subsetQ_14_coded_agro$Q_14.1_count)] <- 0
subsetQ_11_coded_agro$Q_14.2_count[is.na(subsetQ_14_coded_agro$Q_14.2_count)] <- 0
subsetQ_11_coded_agro$Q_14.3_count[is.na(subsetQ_14_coded_agro$Q_14.3_count)] <- 0
#subsetQ_14_coded_agro[is.na(subsetQ_14_coded_agro)] <- 0 # change NA to zero
#subsetQ_14_coded_agro




data$Q_14.2.1

### use this this to count the how many we have for test 2=Mineral N
subsetQ_14.2_coded_agro <- select(data, Q_14.2.1, Q_14.2.3, Resp_Group) %>% 
  filter(Resp_Group == "Agronomist" )

sum(is.na(subsetQ_14.2_coded_agro$Q_14.2.1)) #number of NA in this Question 14.2.1
sum(is.na(subsetQ_14.2_coded_agro$Q_14.2.3)) #number of NA in this Question 14.2.3

subsetQ_14.2_coded_grower <- select(data, Q_14.2.1, Q_14.2.3, Resp_Group) %>% 
  filter(Resp_Group == "Grower" )

data$Q_14.3.1

### use this this to count the how many we have for test 3= Total N
subsetQ_14.3_coded_agro <- select(data, Q_14.3.1, Q_14.3.3, Resp_Group) %>% 
  filter(Resp_Group == "Agronomist" )

sum(is.na(subsetQ_14.3_coded_agro$Q_14.3.1)) #number of NA in this Question 14.3.1
sum(is.na(subsetQ_14.3_coded_agro$Q_14.3.3)) #number of NA in this Question 14.3.3

subsetQ_14.3_coded_grower <- select(data, Q_14.3.1, Q_14.3.3, Resp_Group) %>% 
  filter(Resp_Group == "Grower" )
