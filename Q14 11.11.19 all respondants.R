data
data$Q_14.1.1
data$Q_14.1.3

### use this this to count how many we have for test 1=organic carbon
subsetQ_14.1 <- select(data, Q_14.1.1, Q_14.1.3, Resp_Group, `Respondent ID`)

head(subsetQ_14.1)


sum(is.na(subsetQ_14.1$Q_14.1.1)) #number of NA in this Question 14.1.1
sum(is.na(subsetQ_14.1$Q_14.1.3)) #number of NA in this Question 14.1.3


subsetQ_14.1_OC <- filter(subsetQ_14.1,
                                     Q_14.1.1 == "Organic Carbon")

#tail(subsetQ_14.1_coded_agro_OC)

subsetQ_14.1_MN <- filter(subsetQ_14.1,
                                     Q_14.1.1 == "Mineral N (Nitrate/Ammonium)")
subsetQ_14.1_TN <- filter(subsetQ_14.1,
                                     Q_14.1.1 == "Total N")


###### Type of test 2 #### 
data$Q_14.2.1
data$Q_14.2.3

### use this this to count how many we have for test 1=organic carbon
subsetQ_14.2<- select(data, Q_14.2.1, Q_14.2.3, Resp_Group, `Respondent ID`) 

head(subsetQ_14.2)

sum(is.na(subsetQ_14.2$Q_14.2.1)) #number of NA in this Question 14.2.1
sum(is.na(subsetQ_14.2$Q_14.2.3)) #number of NA in this Question 14.2.3

#tail(subsetQ_14.2_coded_agro_OC)

subsetQ_14.2_OC <- filter(subsetQ_14.2,
                                     Q_14.2.1 == "Organic Carbon")
subsetQ_14.2_MN <- filter(subsetQ_14.2,
                                     Q_14.2.1 == "Mineral N (Nitrate/Ammonium)")
subsetQ_14.2_TN <- filter(subsetQ_14.2,
                                     Q_14.2.1 == "Total N")

###### Type of test 3 #### 
data$Q_14.3.1
data$Q_14.3.3

### use this this to count how many we have for test 1=organic carbon
subsetQ_14.3 <- select(data, Q_14.3.1, Q_14.3.3, Resp_Group, `Respondent ID`) 

head(subsetQ_14.3)

sum(is.na(subsetQ_14.3$Q_14.3.1)) #number of NA in this Question 14.3.1
sum(is.na(subsetQ_14.3$Q_14.3.3)) #number of NA in this Question 14.3.3

#tail(subsetQ_14.3_OC)

subsetQ_14.3_OC <- filter(subsetQ_14.3,
                                     Q_14.3.1 == "Organic Carbon")
subsetQ_14.3_MN <- filter(subsetQ_14.3,
                                     Q_14.3.1 == "Mineral N (Nitrate/Ammonium)")
subsetQ_14.3_TN <- filter(subsetQ_14.3,
                                     Q_14.3.1 == "Total N")

###Join 3 tests OC
subsetQ_14.1_OC
subsetQ_14.2_OC
subsetQ_14.3_OC

#remane clm headings

colnames(subsetQ_14.1_OC)[1] <- "Q_14"
colnames(subsetQ_14.1_OC)[2] <- "Q_14_freq"

colnames(subsetQ_14.2_OC)[1] <- "Q_14"
colnames(subsetQ_14.2_OC)[2] <- "Q_14_freq"


colnames(subsetQ_14.3_OC)[1] <- "Q_14"
colnames(subsetQ_14.3_OC)[2] <- "Q_14_freq"


Q14_OC <-bind_rows(subsetQ_14.1_OC, subsetQ_14.2_OC, subsetQ_14.3_OC)

###Join 3 tests total N
subsetQ_14.1_TN
subsetQ_14.2_TN
subsetQ_14.3_TN

#remane clm headings

colnames(subsetQ_14.1_TN)[1] <- "Q_14"
colnames(subsetQ_14.1_TN)[2] <- "Q_14_freq"

colnames(subsetQ_14.2_TN)[1] <- "Q_14"
colnames(subsetQ_14.2_TN)[2] <- "Q_14_freq"


colnames(subsetQ_14.3_TN)[1] <- "Q_14"
colnames(subsetQ_14.3_TN)[2] <- "Q_14_freq"


Q14_TN <-bind_rows(subsetQ_14.1_TN, subsetQ_14.2_TN, subsetQ_14.3_TN)

Q14_TN

###Join 3 tests Mineral M
subsetQ_14.1_MN
subsetQ_14.2_MN
subsetQ_14.3_MN

#remane clm headings

colnames(subsetQ_14.1_MN)[1] <- "Q_14"
colnames(subsetQ_14.1_MN)[2] <- "Q_14_freq"

colnames(subsetQ_14.2_MN)[1] <- "Q_14"
colnames(subsetQ_14.2_MN)[2] <- "Q_14_freq"


colnames(subsetQ_14.3_MN)[1] <- "Q_14"
colnames(subsetQ_14.3_MN)[2] <- "Q_14_freq"


Q14_MN <-bind_rows(subsetQ_14.1_MN, subsetQ_14.2_MN, subsetQ_14.3_MN)
# NEED to add colomn for # samples per paddock
####what depth ??
Q14_MN
####what depth ??
subsetQ14_MN<- Q14_MN %>%
  filter(!is.na(Q_14)) %>%
  group_by(Resp_Group) %>% 
  count(Q_14_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ14_OC <- Q14_OC %>% 
  filter(!is.na(Q_14)) %>%
  group_by(Resp_Group) %>% 
  count(Q_14_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ14_TN <- Q14_TN %>% 
  filter(!is.na(Q_14)) %>%
  group_by(Resp_Group) %>% 
  count(Q_14_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ14_MN
subsetQ14_OC
subsetQ14_TN

###join df with test
Q14_MN
Q14_OC
Q14_TN

Q14_all_test <- bind_rows(Q14_MN, Q14_OC, Q14_TN)

Q14_all_test

# filter out NA? no need as by asking for resposes to MN, OC & TN has automatically filtered out na#######
subsetQ14_All_agro_grower <- Q14_all_test %>% 
  # filter(!is.na(Q_14)) %>%
  group_by(Resp_Group) %>% 
  count(Q_14) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ14_All_agro_grower

# filter out NA in Q14_freq ######
subsetQ14_All_agro_grower <- Q14_all_test %>% 
  filter(!is.na(Q_14_freq)) %>%
  group_by(Resp_Group) %>% 
  count(Q_14_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ14_All_agro_grower

Q14_all_test

subsetQ14_All_agro_grower <- Q14_all_test %>% 
  filter(!is.na(Q_14_freq)) %>%
  group_by(Resp_Group, Q_14) %>% 
  count(Q_14_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ14_All_agro_grower$Q_14_freq <- factor(subsetQ14_All_agro_grower$Q_14_freq,levels = c("0-5",  "5-10", "10-15", 
                                                "15-20", "20-25",  "25-30",  "greater than 30"))

                         


ggplot(subsetQ14_All_agro_grower, aes (x = Q_14_freq, y = percent))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Resp_Group ~ Q_14)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "Test",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil N testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) +
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


ggplot(subsetQ14_All_agro_grower, aes (x = Q_14_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Resp_Group ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "Test",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil N testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) #+
  #scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


ggplot(subsetQ14_All_agro_grower, aes (x = Q_14_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Q_14 ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "Test",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil N testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) #+
  #scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 

subsetQ14_All_agro_grower

ggplot(subsetQ14_All_agro_grower, aes (x = Q_14_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  #facet_wrap( Q_14 ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "Test",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil N testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) 
  #scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 






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

### any test do argo and grower sep and then join

Q13_percent_testing_2018_agro <- data_agro %>%
  filter(!is.na(Q_13.1)) %>% #this removes the na from the anlaysis
  group_by( Q_13.1 ) %>%
  summarise(n = n()) %>%
  mutate(percent = (freq = n / sum(n)),
         type = "percent_testing_2018",
         Resp_Group = "Agronomist")
