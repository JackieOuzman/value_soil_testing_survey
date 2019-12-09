


headers <- read_excel("Using soil and plant testing data to better inform nutrient management.xlsx", 
                      range = "A1:DO1", col_names=FALSE, sheet = "Data")
headers_names <- sapply(headers,paste,collapse="_")
data <- read_excel("Using soil and plant testing data to better inform nutrient management.xlsx", 
                   sheet = "Data", skip = 3, col_names=FALSE)
names(data) <- headers_names


#These names are very long perhaps we can make them shorter?

headers <- read_excel("Using soil and plant testing data to better inform nutrient management.xlsx", 
                   sheet = "Data", col_names=FALSE, range = "A1:DO1")
data <- read_excel("Using soil and plant testing data to better inform nutrient management.xlsx", 
                   sheet = "Data", col_names=FALSE, range = "A4:DO74")

names(data) <- headers
names(data)

test <- group_by(data, Q1_region) %>% 
  summarise(Ave_Cropped_Area = mean(`Q2_Cropped Area`))
head(test)
with(test, table(Q1_region, Ave_Cropped_Area))


install.packages("gridExtra")
library(grid)

tt1 <- gridExtra::ttheme_default()
tt3 <- gridExtra::ttheme_minimal(
  core=list(bg_params = list(fill = blues9[1:4], col=NA),
            fg_params=list(fontface=3)),
  colhead=list(fg_params=list(col="navyblue", fontface=4L)),
  rowhead=list(fg_params=list(col="orange", fontface=3L)))
gridExtra::grid.table(test, theme=tt1)

install.packages("knitr")
install.packages("xtable")
install.packages("stargazer")
install.packages("tableHTML")
library(tableHTML)

library(knitr)
library("xtable")
library("stargazer")

tableHTML(test)

#https://stackoverflow.com/questions/48943256/creating-table-outputs-for-pdf-using-r-markdown

datatable(test, rownames = FALSE)



names(data$Q6_recommend_testing)
with(data, table(Q6_recommend_testing, names_display))

#no grouping of data
Q6 <- data %>% 
  count(Q6_recommend_testing)
#group data

as_percent <- data %>%
  group_by(names_display, Q6_recommend_testing) %>%
  summarise(n = n()) %>%
  mutate(freq = n / sum(n))

table(data$Q12_percent_testing_2018)
table(data$Q12_percent_N_testing_2018)
table(data$Q12_percent_testing_P_2018)
table(data$Q12_percent_testing_N_60cm_2018)



Q12_percent_testing_2018 <- data %>%
  group_by( Q12_percent_testing_2018 ) %>%
  summarise(n = n()) %>%
  mutate(percent = (freq = n / sum(n)),
         type = "percent_testing_2018")
Q12_percent_testing_2018 <- Q12_percent_testing_2018 %>%
  select(n,
        percent,
        type,
        bins = Q12_percent_testing_2018)

Q12_percent_N_testing_2018 <- data %>%
  group_by(  Q12_percent_N_testing_2018 ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "percent_N_testing_2018")
Q12_percent_N_testing_2018 <- Q12_percent_N_testing_2018 %>%
  select(n,
         percent,
         type,
         bins = Q12_percent_N_testing_2018)

Q12_percent_testing_P_2018 <- data %>%
  group_by(  Q12_percent_testing_P_2018 ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "percent_P_testing_2018")
Q12_percent_testing_P_2018 <- Q12_percent_testing_P_2018 %>%
  select(n,
         percent,
         type,
         bins = Q12_percent_testing_P_2018)

Q12_percent_testing <- rbind(Q12_percent_testing_2018,
                             Q12_percent_N_testing_2018,
                             Q12_percent_testing_P_2018)
      
head(Q12_percent_testing)
ggplot(Q12_percent_testing, aes(bins, percent))+
  geom_col()+
  #geom_text(aes(label = percent(signif(percent),1), vjust = "inward", hjust = "inward"))+
  theme_classic()+
  facet_wrap(.~type)+
  labs(x= "bins",
       y = "",
       title = "Percent testing",
       subtitle = "Agronomist",
       caption = "Q) Do you recommend soil and or plant testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) + 
  scale_y_continuous(labels = scales::percent)




table(data$Q16_why_not_moreN_cost)
table(data$Q16_why_not_moreN_time)
table(data$Q16_why_not_moreN_lab_cost)
table(data$Q16_why_not_moreN_lab_accuracy)
table(data$Q16_why_not_moreN_test_profit_decis)
table(data$Q16_why_not_moreN_too_slow)
table(data$Q16_why_not_moreN_text) #can't do this for this ans need to group it first




Q16_why_not_moreN_time <- data %>%
  group_by(  Q16_why_not_moreN_time ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "Q16_why_not_moreN_time") %>% 
  filter( Q16_why_not_moreN_time != "NA") %>% 
  select(percent, type)

Q16_why_not_moreN_lab_cost <- data %>%
  group_by(  Q16_why_not_moreN_lab_cost ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "Q16_why_not_moreN_lab_cost") %>% 
  filter( Q16_why_not_moreN_lab_cost != "NA") %>% 
  select(percent, type)

Q16_why_not_moreN_lab_accuracy <- data %>%
  group_by(  Q16_why_not_moreN_lab_accuracy ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "Q16_why_not_moreN_lab_accuracy")%>% 
  filter( Q16_why_not_moreN_lab_accuracy != "NA") %>% 
  select(percent, type)

Q16_why_not_moreN_test_profit_decis <- data %>%
  group_by(  Q16_why_not_moreN_test_profit_decis ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "Q16_why_not_moreN_test_profit_decis")%>% 
  filter( Q16_why_not_moreN_test_profit_decis != "NA") %>% 
  select(percent, type)

Q16_why_not_moreN_too_slow <- data %>%
  group_by(  Q16_why_not_moreN_too_slow ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "Q16_why_not_moreN_too_slow")%>% 
  filter( Q16_why_not_moreN_too_slow != "NA") %>% 
  select(percent, type)

Q16_why_not_moreN_variability <- data %>%
  group_by(  Q16_why_not_moreN_variability ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "Q16_why_not_moreN_variability")%>% 
  filter( Q16_why_not_moreN_variability != "NA") %>% 
  select(percent, type)

Q16_why_not_moreN_cost <- data %>%
  group_by(  Q16_why_not_moreN_cost ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "Q16_why_not_moreN_cost") %>% 
  filter( Q16_why_not_moreN_cost != "NA") %>% 
  select(percent, type)

Q16_why_not_moreN <- rbind(Q16_why_not_moreN_cost,
                           Q16_why_not_moreN_time,
                           Q16_why_not_moreN_lab_cost,
                           Q16_why_not_moreN_variability,
                           Q16_why_not_moreN_lab_accuracy,
                           Q16_why_not_moreN_test_profit_decis,
                           Q16_why_not_moreN_too_slow)
labels_q16 <- c(Q16_why_not_moreN_cost = "cost", 
                Q16_why_not_moreN_time = "time",
                Q16_why_not_moreN_lab_cost = "cost of lab analysis",
                Q16_why_not_moreN_variability = "vara",
                Q16_why_not_moreN_lab_accuracy = "accuracy of lab analysis",
                Q16_why_not_moreN_test_profit_decis = "translate to profitable decision",
                Q16_why_not_moreN_too_slow = "get results at right time")
head(Q16_why_not_moreN)



Q16_why_not_moreN <- mutate(Q16_why_not_moreN,
                                        percent1 = round(percent*100,2),
                                        label_name = case_when(
                                          type == "Q16_why_not_moreN_cost" ~ "cost",
                                          type == "Q16_why_not_moreN_time" ~ "time",
                                          type == "Q16_why_not_moreN_lab_cost" ~ "cost of lab analysis",
                                          type == "Q16_why_not_moreN_variability" ~ "variability",
                                          type == "Q16_why_not_moreN_lab_accuracy" ~ "accuracy",
                                          type == "Q16_why_not_moreN_test_profit_decis" ~ "translate profitable decision",
                                          type == "Q16_why_not_moreN_too_slow" ~ "get results at right time") ) 
  



head(Q16_why_not_moreN)
  ggplot(Q16_why_not_moreN,  aes(label_name , percent))+
  geom_col()+
  geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
  theme_classic()+
  labs(x= "reasons",
       y = "",
       title = "Please indicate why you don't do more SOIL Nitrogen testing:",
       subtitle = "Agronomist",
       caption = "add")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8, hjust = 0))+
  scale_y_continuous(labels = scales::percent, limits=c(0, 0.5))
    
  
#################### Q17  
  
  table(data$Q17_why_not_moreP_cost)
  table(data$Q17_why_not_moreP_time)
  table(data$Q17_why_not_moreP_lab_cost)
  table(data$Q17_why_not_moreP_variability)
  table(data$Q17_why_not_moreP_lab_accuracy)
  table(data$Q17_why_not_moreP_test_profit_decis)
  table(data$Q17_why_not_moreP_too_slow) 
  table(data$Q17_why_not_moreP_text)
  
  
  Q17_why_not_moreP_cost <- data %>%
    group_by(  Q17_why_not_moreP_cost ) %>%
    summarise(n = n()) %>%
    mutate(percent =(freq = n / sum(n)),
           type = "Q17_why_not_moreP_cost") %>% 
    filter( Q17_why_not_moreP_cost != "NA") %>% 
    select(percent, type)
  
  Q17_why_not_moreP_time <- data %>%
    group_by(  Q17_why_not_moreP_time ) %>%
    summarise(n = n()) %>%
    mutate(percent =(freq = n / sum(n)),
           type = "Q17_why_not_moreP_time") %>% 
    filter( Q17_why_not_moreP_time != "NA") %>% 
    select(percent, type)
  
  Q17_why_not_moreP_lab_cost <- data %>%
    group_by(  Q17_why_not_moreP_lab_cost ) %>%
    summarise(n = n()) %>%
    mutate(percent =(freq = n / sum(n)),
           type = "Q17_why_not_moreP_lab_cost")%>% 
    filter( Q17_why_not_moreP_lab_cost != "NA") %>% 
    select(percent, type)
  
  Q17_why_not_moreP_variability <- data %>%
    group_by(  Q17_why_not_moreP_variability ) %>%
    summarise(n = n()) %>%
    mutate(percent =(freq = n / sum(n)),
           type = "Q17_why_not_moreP_variability")%>% 
    filter( Q17_why_not_moreP_variability != "NA") %>% 
    select(percent, type)
  
  Q17_why_not_moreP_lab_accuracy <- data %>%
    group_by(  Q17_why_not_moreP_lab_accuracy ) %>%
    summarise(n = n()) %>%
    mutate(percent =(freq = n / sum(n)),
           type = "Q17_why_not_moreP_lab_accuracy")%>% 
    filter( Q17_why_not_moreP_lab_accuracy != "NA") %>% 
    select(percent, type)
  
  Q17_why_not_moreP_test_profit_decis <- data %>%
    group_by(  Q17_why_not_moreP_test_profit_decis ) %>%
    summarise(n = n()) %>%
    mutate(percent =(freq = n / sum(n)),
           type = "Q17_why_not_moreP_test_profit_decis")%>% 
    filter( Q17_why_not_moreP_test_profit_decis != "NA") %>% 
    select(percent, type)
  
  Q17_why_not_moreP_too_slow <- data %>%
    group_by(  Q17_why_not_moreP_too_slow ) %>%
    summarise(n = n()) %>%
    mutate(percent =(freq = n / sum(n)),
           type = "Q17_why_not_moreP_too_slow") %>% 
    filter( Q17_why_not_moreP_too_slow != "NA") %>% 
    select(percent, type)
  
  
  
  Q17_why_not_moreP <- rbind(Q17_why_not_moreP_cost,
                             Q17_why_not_moreP_time,
                             Q17_why_not_moreP_lab_cost,
                             Q17_why_not_moreP_variability,
                             Q17_why_not_moreP_lab_accuracy,
                             Q17_why_not_moreP_test_profit_decis,
                             Q17_why_not_moreP_too_slow)
  Q17_why_not_moreP <- mutate(Q17_why_not_moreP,
                              percent1 = round(percent*100,2),
                              label_name = case_when(
                                type == "Q17_why_not_moreP_cost" ~ "cost",
                                type == "Q17_why_not_moreP_time" ~ "time",
                                type == "Q17_why_not_moreP_lab_cost" ~ "cost of lab analysis",
                                type == "Q17_why_not_moreP_variability" ~ "variability",
                                type == "Q17_why_not_moreP_lab_accuracy" ~ "accuracy",
                                type == "Q17_why_not_moreP_test_profit_decis" ~ "translate profitable decision",
                                type == "Q17_why_not_moreP_too_slow" ~ "get results at right time") ) 
  
  
  
  
  head(Q17_why_not_moreP)
  ggplot(Q17_why_not_moreP, aes(x = reorder(label_name, -percent), y = percent))+
    geom_col()+
    geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
    theme_classic()+
    labs(x= "reasons",
         y = "",
         title = "Please indicate why you don't do more SOIL P testing:",
         subtitle = "Agronomist",
         caption = "add")+
    theme(axis.text.x=element_text(angle=45,hjust=1),
          plot.caption = element_text(size = 8, hjust = 0))+
    scale_y_continuous(labels = scales::percent, limits=c(0, 0.5))
  
  
  
  
  library(ggplot2) 
  head(mtcars)
  # create factors with value labels 
  mtcars$gear <- factor(mtcars$gear,levels=c(3,4,5),
                        labels=c("3gears","4gears","5gears")) 
  mtcars$am <- factor(mtcars$am,levels=c(0,1),
                      labels=c("Automatic","Manual")) 
  mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8),
                       labels=c("4cyl","6cyl","8cyl")) 
  
  
  head(Q12_percent_testing)
  Q12_percent_testing <- mutate(Q12_percent_testing,
                                bin_as_factors = case_when(
                                  bins == "0" ~ 0,
                                  bins == "5-10%" ~ 5,
                                  bins == "10-15%" ~ 10,
                                  bins == "15-20%" ~ 15,
                                  bins == "20-50%" ~ 20,
                                  bins == "50-100%" ~ 50
                                ))
  Q12_percent_testing$bin_as_factors <- factor(Q12_percent_testing$bin_as_factors,
                                        levels=c(0,5,10,15,20,50),
                                        labels=c("0","5-10%","10-15%","15-20%", "20-50%", "50-100%")) 
  
  filter(Q12_percent_testing, bin_as_factors != "NA") %>% 
    ggplot( aes(bin_as_factors, percent))+
    geom_col()+
    #geom_text(aes(label = percent(signif(percent),1), vjust = -1.0, hjust = 0.5))+
    theme_classic()+
    facet_wrap(. ~ type, labeller=labeller(type = labels)) +  
    labs(x= "bins",
         y = "",
         title = "In 2018 what % of your clients tested...",
         subtitle = "Agronomist",
         caption = caption)+
    theme(axis.text.x=element_text(angle=90,hjust=1),
          plot.caption = element_text(size = 8, hjust = 0))+
    scale_y_continuous(labels = scales::percent)
  
  
  
  
  ####PLay with tables
  
install.packages("formattable")
install.packages("data.table")
library(data.table)
library(formattable)

austinData= fread('https://raw.githubusercontent.com/lgellis/MiscTutorial/master/Austin/Imagine_Austin_Indicators.csv', data.table=FALSE, header = TRUE, stringsAsFactors = FALSE)
head(austinData)
attach(austinData)


i1 <- austinData %>%
  filter(`Indicator Name` %in% 
           c('Prevalence of Obesity', 'Prevalence of Tobacco Use', 
             'Prevalence of Cardiovascular Disease', 'Prevalence of Diabetes')) %>%
  select(c(`Indicator Name`, `2011`, `2012`, `2013`, `2014`, `2015`, `2016`)) %>%
  mutate (Average = round(rowMeans(
    cbind(`2011`, `2012`, `2013`, `2014`, `2015`, `2016`), na.rm=T),2), 
    `Improvement` = round((`2011`-`2016`)/`2011`*100,2))
i1
check <- formattable(i1)
check
Q1_agro_region_perc  
table <- formattable(Q1_agro_region_perc)
table

Q1_agro_region_perc <- round(Q1_agro_region_perc$percent,2)
Q1_agro_region_perc



#### RESHAPE

head(Q3_regions_agro_grower)
gather(Q3_regions_agro_grower, key = "crop", value = "ave_area",Ave_Percent_ceral:Ave_Percent_fallow )




####################################################
############# checking ############################


Q13_percent_testing_2018 <- data %>%
  group_by( Q_13.1, Resp_Group ) %>%
  summarise(n = n()) %>%
  mutate(percent = (freq = n / sum(n)),
         type = "percent_testing_2018")


Q13_percent_testing_2018_A <- data %>%
  group_by( Q_13.1, Resp_Group ) %>%
  summarise(n = n()) 
print(Q13_percent_testing_2018_A)

Q13_percent_testing_2018_B <-
  mutate(Q13_percent_testing_2018_A, percent = (freq = n / sum(n)),
         type = "percent_testing_2018")
print(Q13_percent_testing_2018_B)

Q13_percent_testing_2018 <- Q13_percent_testing_2018 %>%
  select(n,
         percent,
         type,
         bins = Q_13.1,
         Resp_Group)

print(Q13_percent_testing_2018)
check_math <- filter(Q13_percent_testing_2018, Resp_Group == "Agronomist")       
print(check_math)
test <- data %>%
  group_by( Q_13.1, Resp_Group ) %>%
  summarise(n = n())

test <-data.frame(test)
test
test1 <- filter(test, Resp_Group == "Agronomist")
test1
sum(test1$n)

test2 <- filter(test, Resp_Group == "Grower")
test2
sum(test2$n)



#### YIP its wrong 
data_agro <- filter(data, Resp_Group == "Agronomist" )

Q13_percent_testing_2018 <- data_agro %>%
  group_by( Q_13.1, ) %>%
  summarise(n = n()) %>%
  mutate(percent = (freq = n / sum(n)),
         type = "percent_testing_2018",
         Resp_Group = "Agronomist")
Q13_percent_testing_2018 <- Q13_percent_testing_2018 %>%
  select(n,
         percent,
         type,
         bins = Q_13.1,
         Resp_Group)
print(Q13_percent_testing_2018)


Q13_percent_testing <- rbind(Q13_percent_testing_2018,
                             Q13_percent_N_testing_2018,
                             Q13_percent_testing_P_2018)


head(Q13_percent_testing_2018)
head(Q13_percent_N_testing_2018)
head(Q13_percent_N_testing_2018)
Q13_percent_testing <- rbind(Q13_percent_testing_2018,
      Q13_percent_N_testing_2018,
      Q13_percent_N_testing_2018)

print(Q13_percent_testing)



################ AHHHHHH

Q13_percent_testing_P_2018_grower <- data_grower %>%
  group_by(  Q_13.4, Resp_Group  ) %>%
  summarise(n = n()) %>%
  mutate(percent =(freq = n / sum(n)),
         type = "percent_P_testing_2018",
         Resp_Group = "Grower")
Q13_percent_testing_P_2018_grower <- Q13_percent_testing_P_2018_grower %>%
  select(n,
         percent,
         type,
         bins = Q_13.4,
         Resp_Group)

Q13_percent_P_testing_P_2018 <- rbind(Q13_percent_testing_P_2018_grower, Q13_percent_testing_P_2018_agro)

str(Q13_percent_testing_2018)
str(Q13_percent_N_testing_2018)
str(Q13_percent_P_testing_P_2018)
soil_testing <- rbind(Q13_percent_testing_2018,
                      Q13_percent_N_testing_2018)
soil_testing <- rbind(soil_testing,Q13_percent_P_testing_P_2018 )
head(soil_testing)


