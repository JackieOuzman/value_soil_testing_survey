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
  
  

data$Q_14.1.1

### use this this to count how many we have for test 1=organic carbon
subsetQ_14.1_coded_agro <- select(data, Q_14.1.1, Q_14.1.3, Resp_Group) %>% 
  filter(Resp_Group == "Agronomist" )

summary(subsetQ_14.1_coded_agro)

sum(is.na(subsetQ_14.1_coded_agro$Q_14.1.1)) #number of NA in this Question 14.1.1
sum(is.na(subsetQ_14.1_coded_agro$Q_14.1.3)) #number of NA in this Question 14.1.3

subsetQ_14.1_coded_grower <- select(data, Q_14.1.1, Q_14.1.3, Resp_Group) %>% 
  filter(Resp_Group == "Grower" )



data$Q_14.1.1

### use this this to count the how many we have for test 2=Mineral N
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
