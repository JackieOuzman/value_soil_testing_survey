head(data$Q_12.1)
test <- unique(data$Q_12.1)
head(test)


headers2 <- read_excel("Q12_ Assigning_Category ID_22.10.19.xlsx", 
                       sheet = "Q12.1", col_names=FALSE, range = "B4:E4")

#head(headers2)

data_q12 <- read_excel("Q12_ Assigning_Category ID_22.10.19.xlsx", 
                       sheet = "Q12.1", col_names=FALSE, range = "B5:E174")
names(data_q12) <- headers2



#head(data_q12)
data_q12 <- mutate(data_q12,
                   names_display =case_when(
                     Q_12.1_ID == "1" ~  "shallow",
                     Q_12.1_ID  == "2" ~  "Cowell P",
                     Q_12.1_ID  == "3" ~  "deep P",
                     Q_12.1_ID  == "4" ~  "All depths",
                     Q_12.1_ID  == "5" ~  "Yield maps",
                     Q_12.1_ID  == "6" ~  "Programs",
                     Q_12.1_ID  == "7" ~  "Combo",
                     Q_12.1_ID  == "Combo (1,5)" ~  "Combo",
                     Q_12.1_ID  == "8" ~  "Don't test",
                     Q_12.1_ID  == "9" ~  "Unspecified/random",
                     Q_12.1_ID  == "0" ~  "NA"))



data_q12summary <- filter (data_q12, Resp_Group == "Agronomist" & names_display !=  "NA")%>%
  count(names_display) %>% 
  mutate(percent = 
           (freq = n / sum(n))) %>% 
  arrange(desc(percent))



#data_q12summary 
data_q12summary<- mutate(data_q12summary, names_display = fct_relevel(names_display, 
                                                                      c("Programs",
                                                                        "shallow", 
                                                                        "Unspecified/random",
                                                                        "All depths",
                                                                        "Combo",
                                                                        "Yield maps",
                                                                        "Cowell P",
                                                                        "Don't test")))

ggplot(data_q12summary, aes(names_display , percent ))+
  geom_col()+
  #facet_wrap(. ~ Resp_Group)+
  #geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
  theme_classic()+
  labs(x= "",
       y = "Percent",
       fill = "",
       title = "Explain your approach to soil testing P?",
       subtitle = "Agronomist only",
       caption = "Q) Explain your approach to soil testing P?")+
  theme(axis.text.x=element_text(angle=45,hjust=1),
        plot.caption = element_text(size = 8)) + 
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L), limits=c(0, 0.5))


data_q12summary <- filter (data_q12, Resp_Group == "Grower" & names_display !=  "NA")%>%
  count(names_display) %>% 
  mutate(percent = 
           (freq = n / sum(n))) %>% 
  arrange(desc(percent))

data_q12summary 
data_q12summary<- mutate(data_q12summary, names_display = fct_relevel(names_display, 
                                                                      c("Programs",
                                                                        "shallow", 
                                                                        "Unspecified/random",
                                                                        "All depths",
                                                                        "Combo",
                                                                        "Yield maps",
                                                                        "Cowell P",
                                                                        "Don't test")))

ggplot(data_q12summary, aes(names_display , percent ))+
  geom_col()+
  #facet_wrap(. ~ Resp_Group)+
  #geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
  theme_classic()+
  labs(x= "",
       y = "Percent",
       fill = "",
       title = "Explain your approach to soil testing P?",
       subtitle = "Grower only",
       caption = "Q) Explain your approach to soil testing P?")+
  theme(axis.text.x=element_text(angle=45,hjust=1),
        plot.caption = element_text(size = 8)) + 
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L), limits=c(0, 0.5))




headers2 <- read_excel("Q12_ Assigning_Category ID_22.10.19.xlsx", 
                       sheet = "Q12.2", col_names=FALSE, range = "B4:E4")

head(headers2)

data_q12 <- read_excel("Q12_ Assigning_Category ID_22.10.19.xlsx", 
                       sheet = "Q12.2", col_names=FALSE, range = "B5:E174")
names(data_q12.2) <- headers2



head(data_q12.2)
data_q12 <- mutate(data_q12.2,
                   names_display =case_when(
                     Q_12.2_ID == "1" ~  "shallow",
                     Q_12.2_ID  == "2" ~  "Cowell P",
                     Q_12.2_ID  == "3" ~  "deep P",
                     Q_12.2_ID  == "4" ~  "All depths",
                     Q_12.2_ID  == "5" ~  "Yield maps",
                     Q_12.2_ID  == "6" ~  "Programs",
                     Q_12.2_ID  == "7" ~  "Combo",
                     Q_12.2_ID  == "Combo (1,5)" ~  "Combo",
                     Q_12.2_ID  == "8" ~  "Don't test",
                     Q_12.2_ID  == "9" ~  "Unspecified/random",
                     Q_12.2_ID  == "0" ~  "NA"))



data_q12.2summary <- filter (data_q12.2, Resp_Group == "Agronomist" & names_display !=  "NA")%>%
  count(names_display) %>% 
  mutate(percent = 
           (freq = n / sum(n))) %>% 
  arrange(desc(percent))



data_q12.2summary 
data_q12.2summary<- mutate(data_q12.2summary, names_display = fct_relevel(names_display, 
                                                                      c("Programs",
                                                                        "shallow", 
                                                                        "Unspecified/random",
                                                                        "All depths",
                                                                        "Combo",
                                                                        "Yield maps",
                                                                        "Cowell P",
                                                                        "Don't test" )))

ggplot(data_q12.2summary, aes(names_display , percent ))+
  geom_col()+
  #facet_wrap(. ~ Resp_Group)+
  #geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
  theme_classic()+
  labs(x= "",
       y = "Percent",
       fill = "",
       title = "Explain your approach to soil testing P?",
       subtitle = "Agronomist only",
       caption = "Q) Explain your approach to soil testing P?")+
  theme(axis.text.x=element_text(angle=45,hjust=1),
        plot.caption = element_text(size = 8)) + 
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L), limits=c(0, 0.5))


data_q12.2summary <- filter (data_q12, Resp_Group == "Grower" & names_display !=  "NA")%>%
  count(names_display) %>% 
  mutate(percent = 
           (freq = n / sum(n))) %>% 
  arrange(desc(percent))

data_q12.2summary 
data_q12.2summary<- mutate(data_q12summary, names_display = fct_relevel(names_display, 
                                                                      c("Programs",
                                                                        "shallow", 
                                                                        "Unspecified/random",
                                                                        "All depths",
                                                                        "Combo",
                                                                        "Yield maps",
                                                                        "Cowell P",
                                                                        "Don't test")))

ggplot(data_q12.2summary, aes(names_display , percent ))+
  geom_col()+
  #facet_wrap(. ~ Resp_Group)+
  #geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
  theme_classic()+
  labs(x= "",
       y = "Percent",
       fill = "",
       title = "Explain your approach to soil testing P?",
       subtitle = "Grower only",
       caption = "Q) Explain your approach to soil testing P?")+
  theme(axis.text.x=element_text(angle=45,hjust=1),
        plot.caption = element_text(size = 8)) + 
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L), limits=c(0, 0.5))



##########################################################################################
############### Q12_3############################################################

headers12_3 <- read_excel("Q12_ Assigning_Category ID_22.10.19.xlsx", 
                       sheet = "Q12.3", col_names=FALSE, range = "B4:E4")

head(headers12_3)

data_q12_3 <- read_excel("Q12_ Assigning_Category ID_22.10.19.xlsx", 
                       sheet = "Q12.3", col_names=FALSE, range = "B5:E174")
names(data_q12_3) <- headers12_3



head(data_q12_3)
data_q12_3 <- mutate(data_q12_3,
                   names_display =case_when(
                     Q_12.3_ID == "1" ~  "shallow",
                     Q_12.3_ID  == "2" ~  "NA",
                     Q_12.3_ID  == "3" ~  "NA",
                     Q_12.3_ID  == "4" ~  "All depths",
                     Q_12.3_ID  == "5" ~  "Yield maps",
                     Q_12.3_ID  == "6" ~  "Programs",
                     Q_12.3_ID  == "7" ~  "Combo",
                     Q_12.3_ID  == "Combo (1,5)" ~  "Combo",
                     Q_12.3_ID  == "8" ~  "Don't test",
                     Q_12.3_ID  == "9" ~  "Unspecified/random",
                     Q_12.3_ID  == "0" ~  "NA",
                     Q_12.3_ID  == "10" ~  "Plant test",
                     Q_12.3_ID  == "11" ~  "Soil & Plant test"))



data_q12_3summary <- filter (data_q12_3, Resp_Group == "Agronomist" & names_display !=  "NA")%>%
  count(names_display) %>% 
  mutate(percent = 
           (freq = n / sum(n))) %>% 
  arrange(desc(percent))



data_q12_3summary 
data_q12_3summary<- mutate(data_q12_3summary, names_display = fct_relevel(names_display, 
                                                                          c("Programs",
                                                                            "shallow", 
                                                                            "Unspecified/random",
                                                                            "All depths",
                                                                            "Combo",
                                                                            #"Yield maps",
                                                                          
                                                                            "Don't test",
                                                                            "Plant test",
                                                                            "Soil & Plant test")))

ggplot(data_q12_3summary, aes(names_display , percent ))+
  geom_col()+
  #facet_wrap(. ~ Resp_Group)+
  #geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
  theme_classic()+
  labs(x= "",
       y = "Percent",
       fill = "",
       title = "Explain your approach to soil testing P?",
       subtitle = "Agronomist only",
       caption = "Q) Explain your approach to soil testing P?")+
  theme(axis.text.x=element_text(angle=45,hjust=1),
        plot.caption = element_text(size = 8)) + 
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L), limits=c(0, 0.5))


data_q12.2summary <- filter (data_q12, Resp_Group == "Grower" & names_display !=  "NA")%>%
  count(names_display) %>% 
  mutate(percent = 
           (freq = n / sum(n))) %>% 
  arrange(desc(percent))

data_q12.2summary 
data_q12.2summary<- mutate(data_q12summary, names_display = fct_relevel(names_display, 
                                                                        c("Programs",
                                                                          "shallow", 
                                                                          "Unspecified/random",
                                                                          "All depths",
                                                                          "Combo",
                                                                          "Yield maps",
                                                                          "Cowell P",
                                                                          "Don't test")))

ggplot(data_q12.2summary, aes(names_display , percent ))+
  geom_col()+
  #facet_wrap(. ~ Resp_Group)+
  #geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
  theme_classic()+
  labs(x= "",
       y = "Percent",
       fill = "",
       title = "Explain your approach to soil testing P?",
       subtitle = "Grower only",
       caption = "Q) Explain your approach to soil testing P?")+
  theme(axis.text.x=element_text(angle=45,hjust=1),
        plot.caption = element_text(size = 8)) + 
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L), limits=c(0, 0.5))
