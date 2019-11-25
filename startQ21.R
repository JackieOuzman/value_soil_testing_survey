
data$Q_21.1

#how many ans the questions
subsetQ21 <- select(data, Q_21.1, Q_21.2, Q_21.3, Q_21.4, Q_21.5, Resp_Group) 
subsetQ21

subsetQ21_grower <- select(data, Q_21.1, Q_21.2, Q_21.3, Q_21.4, Q_21.5, Resp_Group) %>% 
  filter(Resp_Group == "Grower" )
subsetQ21_grower

subsetQ21_grower_na <- sum(is.na(subsetQ21_grower$Q_21.1)) #45 growers didnt ans this question

subsetQ21_agro <- select(data, Q_21.1, Q_21.2, Q_21.3, Q_21.4, Q_21.5, Resp_Group) %>% 
  filter(Resp_Group == "Agronomist" )
subsetQ21_agro
subsetQ21_agro_na <-sum(is.na(subsetQ21_agro$Q_21.1)) #8 agro didnt ans this question


subsetQ21_summary <- subsetQ21 %>%
  filter(!is.na(Q_21.1)) %>% 
  group_by( Resp_Group, Q_21.1) %>%
  count(Q_21.1) 
subsetQ21_summary

subsetQ21_agro_na
subsetQ21_grower_na

subsetQ21_summary <- subsetQ21_summary %>% 
  mutate(Resp_numb = case_when(
    Resp_Group == "Agronomist" ~ (71 - subsetQ21_agro_na),
    Resp_Group == "Grower"  ~ ( 99 - subsetQ21_grower_na)
  ),percent = n/Resp_numb
  )
subsetQ21_summary
