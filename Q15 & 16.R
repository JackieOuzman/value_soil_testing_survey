#### **Question 15 P**
##Which tests do you use for P tests?
  
# #  * Phosphorus 1 - Type of test
# #* Phosphorus 1 - Frequency (times per season)
# * Phosphorus 1 - How many representative samples per paddock
# * Phosphorus 2 - Type of test
# * Phosphorus 2 - Frequency (times per season)
# * Phosphorus 2 - How many representative samples per paddock
# * Phosphorus 3 - Type of test
# * Phosphorus 3 - Frequency (times per season)
# * Phosphorus 3 - How many representative samples per paddock
# * Phosphorus 4 - Type of test
# * Phosphorus 4 - Frequency (times per season)
# * Phosphorus 4 - How many representative samples per paddock
# * Phosphorus 5 - Type of test
# * Phosphorus 5 - Frequency (times per season)
# * Phosphorus 5 - How many representative samples per paddock
# * How frequently are your clients paddocks tested i.e. every 3 years, every 5 years ... other?
#   
#   ```{r Q15 data work up, include=FALSE}

data
data$Q_15.1.1
data$Q_15.1.3

### use this this to count how many we have for test 1=PBI (Phosphorus Buffering Index)

subsetQ_15.1 <- select(data, Q_15.1.1, Q_15.1.3, Resp_Group, `Respondent ID`)

head(subsetQ_15.1)


sum(is.na(subsetQ_15.1$Q_15.1.1)) #number of NA in this Question 15.1.1
sum(is.na(subsetQ_15.1$Q_15.1.3)) #number of NA in this Question 15.1.3

#tail(subsetQ_15.1_coded_agro_PBI)

subsetQ_15.1_PBI <- filter(subsetQ_15.1,
                          Q_15.1.1 == "PBI (Phosphorus Buffering Index)")
subsetQ_15.1_OB_P <- filter(subsetQ_15.1,
                          Q_15.1.1 == "Olsen-Bray P")
subsetQ_15.1_C_P <- filter(subsetQ_15.1,
                          Q_15.1.1 == "Colwell P")
subsetQ_15.1_DGT <- filter(subsetQ_15.1,
                                 Q_15.1.1 == "DGT")
subsetQ_15.1_TP <- filter(subsetQ_15.1,
                                 Q_15.1.1 == "Total P")

###### Type of test 2 #### 
data$Q_15.2.1
data$Q_15.2.3

### use this this to count how many we have for test 2=Olsen-Bray P
subsetQ_15.2<- select(data, Q_15.2.1, Q_15.2.3, Resp_Group, `Respondent ID`) 

head(subsetQ_15.2)

sum(is.na(subsetQ_15.2$Q_15.2.1)) #number of NA in this Question 15.2.1
sum(is.na(subsetQ_15.2$Q_15.2.3)) #number of NA in this Question 15.2.3

#tail(subsetQ_15.2_coded_agro_OB_P)

subsetQ_15.2_PBI <- filter(subsetQ_15.2,
                           Q_15.2.1 == "PBI (Phosphorus Buffering Index)")
subsetQ_15.2_OB_P <- filter(subsetQ_15.2,
                            Q_15.2.1 == "Olsen-Bray P")
subsetQ_15.2_C_P <- filter(subsetQ_15.2,
                           Q_15.2.1 == "Colwell P")
subsetQ_15.2_DGT <- filter(subsetQ_15.2,
                           Q_15.2.1 == "DGT")
subsetQ_15.2_TP <- filter(subsetQ_15.2,
                          Q_15.2.1 == "Total P")

###### Type of test 3 #### 
data$Q_15.3.1
data$Q_15.3.3

### use this this to count how many we have for test 3=Colwell P
subsetQ_15.3 <- select(data, Q_15.3.1, Q_15.3.3, Resp_Group, `Respondent ID`) 

head(subsetQ_15.3)

sum(is.na(subsetQ_15.3$Q_15.3.1)) #number of NA in this Question 15.3.1
sum(is.na(subsetQ_15.3$Q_15.3.3)) #number of NA in this Question 15.3.3

#tail(subsetQ_15.3_CP)

subsetQ_15.3_PBI <- filter(subsetQ_15.3,
                           Q_15.3.1 == "PBI (Phosphorus Buffering Index)")
subsetQ_15.3_OB_P <- filter(subsetQ_15.3,
                            Q_15.3.1 == "Olsen-Bray P")
subsetQ_15.3_C_P <- filter(subsetQ_15.3,
                           Q_15.3.1 == "Colwell P")
subsetQ_15.3_DGT <- filter(subsetQ_15.3,
                           Q_15.3.1 == "DGT")
subsetQ_15.3_TP <- filter(subsetQ_15.3,
                          Q_15.3.1 == "Total P")


###### Type of test 4 #### 
data$Q_15.4.1
data$Q_15.4.3

### use this this to count how many we have for test 4=DGT
subsetQ_15.4 <- select(data, Q_15.4.1, Q_15.4.3, Resp_Group, `Respondent ID`) 

head(subsetQ_15.4)

sum(is.na(subsetQ_15.4$Q_15.4.1)) #number of NA in this Question 15.4.1
sum(is.na(subsetQ_15.4$Q_15.4.3)) #number of NA in this Question 15.4.3

#tail(subsetQ_15.4_DGT)

subsetQ_15.4_PBI <- filter(subsetQ_15.4,
                           Q_15.4.1 == "PBI (Phosphorus Buffering Index)")
subsetQ_15.4_OB_P <- filter(subsetQ_15.4,
                            Q_15.4.1 == "Olsen-Bray P")
subsetQ_15.4_C_P <- filter(subsetQ_15.4,
                           Q_15.4.1 == "Colwell P")
subsetQ_15.4_DGT <- filter(subsetQ_15.4,
                           Q_15.4.1 == "DGT")
subsetQ_15.4_TP <- filter(subsetQ_15.4,
                          Q_15.4.1 == "Total P")

###### Type of test 5 #### 
data$Q_15.5.1
data$Q_15.5.3

### use this this to count how many we have for test 5=Total P
subsetQ_15.5 <- select(data, Q_15.5.1, Q_15.5.3, Resp_Group, `Respondent ID`) 

head(subsetQ_15.5)

sum(is.na(subsetQ_15.5$Q_15.5.1)) #number of NA in this Question 15.5.1
sum(is.na(subsetQ_15.5$Q_15.5.3)) #number of NA in this Question 15.5.3

#tail(subsetQ_15.5_TP)

subsetQ_15.5_PBI <- filter(subsetQ_15.5,
                           Q_15.5.1 == "PBI (Phosphorus Buffering Index)")
subsetQ_15.5_OB_P <- filter(subsetQ_15.5,
                            Q_15.5.1 == "Olsen-Bray P")
subsetQ_15.5_C_P <- filter(subsetQ_15.5,
                           Q_15.5.1 == "Colwell P")
subsetQ_15.5_DGT <- filter(subsetQ_15.5,
                           Q_15.5.1 == "DGT")
subsetQ_15.5_TP <- filter(subsetQ_15.5,
                          Q_15.5.1 == "Total P")

####Join 5 tests PBI
subsetQ_15.1_PBI
subsetQ_15.2_PBI
subsetQ_15.3_PBI
subsetQ_15.4_PBI
subsetQ_15.5_PBI

#remane clm headings

colnames(subsetQ_15.1_PBI)[1] <- "Q_15"
colnames(subsetQ_15.1_PBI)[2] <- "Q_15_freq"

colnames(subsetQ_15.2_PBI)[1] <- "Q_15"
colnames(subsetQ_15.2_PBI)[2] <- "Q_15_freq"

colnames(subsetQ_15.3_PBI)[1] <- "Q_15"
colnames(subsetQ_15.3_PBI)[2] <- "Q_15_freq"

colnames(subsetQ_15.4_PBI)[1] <- "Q_15"
colnames(subsetQ_15.4_PBI)[2] <- "Q_15_freq"

colnames(subsetQ_15.5_PBI)[1] <- "Q_15"
colnames(subsetQ_15.5_PBI)[2] <- "Q_15_freq"       


Q15_PBI <-bind_rows(subsetQ_15.1_PBI, subsetQ_15.2_PBI, subsetQ_15.3_PBI, subsetQ_15.4_PBI, subsetQ_15.5_PBI)

Q15_PBI

####Join 5 tests OB_P
subsetQ_15.1_OB_P
subsetQ_15.2_OB_P
subsetQ_15.3_OB_P
subsetQ_15.4_OB_P
subsetQ_15.5_OB_P

#remane clm headings

colnames(subsetQ_15.1_OB_P)[1] <- "Q_15"
colnames(subsetQ_15.1_OB_P)[2] <- "Q_15_freq"

colnames(subsetQ_15.2_OB_P)[1] <- "Q_15"
colnames(subsetQ_15.2_OB_P)[2] <- "Q_15_freq"

colnames(subsetQ_15.3_OB_P)[1] <- "Q_15"
colnames(subsetQ_15.3_OB_P)[2] <- "Q_15_freq"

colnames(subsetQ_15.4_OB_P)[1] <- "Q_15"
colnames(subsetQ_15.4_OB_P)[2] <- "Q_15_freq"

colnames(subsetQ_15.5_OB_P)[1] <- "Q_15"
colnames(subsetQ_15.5_OB_P)[2] <- "Q_15_freq"       


Q15_OB_P <-bind_rows(subsetQ_15.1_OB_P, subsetQ_15.2_OB_P, subsetQ_15.3_OB_P, subsetQ_15.4_OB_P, subsetQ_15.5_OB_P)
Q15_OB_P
####Join 5 tests C_P
subsetQ_15.1_C_P
subsetQ_15.2_C_P
subsetQ_15.3_C_P
subsetQ_15.4_C_P
subsetQ_15.5_C_P

#remane clm headings

colnames(subsetQ_15.1_C_P)[1] <- "Q_15"
colnames(subsetQ_15.1_C_P)[2] <- "Q_15_freq"

colnames(subsetQ_15.2_C_P)[1] <- "Q_15"
colnames(subsetQ_15.2_C_P)[2] <- "Q_15_freq"

colnames(subsetQ_15.3_C_P)[1] <- "Q_15"
colnames(subsetQ_15.3_C_P)[2] <- "Q_15_freq"

colnames(subsetQ_15.4_C_P)[1] <- "Q_15"
colnames(subsetQ_15.4_C_P)[2] <- "Q_15_freq"

colnames(subsetQ_15.5_C_P)[1] <- "Q_15"
colnames(subsetQ_15.5_C_P)[2] <- "Q_15_freq"       


Q15_C_P <-bind_rows(subsetQ_15.1_C_P, subsetQ_15.2_C_P, subsetQ_15.3_C_P, subsetQ_15.4_C_P, subsetQ_15.5_C_P)

####Join 5 tests DGT
subsetQ_15.1_DGT
subsetQ_15.2_DGT
subsetQ_15.3_DGT
subsetQ_15.4_DGT
subsetQ_15.5_DGT

#remane clm headings

colnames(subsetQ_15.1_DGT)[1] <- "Q_15"
colnames(subsetQ_15.1_DGT)[2] <- "Q_15_freq"

colnames(subsetQ_15.2_DGT)[1] <- "Q_15"
colnames(subsetQ_15.2_DGT)[2] <- "Q_15_freq"

colnames(subsetQ_15.3_DGT)[1] <- "Q_15"
colnames(subsetQ_15.3_DGT)[2] <- "Q_15_freq"

colnames(subsetQ_15.4_DGT)[1] <- "Q_15"
colnames(subsetQ_15.4_DGT)[2] <- "Q_15_freq"

colnames(subsetQ_15.5_DGT)[1] <- "Q_15"
colnames(subsetQ_15.5_DGT)[2] <- "Q_15_freq"       


Q15_DGT <-bind_rows(subsetQ_15.1_DGT, subsetQ_15.2_DGT, subsetQ_15.3_DGT, subsetQ_15.4_DGT, subsetQ_15.5_DGT)

####Join 5 tests TP
subsetQ_15.1_TP
subsetQ_15.2_TP
subsetQ_15.3_TP
subsetQ_15.4_TP
subsetQ_15.5_TP

#remane clm headings

colnames(subsetQ_15.1_TP)[1] <- "Q_15"
colnames(subsetQ_15.1_TP)[2] <- "Q_15_freq"

colnames(subsetQ_15.2_TP)[1] <- "Q_15"
colnames(subsetQ_15.2_TP)[2] <- "Q_15_freq"

colnames(subsetQ_15.3_TP)[1] <- "Q_15"
colnames(subsetQ_15.3_TP)[2] <- "Q_15_freq"

colnames(subsetQ_15.4_TP)[1] <- "Q_15"
colnames(subsetQ_15.4_TP)[2] <- "Q_15_freq"

colnames(subsetQ_15.5_TP)[1] <- "Q_15"
colnames(subsetQ_15.5_TP)[2] <- "Q_15_freq"       


Q15_TP <-bind_rows(subsetQ_15.1_TP, subsetQ_15.2_TP, subsetQ_15.3_TP, subsetQ_15.4_TP, subsetQ_15.5_TP)


subsetQ15_TP<- Q15_TP %>%
  filter(!is.na(Q_15)) %>%
  group_by(Resp_Group) %>% 
  count(Q_15_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ15_OB_P <- Q15_OB_P %>% 
  filter(!is.na(Q_15)) %>%
  group_by(Resp_Group) %>% 
  count(Q_15_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ15_PBI <- Q15_PBI %>% 
  filter(!is.na(Q_15)) %>%
  group_by(Resp_Group) %>% 
  count(Q_15_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ15_C_P <- Q15_C_P %>% 
  filter(!is.na(Q_15)) %>%
  group_by(Resp_Group) %>% 
  count(Q_15_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ15_DGT <- Q15_DGT %>% 
  filter(!is.na(Q_15)) %>%
  group_by(Resp_Group) %>% 
  count(Q_15_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ15_TP
subsetQ15_OB_P
subsetQ15_PBI
subsetQ15_C_P
subsetQ15_DGT

###join df with test
Q15_TP
Q15_OB_P
Q15_PBI
Q15_C_P
Q15_DGT


Q15_all_test <- bind_rows ( Q15_TP, Q15_OB_P, Q15_PBI, Q15_C_P, Q15_DGT )


str(Q15_all_test) 

# filter out NA? no need as by asking for resposes to "P" has automatically filtered out na#######
subsetQ15_All_agro_grower <- Q15_all_test %>% 
  # filter(!is.na(Q_15)) %>%
  group_by(Resp_Group) %>% 
  count(Q_15) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ15_All_agro_grower

# filter out NA in Q15_freq ######
subsetQ15_All_agro_grower <- Q15_all_test %>% 
  filter(!is.na(Q_15_freq)) %>%
  group_by(Resp_Group) %>% 
  count(Q_15_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ15_All_agro_grower

Q15_all_test

subsetQ15_All_agro_grower <- Q15_all_test %>% 
  filter(!is.na(Q_15_freq)) %>%
  group_by(Resp_Group, Q_15) %>% 
  count(Q_15_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ15_All_agro_grower$Q_15_freq <- factor(subsetQ15_All_agro_grower$Q_15_freq,levels = c("0-5",  "5-10", "10-15", 
                                                                                             "15-20", "20-25",  "25-30", 
                                                                                             "greater than 30"))

subsetQ15_All_agro_grower$Q_15_freq

###{r Q15 data graphs, echo=FALSE}


ggplot(subsetQ15_All_agro_grower, aes (x = Q_15_freq, y = percent))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Resp_Group ~ Q_15)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil P testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) +
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


ggplot(subsetQ15_All_agro_grower, aes (x = Q_15_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Resp_Group ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil P testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) #+
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


ggplot(subsetQ15_All_agro_grower, aes (x = Q_15_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Q_15 ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil P testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) #+
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 



ggplot(subsetQ15_All_agro_grower, aes (x = Q_15_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  #facet_wrap( Q_15 ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "Total of all tests and respondants",
       caption = "Q)  Which tests do you currently use for your soil P testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) 
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


#### **Question 16 Potassium**
# What tests do you use for Potassium testing ...
# 
# * Potassium 1 - Type of test
# * Potassium 1 - Frequency (times per season)
# * Potassium 1 - How many representative samples per paddock
# * Potassium 2 - Type of test
# * Potassium 2 - Frequency (times per season)
# * Potassium 2 - How many representative samples per paddock
# * Potassium 3 - Type of test
# * Potassium 3 - Frequency (times per season)
# * Potassium 3 - How many representative samples per paddock
# * How frequently are your clients paddocks tested i.e. every 3 years, every 5 years ... other?9

data
data$Q_16.1.1
data$Q_16.1.3

### use this this to count how many we have for test 1= Colwell K


subsetQ_16.1 <- select(data, Q_16.1.1, Q_16.1.3, Resp_Group, `Respondent ID`)

head(subsetQ_16.1)


sum(is.na(subsetQ_16.1$Q_16.1.1)) #number of NA in this Question 16.1.1
sum(is.na(subsetQ_16.1$Q_16.1.3)) #number of NA in this Question 16.1.3

#tail(subsetQ_16.2_coded_agro_CK)

subsetQ_16.1_CK <- filter(subsetQ_16.1,
                           Q_16.1.1 == "Colwell K")
subsetQ_16.1_ExC <- filter(subsetQ_16.1,
                            Q_16.1.1 == "Exchangable Cations (Ca, Mg, K, Na)")

###### Type of test 2 #### 
data$Q_16.2.1
data$Q_16.2.3

### use this this to count how many we have for test 2= Exchangable Cations (Ca, Mg, K, Na)
subsetQ_16.2<- select(data, Q_16.2.1, Q_16.2.3, Resp_Group, `Respondent ID`) 

head(subsetQ_16.2)

sum(is.na(subsetQ_16.2$Q_16.2.1)) #number of NA in this Question 16.2.1
sum(is.na(subsetQ_16.2$Q_16.2.3)) #number of NA in this Question 16.2.3

#tail(subsetQ_16.2_coded_agro_ExC)

subsetQ_16.2_CK <- filter(subsetQ_16.2,
                          Q_16.2.1 == "Colwell K")
subsetQ_16.2_ExC <- filter(subsetQ_16.2,
                           Q_16.2.1 == "Exchangable Cations (Ca, Mg, K, Na)")

####Join 2 tests Colwell K
subsetQ_16.1_CK
subsetQ_16.2_CK


#remane clm headings

colnames(subsetQ_16.1_CK)[1] <- "Q_16"
colnames(subsetQ_16.1_CK)[2] <- "Q_16_freq"

colnames(subsetQ_16.2_CK)[1] <- "Q_16"
colnames(subsetQ_16.2_CK)[2] <- "Q_16_freq"


Q16_CK <-bind_rows(subsetQ_16.1_CK, subsetQ_16.2_CK)

Q16_CK

####Join 2 tests Exchangable Cations (Ca, Mg, K, Na)
subsetQ_16.1_ExC
subsetQ_16.2_ExC


#remane clm headings

colnames(subsetQ_16.1_ExC)[1] <- "Q_16"
colnames(subsetQ_16.1_ExC)[2] <- "Q_16_freq"

colnames(subsetQ_16.2_ExC)[1] <- "Q_16"
colnames(subsetQ_16.2_ExC)[2] <- "Q_16_freq"

Q16_ExC <-bind_rows(subsetQ_16.1_ExC, subsetQ_16.2_ExC)

subsetQ16_CK<- Q16_CK %>%
  filter(!is.na(Q_16)) %>%
  group_by(Resp_Group) %>% 
  count(Q_16_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ16_ExC <- Q16_ExC %>% 
  filter(!is.na(Q_16)) %>%
  group_by(Resp_Group) %>% 
  count(Q_16_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ16_CK
subsetQ16_ExC

###join df with test
Q16_CK
Q16_ExC

Q16_all_test <- bind_rows ( Q16_CK, Q16_ExC)

#str(Q16_all_test) 

# filter out NA? no need as by asking for resposes to "K" has automatically filtered out na#######
subsetQ16_All_agro_grower <- Q16_all_test %>% 
  # filter(!is.na(Q_16)) %>%
  group_by(Resp_Group) %>% 
  count(Q_16) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ16_All_agro_grower

# filter out NA in Q16_freq ######
subsetQ16_All_agro_grower <- Q16_all_test %>% 
  filter(!is.na(Q_16_freq)) %>%
  group_by(Resp_Group) %>% 
  count(Q_16_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ16_All_agro_grower

Q16_all_test

subsetQ16_All_agro_grower <- Q16_all_test %>% 
  filter(!is.na(Q_16_freq)) %>%
  group_by(Resp_Group, Q_16) %>% 
  count(Q_16_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ16_All_agro_grower$Q_16_freq <- factor(subsetQ16_All_agro_grower$Q_16_freq,levels = c("0-5",  "5-10", "10-15", 
                                                                                             "15-20", "20-25",  "25-30", 
                                                                                             "greater than 30"))

subsetQ16_All_agro_grower$Q_16_freq

###{r Q16 data graphs, echo=FALSE}


ggplot(subsetQ16_All_agro_grower, aes (x = Q_16_freq, y = percent))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Resp_Group ~ Q_16)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil Potassium testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) +
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


ggplot(subsetQ16_All_agro_grower, aes (x = Q_16_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Resp_Group ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil Potassium testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) #+
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


ggplot(subsetQ16_All_agro_grower, aes (x = Q_16_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Q_16 ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil Potassium testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) #+
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 



ggplot(subsetQ16_All_agro_grower, aes (x = Q_16_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  #facet_wrap( Q_15 ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "Total of all tests and respondants",
       caption = "Q)  Which tests do you currently use for your soil Potassium testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) 
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 