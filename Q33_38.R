#### **Question 33-38**
# Note these responses should be from reposondants not undertaking any soil testing 
# (survey script from Q6 directs those not testing to go to page 8 (Q33?).
# However, responses have been entered by those that answered either yes or no to Q6-
#   "Q6: Do you do/recommend soil and/or plant testing?			


# Q33 Please indicate why you don't do SOIL Nitrogen testing
# 
# Reason
# The cost of soil sampling (2)
# The level of accuracy of soil testing lab analysis
# The ability to translate soil test results into a profitable fertiliser decision for my paddock (2)
# Not being able to get soil test results at the right time for decision making (1)
# The time required for soil sampling (1)
# The cost of soil testing lab analysis 
# The difficulty in being able to represent the variability in a paddock (1)
# General comments:
  


# * General comments: 
# Blanket N generally effective in our area   (1)                 
# Little farmer interest (1)
# time taken too much (1) 

#Q33 & 34 The  number of responses are very low and are shown in ()next to the reason, no Agronomists responded except one for 33.8
# Little farmer interest (1)


headers <- read_excel("Nutrient Management Survey_Agrononomist09092019.xlsx", 
                   sheet = "Data", col_names=FALSE, range = "A1:HL1")
data <- read_excel("Nutrient Management Survey_Agrononomist09092019.xlsx", 
                   sheet = "Data", col_names=FALSE, range = "A5:HL174")
names(data) <- headers

data

data$Q_33.1 
data$Q_33.2
data$Q_33.3
data$Q_33.4
data$Q_33.5
data$Q_33.6
data$Q_33.7
data$Q_33.8


subsetQ33 <- select(data, Q_33.1, Q_33.2, Q_33.3, Q_33.4, Q_33.5, Q_33.6, Q_33.7, Q_33.8, Resp_Group) 
#how many people na the questions
subsetQ33

grower_na <- subsetQ33 %>% 
  filter(Resp_Group == "Grower" ) %>% 
  select_if(function(Q_33.1) any(is.na(Q_33.1))) %>% 
  summarise_each(funs(sum(is.na(.)))) -> extra_NA

agronomist_na <- subsetQ33 %>% 
  filter(Resp_Group == "Agronomist" ) %>% 
  select_if(function(Q_33.1) any(is.na(Q_33.1))) %>% 
  summarise_each(funs(sum(is.na(.)))) -> extra_NA

Q33_ans_g <-as.vector(99 - grower_na[1,1], mode = 'numeric') 
Q33_ans_a <- 71 - as.vector(agronomist_na[1,1], mode = 'numeric') 
grower_na
agronomist_na


 ## Q 34
 # Agronomist
 # Grower
 # Please indicate why you don't do SOIL Phosphorous  testing

# The cost of soil sampling (1)
# The level of accuracy of soil testing lab analysis
# The ability to translate soil test results into a profitable fertiliser decision for my paddock (1)
# Not being able to get soil test results at the right time for decision making 
# The time required for soil sampling (1)
# The cost of soil testing lab analysis 
# The difficulty in being able to represent the variability in a paddock 
# General comments:
# The cost of soil sampling 

#  Q34 The  number of responses are  low, no Agronomists responded except one for 33.8
#  # Little farmer interest (1)
 
 data
 
 data$Q_34.1 
 data$Q_34.2
 data$Q_34.3
 data$Q_34.4
 data$Q_34.5
 data$Q_34.6
 data$Q_34.7
 data$Q_34.8
 
 
 subsetQ34 <- select(data, Q_34.1, Q_34.2, Q_34.3, Q_34.4, Q_34.5, Q_34.6, Q_34.7, Q_34.8, Resp_Group) 
 #how many people na the questions
 subsetQ34
 
 grower_na <- subsetQ34 %>% 
   filter(Resp_Group == "Grower" ) %>% 
   select_if(function(Q_34.1) any(is.na(Q_34.1))) %>% 
   summarise_each(funs(sum(is.na(.)))) -> extra_NA
 
 agronomist_na <- subsetQ34 %>% 
   filter(Resp_Group == "Agronomist" ) %>% 
   select_if(function(Q_34.1) any(is.na(Q_34.1))) %>% 
   summarise_each(funs(sum(is.na(.)))) -> extra_NA
 
 Q34_ans_g <-as.vector(99 - grower_na[1,1], mode = 'numeric') 
 Q34_ans_a <- 71 - as.vector(agronomist_na[1,1], mode = 'numeric') 
 grower_na
 agronomist_na
 
 
 # Q34_why_not_moreP_cost <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_34.1))
 # Q34_why_not_moreP_lab_accuracy <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_34.2))
 # Q34_why_not_moreP_test_profit_decision <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_34.3))
 # Q34_why_not_moreP_right_time <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_34.4))
 # Q34_why_not_moreP_time_required <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_34.5))
 # Q34_why_not_moreP_cost_analysis <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_34.6))
 # Q34_why_not_moreP_paddock_variability <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_34.7))
 #
 # 
 # 
 # #join the reasons together
 # 
 # reason_soil_P<- rbind(
 #   Q34_why_not_moreP_cost,
 #   Q34_why_not_moreP_lab_accuracy,
 #   Q34_why_not_moreP_test_profit_decision,
 #   Q34_why_not_moreP_right_time,
 #   Q34_why_not_moreP_time_required,
 #   Q34_why_not_moreP_cost_analysis,
 #   Q34_why_not_moreP_paddock_variability 
 # )
 # 
 # reason_soil_P
 # 
 # #text is too long
 # reason_soil_P 
 
 
 # The difficulty in being able to represent the variability in a paddock 
 
 
 # reason_soil_P <- mutate(
 #   reason_soil_P,
 #   names_display = case_when(
 #     reason == "The cost of soil sampling" ~ "cost",
 #     reason == "The level of accuracy of soil testing lab analysis" ~ "lab_accuracy",
 #     reason == "The ability to translate soil test results into a profitable fertiliser decision for my paddock" ~ "test_profit_decision",
 #     reason == "Not being able to get soil test results at the right time for decision making " ~ "right_time",
 #     reason == "The time required for soil sampling" ~ "time_required",
 #     reason == "The cost of soil testing lab analysis" ~ "cost_analysis",
 #     reason == "The difficulty in being able to represent the variability in a paddock" ~ "paddock_variability"
 #   )
 # )
 # reason_soil_P
 
 
 #### **Question 35** 
 # Agronomist
 # Grower
 # Please indicate if you agree/disagree with the following statements in relation to SOIL testing
 # * My farm business would be more profitable if I did more soil testing than I do now
 # * Uncertainty about how the season will turn out makes it hard to get value from soil testing results

 # overal responses including NA
 # data$Q_35.1
 # Q35.1_Farm_more_profit <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_35.1))
 # Q35.1_Farm_more_profit
 # Q35.2_Uncertain_return <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_35.2))
 # Q35.2_Uncertain_return
 # 
 # Q35_reason<- rbind(Q35.1_Farm_more_profit,  Q35.2_Uncertain_return)
 # Q35_reason
 
 ####{r q35 data prep, include=FALSE}
 
 data$Q_35.1
 data$Q_35.2
 #group the Q35 data together
 subsetQ35 <- select(data, Q_35.1, Q_35.2, Resp_Group) 
 #how many people na the questions
 subsetQ35
 
 grower_na <- subsetQ35 %>% 
   filter(Resp_Group == "Grower" ) %>% 
   select_if(function(Q_35.1) any(is.na(Q_35.1))) %>% 
   summarise_each(funs(sum(is.na(.)))) -> extra_NA
 
 agronomist_na <- subsetQ35 %>% 
   filter(Resp_Group == "Agronomist" ) %>% 
   select_if(function(Q_35.1) any(is.na(Q_35.1))) %>% 
   summarise_each(funs(sum(is.na(.)))) -> extra_NA
 
 Q35_ans_g <-as.vector(99 - grower_na[1,1], mode = 'numeric') 
 Q35_ans_a <- 71 - as.vector(agronomist_na[1,1], mode = 'numeric') 
 grower_na
 
 ##Q_35.1
 
 subsetQ35.1_summary <- subsetQ35 %>%
   filter(!is.na(Q_35.1)) %>% 
   group_by( Resp_Group, Q_35.1) %>%
   count(Q_35.1) 
 
 subsetQ35.1_summary <- subsetQ35.1_summary %>% 
   mutate(Resp_numb_for_question = case_when(
     Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,1], mode = 'numeric')),
     Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,1], mode = 'numeric')) ),
     percent_of_numb_resp = n/Resp_numb_for_question,
     question = "more profitable",
     scale = Q_35.1
   )
 
 subsetQ35.1_summary
 
 ##Q_35.2
 
 subsetQ35.2_summary <- subsetQ35 %>%
   filter(!is.na(Q_35.2)) %>% 
   group_by( Resp_Group, Q_35.2) %>%
   count(Q_35.2) 
 
 subsetQ35.2_summary <- subsetQ35.2_summary %>% 
   mutate(Resp_numb_for_question = case_when(
     Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,2], mode = 'numeric')),
     Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,2], mode = 'numeric')) ),
     percent_of_numb_resp = n/Resp_numb_for_question,
     question = "Uncertainty",
     scale = Q_35.2
   )
 
 subsetQ35.2_summary
 
 subsetQ35_summary <- rbind(subsetQ35.1_summary,
                            subsetQ35.2_summary)
 
 subsetQ35_summary <- select(subsetQ35_summary,
                             Resp_Group,
                             n,
                             Resp_numb_for_question,
                             percent_of_numb_resp,
                             question,scale)
 subsetQ35_summary
 
 
 ##```
 
 ##```{r Q35 graph, echo=FALSE}
 # df needs ording for display
 subsetQ35_summary$scale <-
   factor(
     subsetQ35_summary$scale ,
     levels = c(
       "Strongly agree",
       "Agree",
       "Neutral",
       "Disagree")
 )

 unique(subsetQ35_summary$scale)
 
 ###NOTE incorrect order on x scale?
 
 ggplot(subsetQ35_summary, aes (x =  reorder(scale, -percent_of_numb_resp), y = percent_of_numb_resp, 
                                fill = Resp_Group))+
   geom_col()+
   scale_fill_manual(values=c("grey70", "grey40"))+
   facet_wrap(question~ Resp_Group )+
   theme_classic()+
   labs(x= "",
        y = "",
        title = "",
        subtitle = "",
        caption = "Q)  Please indicate if you agree/disagree with, more profitable & Uncertainty in relation to SOIL testing")+
   theme(axis.text.x=element_text(angle=90,hjust=1),
         plot.caption = element_text(size = 8), legend.position = "none") +
   scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 
 
 
 
 
 # #### **Question 36** 
 # Agronomist
 # Grower
 # Please indicate why you don't do any PLANT testing
 # 
 # * The cost of plant sampling
 # * The time required for plant sampling
 # * The cost of plant analysis
 # * The difficulty in being able to represent the variability in a paddock55
 # * The level of accuracy of plant analysis
 # * The ability to translate plant test results into a profitable fertiliser decision for my paddock
 # * Not being able to get plant test results at the right time for decision making
 # * Comment
 # reason == "The cost of soil sampling" ~ "cost",
 # reason == "The time required for soil sampling" ~ "time",
 # reason == "The cost of soil testing lab analysis" ~ "cost of lab analysis",
 # reason == "The difficulty in being able to represent the variability in a paddock" ~ "variability",
 # reason == "The level of accuracy of soil testing lab analysis" ~ "accuracy",
 # reason == "The ability to translate soil test results into a profitable fertiliser decision for my paddock" ~ "translate profitable decision",
 # reason == "Not being able to get soil test results at the right time for decision making" ~ "get results at right time"
 # )
 data$Q_36.1
  Q36_why_not_morePlant_cost <- summary_stats_all_resp(data, quo(Resp_Group), quo(Q_36.1))
 
  data$Q_36.1
  #group the Q35 data together
  subsetQ36 <- select(data, Q_36.1, Q_36.2, Q_36.3, Q_36.4, Q_36.5, Q_36.6, Q_36.7, Q_36.8, Resp_Group) 
  #how many people na the questions
  subsetQ36
  
  grower_na <- subsetQ36 %>% 
    filter(Resp_Group == "Grower" ) %>% 
    select_if(function(Q_36.1) any(is.na(Q_36.1))) %>% 
    summarise_each(funs(sum(is.na(.)))) -> extra_NA
  
  agronomist_na <- subsetQ36 %>% 
    filter(Resp_Group == "Agronomist" ) %>% 
    select_if(function(Q_36.1) any(is.na(Q_36.1))) %>% 
    summarise_each(funs(sum(is.na(.)))) -> extra_NA
  
  Q36_ans_g <-as.vector(99 - grower_na[1,1], mode = 'numeric') 
  Q36_ans_a <- 71 - as.vector(agronomist_na[1,1], mode = 'numeric') 
  grower_na
  
  ##Q_36.1
  
  subsetQ36.1_summary <- subsetQ36 %>%
    filter(!is.na(Q_36.1)) %>% 
    group_by( Resp_Group, Q_36.1) %>%
    count(Q_36.1) 
  
  subsetQ36.1_summary <- subsetQ36.1_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,1], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,1], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "cost",
      scale = Q_36.1
    )
  
  subsetQ36.1_summary
  
  ##Q_36.2
  
  subsetQ36.2_summary <- subsetQ36 %>%
    filter(!is.na(Q_36.2)) %>% 
    group_by( Resp_Group, Q_36.2) %>%
    count(Q_36.2) 
  
  subsetQ36.2_summary <- subsetQ36.2_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,2], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,2], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "time",
      scale = Q_36.2
    )
  
  subsetQ36.2_summary
  
  ##Q_36.3
  
  subsetQ36.3_summary <- subsetQ36 %>%
    filter(!is.na(Q_36.3)) %>% 
    group_by( Resp_Group, Q_36.3) %>%
    count(Q_36.3) 
  
  subsetQ36.3_summary <- subsetQ36.3_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,2], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,2], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "cost of lab analysis",
      scale = Q_36.3
    )
  subsetQ36.3_summary
  
  ##Q_36.4
  
  subsetQ36.4_summary <- subsetQ36 %>%
    filter(!is.na(Q_36.4)) %>% 
    group_by( Resp_Group, Q_36.4) %>%
    count(Q_36.4) 
  
  subsetQ36.4_summary <- subsetQ36.4_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,2], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,2], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "variability",
      scale = Q_36.4
    )
  subsetQ36.4_summary
  
  ##Q_36.5
  
  subsetQ36.5_summary <- subsetQ36 %>%
    filter(!is.na(Q_36.5)) %>% 
    group_by( Resp_Group, Q_36.5) %>%
    count(Q_36.5) 
  
  subsetQ36.5_summary <- subsetQ36.5_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,2], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,2], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "accuracy",
      scale = Q_36.5
    )
  subsetQ36.5_summary
  
  ##Q_36.6
  
  subsetQ36.6_summary <- subsetQ36 %>%
    filter(!is.na(Q_36.6)) %>% 
    group_by( Resp_Group, Q_36.6) %>%
    count(Q_36.6) 
  
  subsetQ36.6_summary <- subsetQ36.6_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,2], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,2], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "translate profitable decision",
      scale = Q_36.6
    )
  subsetQ36.6_summary
  
  ##Q_36.7
  
  subsetQ36.7_summary <- subsetQ36 %>%
    filter(!is.na(Q_36.7)) %>% 
    group_by( Resp_Group, Q_36.7) %>%
    count(Q_36.7) 
  
  subsetQ36.7_summary <- subsetQ36.7_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,2], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,2], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "get results at right time",
      scale = Q_36.7
    )
  subsetQ36.7_summary
  
  
  subsetQ36_summary <- rbind(subsetQ36.1_summary,
                             subsetQ36.2_summary,
                             subsetQ36.3_summary,
                             subsetQ36.4_summary,
                             subsetQ36.5_summary,
                             subsetQ36.6_summary,
                             subsetQ36.7_summary)
                            
  
  subsetQ36_summary <- select(subsetQ36_summary,
                              Resp_Group,
                              n,
                              Resp_numb_for_question,
                              percent_of_numb_resp,
                              question,scale)
  subsetQ36_summary
  
  
  ##```
  
  ##```{r Q36 graph, echo=FALSE}
  # df needs ording for display
  subsetQ36_summary$scale <-
    factor(
      subsetQ36_summary$scale ,
      levels = c(
        "Strongly agree",
        "Agree",
        "Neutral",
        "Disagree")
    )
  
  unique(subsetQ36_summary$scale)
  
  ###NOTE incorrect order on x scale?
  ggplot(subsetQ36_summary, aes (x =  reorder(scale, -percent_of_numb_resp), y = percent_of_numb_resp, 
                                 fill = Resp_Group))+
    geom_col()+
    scale_fill_manual(values=c("grey70", "grey40"))+
    facet_wrap(question~ Resp_Group )+
    theme_classic()+
    labs(x= "",
         y = "",
         title = "",
         subtitle = "",
         caption = "Q) Please indicate why you don't do any PLANT testing?")+
    theme(axis.text.x=element_text(angle=90,hjust=1),
          plot.caption = element_text(size = 8), legend.position = "none") +
    scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 
  
  
 
 # #### **Question 37**
 # Agronomist
 # Please indicate if you agree/disagree with the following statements in relation to PLANT testing
 # 
 # * My clients businesses would be more profitable if they did more plant testing than they do now
 # * Uncertainty about how the season will turn out makes it hard to get value from plant testing results
 # * Feel free to comment on this response
 # 
 # Grower
 # Please indicate if you agree/disagree with the following statements in relation to  PLANT testing
 # * My farm business would be more profitable if I did more plant testing than I do now
 # * Uncertainty about how the season will turn out makes it hard to get value from plant testing results
 # 
 # ####{r q37 data prep, include=FALSE}
  
  data$Q_37.1
  data$Q_37.2
  #group the Q35 data together
  subsetQ37 <- select(data, Q_37.1, Q_37.2, Resp_Group) 
  #how many people na the questions
  subsetQ37
  
  grower_na <- subsetQ37 %>% 
    filter(Resp_Group == "Grower" ) %>% 
    select_if(function(Q_37.1) any(is.na(Q_37.1))) %>% 
    summarise_each(funs(sum(is.na(.)))) -> extra_NA
  
  agronomist_na <- subsetQ37 %>% 
    filter(Resp_Group == "Agronomist" ) %>% 
    select_if(function(Q_37.1) any(is.na(Q_37.1))) %>% 
    summarise_each(funs(sum(is.na(.)))) -> extra_NA
  
  Q37_ans_g <-as.vector(99 - grower_na[1,1], mode = 'numeric') 
  Q37_ans_a <- 71 - as.vector(agronomist_na[1,1], mode = 'numeric') 
  grower_na
  agronomist_na
  
  ##Q_37.1
  
  subsetQ37.1_summary <- subsetQ37 %>%
    filter(!is.na(Q_37.1)) %>% 
    group_by( Resp_Group, Q_37.1) %>%
    count(Q_37.1) 
  
  subsetQ37.1_summary <- subsetQ37.1_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,1], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,1], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "more profitable",
      scale = Q_37.1
    )
  
  subsetQ37.1_summary
  
  ##Q_37.2
  
  subsetQ37.2_summary <- subsetQ37 %>%
    filter(!is.na(Q_37.2)) %>% 
    group_by( Resp_Group, Q_37.2) %>%
    count(Q_37.2) 
  
  subsetQ37.2_summary <- subsetQ37.2_summary %>% 
    mutate(Resp_numb_for_question = case_when(
      Resp_Group == "Agronomist" ~ (71 - as.vector(agronomist_na[1,2], mode = 'numeric')),
      Resp_Group == "Grower"  ~  (99- as.vector(grower_na[1,2], mode = 'numeric')) ),
      percent_of_numb_resp = n/Resp_numb_for_question,
      question = "Uncertainty",
      scale = Q_37.2
    )
  
  subsetQ37.2_summary
  
  subsetQ37_summary <- rbind(subsetQ37.1_summary,
                             subsetQ37.2_summary)
  
  subsetQ37_summary <- select(subsetQ37_summary,
                              Resp_Group,
                              n,
                              Resp_numb_for_question,
                              percent_of_numb_resp,
                              question,scale)
  subsetQ37_summary
  
  
  ##```
  
  ##```{r Q37 graph, echo=FALSE}
  # df needs ording for display
  subsetQ37_summary$scale <-
    factor(
      subsetQ37_summary$scale ,
      levels = c(
        "Strongly agree",
        "Agree",
        "Neutral",
        "Disagree")
    )
  
  unique(subsetQ37_summary$scale)
  
  ###NOTE incorrect order on x scale?
  
  ggplot(subsetQ37_summary, aes (x =  reorder(scale, -percent_of_numb_resp), y = percent_of_numb_resp, 
                                 fill = Resp_Group))+
    geom_col()+
    scale_fill_manual(values=c("grey70", "grey40"))+
    facet_wrap(question~ Resp_Group )+
    theme_classic()+
    labs(x= "",
         y = "",
         title = "",
         subtitle = "",
         caption = "Q)  Please indicate if you agree/disagree with, more profitable & Uncertainty in relation to PLANT testing")+
    theme(axis.text.x=element_text(angle=90,hjust=1),
          plot.caption = element_text(size = 8), legend.position = "none") +
    scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 
  
  
 # 
 # 
 # #### **Question 38** 
 # What are the barriers to you undertaking...?
 #   
 #   * Soil testing? - Sampling cost
 # * Soil testing? - Analysis cost
 # * Soil testing? - Sampling time
 # * Soil testing? - Analysis time
 # * Soil testing? - Understanding / interpreting results
 # * Soil testing? - Sampling method
 # * Plant testing? - Sampling cost
 # * Plant testing? - Analysis cost
 # * Plant testing? - Sampling time
 # * Plant testing? - Analysis time
 # * Plant testing? - Understanding / interpreting results
 # * Plant testing? - Sampling method
 # * Other (please specify)
 # 
 