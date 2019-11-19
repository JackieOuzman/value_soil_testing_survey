# #### **Question 17 micronutrients**
# And, which tests do you use for micronutrients?
#   
#   * 1 - Type of test
# * 1 - Frequency (times per season)
# * 1 - How many cores per paddock
# * 2 - Type of test
# * 2 - Frequency (times per season)
# * 2 - How many cores per paddock
# * 3 - Type of test
# * 3 - Frequency (times per season)
# * 3 - How many cores per paddock
# * 4 - Type of test
# * 4 - Frequency (times per season)
# * 4 - How many cores per paddock
# * 5 - Type of test
# * 5 - Frequency (times per season)
# * 5 - How many cores per paddock
# * 6 - Type of test
# * 6 - Frequency (times per season)
# * 6 - How many cores per paddock
# * 7 - Type of test
# * 7 - Frequency (times per season)
# * 7 - How many cores per paddock
# * 8 - Type of test
# * 8 - Frequency (times per season)
# * 8 - How many cores per paddock
# * How frequently are your clients paddocks tested i.e. every 3 years, every 5 years ... other?10


data
data$Q_17.1.1
data$Q_17.1.3

### use this this to count how many we have for test 1=pH
 
subsetQ_17.1 <- select(data, Q_17.1.1, Q_17.1.3, Resp_Group, `Respondent ID`)

head(subsetQ_17.1)

sum(is.na(subsetQ_17.1$Q_17.1.1)) #number of NA in this Question 17.1.1
sum(is.na(subsetQ_17.1$Q_17.1.3)) #number of NA in this Question 17.1.3

#tail(subsetQ_17.1_coded_agro_pH)

subsetQ_17.1_pH <- filter(subsetQ_17.1,
                           Q_17.1.1 == "pH")
subsetQ_17.1_Text <- filter(subsetQ_17.1,
                            Q_17.1.1 == "Texture")
subsetQ_17.1_Al <- filter(subsetQ_17.1,
                           Q_17.1.1 == "Aluminium (CaCl2)")
subsetQ_17.1_Bor <- filter(subsetQ_17.1,
                           Q_17.1.1 == "Boron")
subsetQ_17.1_CC <- filter(subsetQ_17.1,
                          Q_17.1.1 == "Calcium carbonate %")
subsetQ_17.1_TED <- filter(subsetQ_17.1,
                          Q_17.1.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")

subsetQ_17.1_TEE <- filter(subsetQ_17.1,
                          Q_17.1.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
subsetQ_17.1_Cl <- filter(subsetQ_17.1,
                          Q_17.1.1 == "Chloride")
subsetQ_17.1_EC <- filter(subsetQ_17.1,
                          Q_17.1.1 == "Exchangable cations - Ca, Mg, Na, K")
subsetQ_17.1_SKC <- filter(subsetQ_17.1,
                          Q_17.1.1 == "Sulfur (KCl40)")
subsetQ_17.1_SMC <- filter(subsetQ_17.1,
                          Q_17.1.1 == "Sulfur (MCP)")

###### Type of test 2 #### 
data$Q_17.2.1
data$Q_17.2.3

### use this this to count how many we have for test 2=Texture
subsetQ_17.2<- select(data, Q_17.2.1, Q_17.2.3, Resp_Group, `Respondent ID`) 

head(subsetQ_17.2)

sum(is.na(subsetQ_17.2$Q_17.2.1)) #number of NA in this Question 17.2.1
sum(is.na(subsetQ_17.2$Q_17.2.3)) #number of NA in this Question 17.2.3


#tail(subsetQ_17.2_coded_agro_Texture)

subsetQ_17.2_pH <- filter(subsetQ_17.2,
                          Q_17.2.1 == "pH")
subsetQ_17.2_Text <- filter(subsetQ_17.2,
                            Q_17.2.1 == "Texture")
subsetQ_17.2_Al <- filter(subsetQ_17.2,
                          Q_17.2.1 == "Aluminium (CaCl2)")
subsetQ_17.2_Bor <- filter(subsetQ_17.2,
                           Q_17.2.1 == "Boron")
subsetQ_17.2_CC <- filter(subsetQ_17.2,
                          Q_17.2.1 == "Calcium carbonate %")
subsetQ_17.2_TED <- filter(subsetQ_17.2,
                           Q_17.2.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")

subsetQ_17.2_TEE <- filter(subsetQ_17.2,
                           Q_17.2.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
subsetQ_17.2_Cl <- filter(subsetQ_17.2,
                          Q_17.2.1 == "Chloride")
subsetQ_17.2_EC <- filter(subsetQ_17.2,
                          Q_17.2.1 == "Exchangable cations - Ca, Mg, Na, K")

subsetQ_17.2_SKC <- filter(subsetQ_17.2,
                           Q_17.2.1 == "Sulfur (KCl40)")
subsetQ_17.2_SMC <- filter(subsetQ_17.2,
                           Q_17.2.1 == "Sulfur (MCP)")


###### Type of test 3 #### 
data$Q_17.3.1
data$Q_17.3.3

### use this this to count how many we have for test 3=Aluminium (CaCl2)
subsetQ_17.3 <- select(data, Q_17.3.1, Q_17.3.3, Resp_Group, `Respondent ID`) 

head(subsetQ_17.3)

sum(is.na(subsetQ_17.3$Q_17.3.1)) #number of NA in this Question 17.3.1
sum(is.na(subsetQ_17.3$Q_17.3.3)) #number of NA in this Question 17.3.3

#tail(subsetQ_17.3_Aluminium (CaCl2))

subsetQ_17.3_pH <- filter(subsetQ_17.3,
                          Q_17.3.1 == "pH")
subsetQ_17.3_Text <- filter(subsetQ_17.3,
                            Q_17.3.1 == "Texture")
subsetQ_17.3_Al <- filter(subsetQ_17.3,
                          Q_17.3.1 == "Aluminium (CaCl2)")
subsetQ_17.3_Bor <- filter(subsetQ_17.3,
                           Q_17.3.1 == "Boron")
subsetQ_17.3_CC <- filter(subsetQ_17.3,
                          Q_17.3.1 == "Calcium carbonate %")
subsetQ_17.3_TED <- filter(subsetQ_17.3,
                           Q_17.3.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
subsetQ_17.3_TEE <- filter(subsetQ_17.3,
                           Q_17.3.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
subsetQ_17.3_Cl <- filter(subsetQ_17.3,
                          Q_17.3.1 == "Chloride")
subsetQ_17.3_EC <- filter(subsetQ_17.3,
                          Q_17.3.1 == "Exchangable cations - Ca, Mg, Na, K")
subsetQ_17.3_SKC <- filter(subsetQ_17.3,
                           Q_17.3.1 == "Sulfur (KCl40)")
subsetQ_17.3_SMC <- filter(subsetQ_17.3,
                           Q_17.3.1 == "Sulfur (MCP)")


###### Type of test 4 #### 
data$Q_17.4.1
data$Q_17.4.3

### use this this to count how many we have for test 4=Boron
subsetQ_17.4 <- select(data, Q_17.4.1, Q_17.4.3, Resp_Group, `Respondent ID`) 

head(subsetQ_17.4)


sum(is.na(subsetQ_17.4$Q_17.4.1)) #number of NA in this Question 17.4.1
sum(is.na(subsetQ_17.4$Q_17.4.3)) #number of NA in this Question 17.4.3

#tail(subsetQ_17.4_Boron)

subsetQ_17.4_pH <- filter(subsetQ_17.4,
                          Q_17.4.1 == "pH")

subsetQ_17.4_Text <- filter(subsetQ_17.4,
                            Q_17.4.1 == "Texture")
subsetQ_17.4_Al <- filter(subsetQ_17.4,
                          Q_17.4.1 == "Aluminium (CaCl2)")
subsetQ_17.4_Bor <- filter(subsetQ_17.4,
                           Q_17.4.1 == "Boron")
subsetQ_17.4_CC <- filter(subsetQ_17.4,
                          Q_17.4.1 == "Calcium carbonate %")
subsetQ_17.4_TED <- filter(subsetQ_17.4,
                           Q_17.4.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
subsetQ_17.4_TEE <- filter(subsetQ_17.4,
                           Q_17.4.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")

subsetQ_17.4_Cl <- filter(subsetQ_17.4,
                          Q_17.4.1 == "Chloride")
subsetQ_17.4_EC <- filter(subsetQ_17.4,
                          Q_17.4.1 == "Exchangable cations - Ca, Mg, Na, K")
subsetQ_17.4_SKC <- filter(subsetQ_17.4,
                           Q_17.4.1 == "Sulfur (KCl40)")
subsetQ_17.4_SMC <- filter(subsetQ_17.4,
                           Q_17.4.1 == "Sulfur (MCP)")

###### Type of test 5 #### 
data$Q_17.5.1
data$Q_17.5.3

### use this this to count how many we have for test 5=Calcium carbonate %
subsetQ_17.5 <- select(data, Q_17.5.1, Q_17.5.3, Resp_Group, `Respondent ID`) 

head(subsetQ_17.5)

sum(is.na(subsetQ_17.5$Q_17.5.1)) #number of NA in this Question 17.5.1
sum(is.na(subsetQ_17.5$Q_17.5.3)) #number of NA in this Question 17.5.3

#tail(subsetQ_17.5_CP)

subsetQ_17.5_pH <- filter(subsetQ_17.5,
                          Q_17.5.1 == "pH")
subsetQ_17.5_Text <- filter(subsetQ_17.5,
                            Q_17.5.1 == "Texture")
subsetQ_17.5_Al <- filter(subsetQ_17.5,
                          Q_17.5.1 == "Aluminium (CaCl2)")
subsetQ_17.5_Bor <- filter(subsetQ_17.5,
                           Q_17.5.1 == "Boron")
subsetQ_17.5_CC <- filter(subsetQ_17.5,
                          Q_17.5.1 == "Calcium carbonate %")
subsetQ_17.5_TED <- filter(subsetQ_17.5,
                           Q_17.5.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
subsetQ_17.5_TEE <- filter(subsetQ_17.5,
                           Q_17.5.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
subsetQ_17.5_Cl <- filter(subsetQ_17.5,
                          Q_17.5.1 == "Chloride")
subsetQ_17.5_EC <- filter(subsetQ_17.5,
                          Q_17.5.1 == "Exchangable cations - Ca, Mg, Na, K")
subsetQ_17.5_SKC <- filter(subsetQ_17.5,
                           Q_17.5.1 == "Sulfur (KCl40)")
subsetQ_17.5_SMC <- filter(subsetQ_17.5,
                           Q_17.5.1 == "Sulfur (MCP)")
##### Type of test 6#### 
data$Q_17.6.1
data$Q_17.6.3

### use this this to count how many we have for test 6=Trace elements (DTPA) Cu, Zn, Mg, F %
subsetQ_17.6 <- select(data, Q_17.6.1, Q_17.6.3, Resp_Group, `Respondent ID`) 

head(subsetQ_17.5)

sum(is.na(subsetQ_17.6$Q_17.6.1)) #number of NA in this Question 17.6.1
sum(is.na(subsetQ_17.6$Q_17.6.3)) #number of NA in this Question 17.6.3

#tail(subsetQ_17.6_TED)

subsetQ_17.6_pH <- filter(subsetQ_17.6,
                          Q_17.6.1 == "pH")
subsetQ_17.6_Text <- filter(subsetQ_17.6,
                            Q_17.6.1 == "Texture")
subsetQ_17.6_Al <- filter(subsetQ_17.6,
                          Q_17.6.1 == "Aluminium (CaCl2)")
subsetQ_17.6_Bor <- filter(subsetQ_17.6,
                           Q_17.6.1 == "Boron")
subsetQ_17.6_CC <- filter(subsetQ_17.6,
                          Q_17.6.1 == "Calcium carbonate %")
subsetQ_17.6_TED <- filter(subsetQ_17.6,
                           Q_17.6.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
subsetQ_17.6_TEE <- filter(subsetQ_17.6,
                           Q_17.6.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
subsetQ_17.6_Cl <- filter(subsetQ_17.6,
                          Q_17.6.1 == "Chloride")
subsetQ_17.6_EC <- filter(subsetQ_17.6,
                          Q_17.6.1 == "Exchangable cations - Ca, Mg, Na, K")
subsetQ_17.6_SKC <- filter(subsetQ_17.6,
                           Q_17.6.1 == "Sulfur (KCl40)")
subsetQ_17.6_SMC <- filter(subsetQ_17.6,
                           Q_17.6.1 == "Sulfur (MCP)")

##### Type of test 7 #### 
data$Q_17.7.1
data$Q_17.7.3

### use this this to count how many we have for test 5="Trace elements (EDTA) Cu, Zn, Mg, Fe"
subsetQ_17.7 <- select(data, Q_17.7.1, Q_17.7.3, Resp_Group, `Respondent ID`) 

head(subsetQ_17.7)

sum(is.na(subsetQ_17.7$Q_17.7.1)) #number of NA in this Question 17.7.1
sum(is.na(subsetQ_17.7$Q_17.7.3)) #number of NA in this Question 17.7.3

#tail(subsetQ_17.7_TEE)

subsetQ_17.7_pH <- filter(subsetQ_17.7,
                          Q_17.7.1 == "pH")
subsetQ_17.7_Text <- filter(subsetQ_17.7,
                            Q_17.7.1 == "Texture")
subsetQ_17.7_Al <- filter(subsetQ_17.7,
                          Q_17.7.1 == "Aluminium (CaCl2)")
subsetQ_17.7_Bor <- filter(subsetQ_17.7,
                           Q_17.7.1 == "Boron")
subsetQ_17.7_CC <- filter(subsetQ_17.7,
                          Q_17.7.1 == "Calcium carbonate %")
subsetQ_17.7_TED <- filter(subsetQ_17.7,
                           Q_17.7.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
subsetQ_17.7_TEE <- filter(subsetQ_17.7,
                           Q_17.7.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
subsetQ_17.7_Cl <- filter(subsetQ_17.7,
                          Q_17.7.1 == "Chloride")
subsetQ_17.7_EC <- filter(subsetQ_17.7,
                          Q_17.7.1 == "Exchangable cations - Ca, Mg, Na, K")
subsetQ_17.7_SKC <- filter(subsetQ_17.7,
                           Q_17.7.1 == "Sulfur (KCl40)")
subsetQ_17.7_SMC <- filter(subsetQ_17.7,
                           Q_17.7.1 == "Sulfur (MCP)")
##### Type of test 8 #### 
data$Q_17.8.1
data$Q_17.8.3

### use this this to count how many we have for test 8=Chloride"
subsetQ_17.8 <- select(data, Q_17.8.1, Q_17.8.3, Resp_Group, `Respondent ID`) 

head(subsetQ_17.8)

sum(is.na(subsetQ_17.8$Q_17.8.1)) #number of NA in this Question 17.8.1
sum(is.na(subsetQ_17.8$Q_17.8.3)) #number of NA in this Question 17.8.3

#tail(subsetQ_17.8_Cl)

subsetQ_17.8_pH <- filter(subsetQ_17.8,
                          Q_17.8.1 == "pH")
subsetQ_17.8_Text <- filter(subsetQ_17.8,
                            Q_17.8.1 == "Texture")
subsetQ_17.8_Al <- filter(subsetQ_17.8,
                          Q_17.8.1 == "Aluminium (CaCl2)")
subsetQ_17.8_Bor <- filter(subsetQ_17.8,
                           Q_17.8.1 == "Boron")
subsetQ_17.8_CC <- filter(subsetQ_17.8,
                          Q_17.8.1 == "Calcium carbonate %")
subsetQ_17.8_TED <- filter(subsetQ_17.8,
                           Q_17.8.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
subsetQ_17.8_TEE <- filter(subsetQ_17.8,
                           Q_17.8.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
subsetQ_17.8_Cl <- filter(subsetQ_17.8,
                          Q_17.8.1 == "Chloride")
subsetQ_17.8_EC <- filter(subsetQ_17.8,
                          Q_17.8.1 == "Exchangable cations - Ca, Mg, Na, K")
subsetQ_17.8_SKC <- filter(subsetQ_17.8,
                           Q_17.8.1 == "Sulfur (KCl40)")
subsetQ_17.8_SMC <- filter(subsetQ_17.8,
                           Q_17.8.1 == "Sulfur (MCP)")
# ##### Type of test 9 #### 
# data$Q_17.9.1
# data$Q_17.9.3
# 
# ### use this this to count how many we have for test 9="Exchangable cations - Ca, Mg, Na, K"
# subsetQ_17.9 <- select(data, Q_17.9.1, Q_17.9.3, Resp_Group, `Respondent ID`) 
# 
# head(subsetQ_17.9)
# 
# sum(is.na(subsetQ_17.9$Q_17.9.1)) #number of NA in this Question 17.9.1
# sum(is.na(subsetQ_17.9$Q_17.9.3)) #number of NA in this Question 17.9.3
# 
# #tail(subsetQ_17.9_EC)
# 
# subsetQ_17.9_pH <- filter(subsetQ_17.9,
#                           Q_17.9.1 == "pH")
# subsetQ_17.9_Text <- filter(subsetQ_17.9,
#                             Q_17.9.1 == "Texture")
# subsetQ_17.9_Al <- filter(subsetQ_17.9,
#                           Q_17.9.1 == "Aluminium (CaCl2)")
# subsetQ_17.9_Bor <- filter(subsetQ_17.9,
#                            Q_17.9.1 == "Boron")
# subsetQ_17.9_CC <- filter(subsetQ_17.9,
#                           Q_17.9.1 == "Calcium carbonate %")
# subsetQ_17.9_TED <- filter(subsetQ_17.9,
#                            Q_17.9.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
# subsetQ_17.9_TEE <- filter(subsetQ_17.9,
#                            Q_17.9.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
# subsetQ_17.9_Cl <- filter(subsetQ_17.9,
#                           Q_17.9.1 == "Chloride")
# subsetQ_17.9_EC <- filter(subsetQ_17.9,
#                           Q_17.9.1 == "Exchangable cations - Ca, Mg, Na, K")
# subsetQ_17.9_SKC <- filter(subsetQ_17.9,
#                            Q_17.9.1 == "Sulfur (KCl40)")
# subsetQ_17.9_SMC <- filter(subsetQ_17.9,
#                            Q_17.9.1 == "Sulfur (MCP)")
# ##### Type of test 10 #### 
# data$Q_17.10.1
# data$Q_17.10.3
# 
# ### use this this to count how many we have for test 10=Sulfur (KCl40)
# subsetQ_17.10 <- select(data, Q_17.10.1, Q_17.10.3, Resp_Group, `Respondent ID`) 
# 
# head(subsetQ_17.10)
# 
# sum(is.na(subsetQ_17.10$Q_17.10.1)) #number of NA in this Question 17.10.1
# sum(is.na(subsetQ_17.10$Q_17.10.3)) #number of NA in this Question 17.10.3
# 
# #tail(subsetQ_17.10_SKC)
# 
# subsetQ_17.10_pH <- filter(subsetQ_17.10,
#                           Q_17.10.1 == "pH")
# subsetQ_17.10_Text <- filter(subsetQ_17.10,
#                             Q_17.10.1 == "Texture")
# subsetQ_17.10_Al <- filter(subsetQ_17.10,
#                           Q_17.10.1 == "Aluminium (CaCl2)")
# subsetQ_17.10_Bor <- filter(subsetQ_17.10,
#                            Q_17.10.1 == "Boron")
# subsetQ_17.10_CC <- filter(subsetQ_17.10,
#                           Q_17.10.1 == "Calcium carbonate %")
# subsetQ_17.10_TED <- filter(subsetQ_17.10,
#                            Q_17.10.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
# subsetQ_17.10_TEE <- filter(subsetQ_17.10,
#                            Q_17.10.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
# subsetQ_17.10_Cl <- filter(subsetQ_17.10,
#                           Q_17.10.1 == "Chloride")
# subsetQ_17.10_EC <- filter(subsetQ_17.10,
#                           Q_17.10.1 == "Exchangable cations - Ca, Mg, Na, K")
# subsetQ_17.10_SKC <- filter(subsetQ_17.10,
#                            Q_17.10.1 == "Sulfur (KCl40)")
# subsetQ_17.5_SMC <- filter(subsetQ_17.10,
#                            Q_17.10.1 == "Sulfur (MCP)")
# ##### Type of test 11 #### 
# data$Q_17.11.1
# data$Q_17.11.3
# 
# ### use this this to count how many we have for test 11=Sulfur (MCP)
# subsetQ_17.11 <- select(data, Q_17.11.1, Q_17.11.3, Resp_Group, `Respondent ID`) 
# 
# head(subsetQ_17.11)
# 
# sum(is.na(subsetQ_17.11$Q_17.11.1)) #number of NA in this Question 17.11.1
# sum(is.na(subsetQ_17.11$Q_17.11.3)) #number of NA in this Question 17.11.3
# 
# #tail(subsetQ_17.11_SMC)
# 
# subsetQ_17.11_pH <- filter(subsetQ_17.11,
#                            Q_17.11.1 == "pH")
# subsetQ_17.11_Text <- filter(subsetQ_17.11,
#                              Q_17.11.1 == "Texture")
# subsetQ_17.11_Al <- filter(subsetQ_17.11,
#                            Q_17.11.1 == "Aluminium (CaCl2)")
# subsetQ_17.11_Bor <- filter(subsetQ_17.11,
#                             Q_17.11.1 == "Boron")
# subsetQ_17.11_CC <- filter(subsetQ_17.11,
#                            Q_17.11.1 == "Calcium carbonate %")
# subsetQ_17.11_TED <- filter(subsetQ_17.11,
#                             Q_17.11.1 == "Trace elements (DTPA) Cu, Zn, Mg, Fe")
# subsetQ_17.11_TEE <- filter(subsetQ_17.11,
#                             Q_17.11.1 == "Trace elements (EDTA) Cu, Zn, Mg, Fe")
# subsetQ_17.11_Cl <- filter(subsetQ_17.11,
#                            Q_17.11.1 == "Chloride")
# subsetQ_17.11_EC <- filter(subsetQ_17.11,
#                            Q_17.11.1 == "Exchangable cations - Ca, Mg, Na, K")
# subsetQ_17.11_SKC <- filter(subsetQ_17.11,
#                             Q_17.11.1 == "Sulfur (KCl40)")
# subsetQ_17.11_SMC <- filter(subsetQ_17.11,
#                            Q_17.11.1 == "Sulfur (MCP)")


####Join 11 tests pH
subsetQ_17.1_pH
subsetQ_17.2_pH
subsetQ_17.3_pH
subsetQ_17.4_pH
subsetQ_17.5_pH
subsetQ_17.6_pH
subsetQ_17.7_pH
subsetQ_17.8_pH
#subsetQ_17.9_pH
#subsetQ_17.10_pH
#subsetQ_17.11_pH

#remane clm headings

colnames(subsetQ_17.1_pH)[1] <- "Q_17"
colnames(subsetQ_17.1_pH)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_pH)[1] <- "Q_17"
colnames(subsetQ_17.2_pH)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_pH)[1] <- "Q_17"
colnames(subsetQ_17.3_pH)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_pH)[1] <- "Q_17"
colnames(subsetQ_17.4_pH)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_pH)[1] <- "Q_17"
colnames(subsetQ_17.5_pH)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_pH)[1] <- "Q_17"
colnames(subsetQ_17.6_pH)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_pH)[1] <- "Q_17"
colnames(subsetQ_17.7_pH)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_pH)[1] <- "Q_17"
colnames(subsetQ_17.8_pH)[2] <- "Q_17_freq"

# #colnames(subsetQ_17.9_pH)[1] <- "Q_17"
# colnames(subsetQ_17.9_pH)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_pH)[1] <- "Q_17"
# colnames(subsetQ_17.10_pH)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_pH)[1] <- "Q_17"
# colnames(subsetQ_17.11_pH)[2] <- "Q_17_freq"


Q17_pH<-bind_rows(subsetQ_17.1_pH,subsetQ_17.2_pH, subsetQ_17.3_pH, subsetQ_17.4_pH, subsetQ_17.5_pH, 
                    subsetQ_17.6_pH, subsetQ_17.7_pH, subsetQ_17.8_pH)
# , subsetQ_17.9_pH, subsetQ_17.10_pH,
#                     subsetQ_17.11_pH)

Q17_pH

####Join 11 tests Text
subsetQ_17.1_Text
subsetQ_17.2_Text
subsetQ_17.3_Text
subsetQ_17.4_Text
subsetQ_17.5_Text
subsetQ_17.6_Text
subsetQ_17.7_Text
subsetQ_17.8_Text
# subsetQ_17.9_Text
# subsetQ_17.10_Text
# subsetQ_17.11_Text

#remane clm headings

colnames(subsetQ_17.1_Text)[1] <- "Q_17"
colnames(subsetQ_17.1_Text)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_Text)[1] <- "Q_17"
colnames(subsetQ_17.2_Text)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_Text)[1] <- "Q_17"
colnames(subsetQ_17.3_Text)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_Text)[1] <- "Q_17"
colnames(subsetQ_17.4_Text)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_Text)[1] <- "Q_17"
colnames(subsetQ_17.5_Text)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_Text)[1] <- "Q_17"
colnames(subsetQ_17.6_Text)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_Text)[1] <- "Q_17"
colnames(subsetQ_17.7_Text)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_Text)[1] <- "Q_17"
colnames(subsetQ_17.8_Text)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_Text)[1] <- "Q_17"
# colnames(subsetQ_17.9_Text)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_Text)[1] <- "Q_17"
# colnames(subsetQ_17.10_Text)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_Text)[1] <- "Q_17"
# colnames(subsetQ_17.11_Text)[2] <- "Q_17_freq"


Q17_Text <-bind_rows(subsetQ_17.1_Text,subsetQ_17.2_Text, subsetQ_17.3_Text, subsetQ_17.4_Text, subsetQ_17.5_Text, 
                    subsetQ_17.6_Text, subsetQ_17.7_Text, subsetQ_17.8_Text)
# , subsetQ_17.9_Text, subsetQ_17.10_Text,
#                     subsetQ_17.11_Text)

Q17_Text 

####Join 11 tests Text
subsetQ_17.1_Al
subsetQ_17.2_Al
subsetQ_17.3_Al
subsetQ_17.4_Al
subsetQ_17.5_Al
subsetQ_17.6_Al
subsetQ_17.7_Al
subsetQ_17.8_Al
# subsetQ_17.9_Al
# subsetQ_17.10_Al
# subsetQ_17.11_Al

#remane clm headings

colnames(subsetQ_17.1_Al)[1] <- "Q_17"
colnames(subsetQ_17.1_Al)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_Al)[1] <- "Q_17"
colnames(subsetQ_17.2_Al)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_Al)[1] <- "Q_17"
colnames(subsetQ_17.3_Al)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_Al)[1] <- "Q_17"
colnames(subsetQ_17.4_Al)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_Al)[1] <- "Q_17"
colnames(subsetQ_17.5_Al)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_Al)[1] <- "Q_17"
colnames(subsetQ_17.6_Al)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_Al)[1] <- "Q_17"
colnames(subsetQ_17.7_Al)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_Al)[1] <- "Q_17"
colnames(subsetQ_17.8_Al)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_Al)[1] <- "Q_17"
# colnames(subsetQ_17.9_Al)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_Al)[1] <- "Q_17"
# colnames(subsetQ_17.10_Al)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_Al)[1] <- "Q_17"
# colnames(subsetQ_17.11_Al)[2] <- "Q_17_freq"


Q17_Al <-bind_rows(subsetQ_17.1_Al,subsetQ_17.2_Al, subsetQ_17.3_Al, subsetQ_17.4_Al, subsetQ_17.5_Al, 
                    subsetQ_17.6_Al, subsetQ_17.7_Al, subsetQ_17.8_Al)
                   # , subsetQ_17.9_Al, subsetQ_17.10_Al,
                   #  subsetQ_17.11_Al)

Q17_Al


###Join 11 tests Text
subsetQ_17.1_Bor
subsetQ_17.2_Bor
subsetQ_17.3_Bor
subsetQ_17.4_Bor
subsetQ_17.5_Bor
subsetQ_17.6_Bor
subsetQ_17.7_Bor
subsetQ_17.8_Bor
# subsetQ_17.9_Bor
# subsetQ_17.10_Bor
# subsetQ_17.11_Bor

#remane clm headings

colnames(subsetQ_17.1_Bor)[1] <- "Q_17"
colnames(subsetQ_17.1_Bor)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_Bor)[1] <- "Q_17"
colnames(subsetQ_17.2_Bor)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_Bor)[1] <- "Q_17"
colnames(subsetQ_17.3_Bor)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_Bor)[1] <- "Q_17"
colnames(subsetQ_17.4_Bor)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_Bor)[1] <- "Q_17"
colnames(subsetQ_17.5_Bor)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_Bor)[1] <- "Q_17"
colnames(subsetQ_17.6_Bor)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_Bor)[1] <- "Q_17"
colnames(subsetQ_17.7_Bor)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_Bor)[1] <- "Q_17"
colnames(subsetQ_17.8_Bor)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_Bor)[1] <- "Q_17"
# colnames(subsetQ_17.9_Bor)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_Bor)[1] <- "Q_17"
# colnames(subsetQ_17.10_Bor)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_Bor)[1] <- "Q_17"
# colnames(subsetQ_17.11_Bor)[2] <- "Q_17_freq"


Q17_Bor <-bind_rows(subsetQ_17.1_Bor,subsetQ_17.2_Bor, subsetQ_17.3_Bor, subsetQ_17.4_Bor, subsetQ_17.5_Bor, 
                   subsetQ_17.6_Bor, subsetQ_17.7_Bor, subsetQ_17.8_Bor)
# , subsetQ_17.9_Bor, subsetQ_17.10_Bor,
#                    subsetQ_17.11_Bor)

Q17_CC
###Join 11 tests Text
subsetQ_17.1_CC
subsetQ_17.2_CC
subsetQ_17.3_CC
subsetQ_17.4_CC
subsetQ_17.5_CC
subsetQ_17.6_CC
subsetQ_17.7_CC
subsetQ_17.8_CC
# subsetQ_17.9_CC
# subsetQ_17.10_CC
# subsetQ_17.11_CC

#remane clm headings

colnames(subsetQ_17.1_CC)[1] <- "Q_17"
colnames(subsetQ_17.1_CC)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_CC)[1] <- "Q_17"
colnames(subsetQ_17.2_CC)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_CC)[1] <- "Q_17"
colnames(subsetQ_17.3_CC)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_CC)[1] <- "Q_17"
colnames(subsetQ_17.4_CC)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_CC)[1] <- "Q_17"
colnames(subsetQ_17.5_CC)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_CC)[1] <- "Q_17"
colnames(subsetQ_17.6_CC)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_CC)[1] <- "Q_17"
colnames(subsetQ_17.7_CC)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_CC)[1] <- "Q_17"
colnames(subsetQ_17.8_CC)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_CC)[1] <- "Q_17"
# colnames(subsetQ_17.9_CC)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_CC)[1] <- "Q_17"
# colnames(subsetQ_17.10_CC)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_CC)[1] <- "Q_17"
# colnames(subsetQ_17.11_CC)[2] <- "Q_17_freq"


Q17_CC <-bind_rows(subsetQ_17.1_CC,subsetQ_17.2_CC, subsetQ_17.3_CC, subsetQ_17.4_CC, subsetQ_17.5_CC, 
                   subsetQ_17.6_CC, subsetQ_17.7_CC, subsetQ_17.8_CC)
# , subsetQ_17.9_CC, subsetQ_17.10_CC,
#                    subsetQ_17.11_CC)
Q17_CC

###Join 11 tests Text
subsetQ_17.1_TED
subsetQ_17.2_TED
subsetQ_17.3_TED
subsetQ_17.4_TED
subsetQ_17.5_TED
subsetQ_17.6_TED
subsetQ_17.7_TED
subsetQ_17.8_TED
# subsetQ_17.9_TED
# subsetQ_17.10_TED
# subsetQ_17.11_TED

#remane clm headings

colnames(subsetQ_17.1_TED)[1] <- "Q_17"
colnames(subsetQ_17.1_TED)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_TED)[1] <- "Q_17"
colnames(subsetQ_17.2_TED)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_TED)[1] <- "Q_17"
colnames(subsetQ_17.3_TED)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_TED)[1] <- "Q_17"
colnames(subsetQ_17.4_TED)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_TED)[1] <- "Q_17"
colnames(subsetQ_17.5_TED)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_TED)[1] <- "Q_17"
colnames(subsetQ_17.6_TED)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_TED)[1] <- "Q_17"
colnames(subsetQ_17.7_TED)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_TED)[1] <- "Q_17"
colnames(subsetQ_17.8_TED)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_TED)[1] <- "Q_17"
# colnames(subsetQ_17.9_TED)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_TED)[1] <- "Q_17"
# colnames(subsetQ_17.10_TED)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_TED)[1] <- "Q_17"
# colnames(subsetQ_17.11_TED)[2] <- "Q_17_freq"


Q17_TED <-bind_rows(subsetQ_17.1_TED, subsetQ_17.2_TED, subsetQ_17.3_TED, subsetQ_17.4_TED, subsetQ_17.5_TED, 
                   subsetQ_17.6_TED, subsetQ_17.7_TED, subsetQ_17.8_TED)
# , subsetQ_17.9_TED, subsetQ_17.10_TED,
#                    subsetQ_17.11_TED)
Q17_TED

###Join 11 tests Text
subsetQ_17.1_TEE
subsetQ_17.2_TEE
subsetQ_17.3_TEE
subsetQ_17.4_TEE
subsetQ_17.5_TEE
subsetQ_17.6_TEE
subsetQ_17.7_TEE
subsetQ_17.8_TEE
# subsetQ_17.9_TEE
# subsetQ_17.10_TEE
# subsetQ_17.11_TEE

#remane clm headings

colnames(subsetQ_17.1_TEE)[1] <- "Q_17"
colnames(subsetQ_17.1_TEE)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_TEE)[1] <- "Q_17"
colnames(subsetQ_17.2_TEE)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_TEE)[1] <- "Q_17"
colnames(subsetQ_17.3_TEE)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_TEE)[1] <- "Q_17"
colnames(subsetQ_17.4_TEE)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_TEE)[1] <- "Q_17"
colnames(subsetQ_17.5_TEE)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_TEE)[1] <- "Q_17"
colnames(subsetQ_17.6_TEE)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_TEE)[1] <- "Q_17"
colnames(subsetQ_17.7_TEE)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_TEE)[1] <- "Q_17"
colnames(subsetQ_17.8_TEE)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_TEE)[1] <- "Q_17"
# colnames(subsetQ_17.9_TEE)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_TEE)[1] <- "Q_17"
# colnames(subsetQ_17.10_TEE)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_TEE)[1] <- "Q_17"
# colnames(subsetQ_17.11_TEE)[2] <- "Q_17_freq"


Q17_TEE <-bind_rows(subsetQ_17.1_TEE,subsetQ_17.2_TEE, subsetQ_17.3_TEE, subsetQ_17.4_TEE, subsetQ_17.5_TEE, 
                   subsetQ_17.6_TEE, subsetQ_17.7_TEE, subsetQ_17.8_TEE)
# , subsetQ_17.9_TEE, subsetQ_17.10_TEE,
#                    subsetQ_17.11_TEE)
Q17_TEE

###Join 11 tests Text
subsetQ_17.1_Cl
subsetQ_17.2_Cl
subsetQ_17.3_Cl
subsetQ_17.4_Cl
subsetQ_17.5_Cl
subsetQ_17.6_Cl
subsetQ_17.7_Cl
subsetQ_17.8_Cl
# subsetQ_17.9_Cl
# subsetQ_17.10_Cl
# subsetQ_17.11_Cl

#remane clm headings

colnames(subsetQ_17.1_Cl)[1] <- "Q_17"
colnames(subsetQ_17.1_Cl)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_Cl)[1] <- "Q_17"
colnames(subsetQ_17.2_Cl)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_Cl)[1] <- "Q_17"
colnames(subsetQ_17.3_Cl)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_Cl)[1] <- "Q_17"
colnames(subsetQ_17.4_Cl)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_Cl)[1] <- "Q_17"
colnames(subsetQ_17.5_Cl)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_Cl)[1] <- "Q_17"
colnames(subsetQ_17.6_Cl)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_Cl)[1] <- "Q_17"
colnames(subsetQ_17.7_Cl)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_Cl)[1] <- "Q_17"
colnames(subsetQ_17.8_Cl)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_Cl)[1] <- "Q_17"
# colnames(subsetQ_17.9_Cl)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_Cl)[1] <- "Q_17"
# colnames(subsetQ_17.10_Cl)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_Cl)[1] <- "Q_17"
# colnames(subsetQ_17.11_Cl)[2] <- "Q_17_freq"


Q17_Cl <-bind_rows(subsetQ_17.1_Cl,subsetQ_17.2_Cl, subsetQ_17.3_Cl, subsetQ_17.4_Cl, subsetQ_17.5_Cl, 
                   subsetQ_17.6_Cl, subsetQ_17.7_Cl)
# , subsetQ_17.8_Cl, subsetQ_17.9_Cl, subsetQ_17.10_Cl,
#                    subsetQ_17.11_Cl)
Q17_Cl

###Join 11 tests Text
subsetQ_17.1_EC
subsetQ_17.2_EC
subsetQ_17.3_EC
subsetQ_17.4_EC
subsetQ_17.5_EC
subsetQ_17.6_EC
subsetQ_17.7_EC
subsetQ_17.8_EC
# subsetQ_17.9_EC
# subsetQ_17.10_EC
# subsetQ_17.11_EC

#remane clm headings

colnames(subsetQ_17.1_EC)[1] <- "Q_17"
colnames(subsetQ_17.1_EC)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_EC)[1] <- "Q_17"
colnames(subsetQ_17.2_EC)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_EC)[1] <- "Q_17"
colnames(subsetQ_17.3_EC)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_EC)[1] <- "Q_17"
colnames(subsetQ_17.4_EC)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_EC)[1] <- "Q_17"
colnames(subsetQ_17.5_EC)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_EC)[1] <- "Q_17"
colnames(subsetQ_17.6_EC)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_EC)[1] <- "Q_17"
colnames(subsetQ_17.7_EC)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_EC)[1] <- "Q_17"
colnames(subsetQ_17.8_EC)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_EC)[1] <- "Q_17"
# colnames(subsetQ_17.9_EC)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_EC)[1] <- "Q_17"
# colnames(subsetQ_17.10_EC)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_EC)[1] <- "Q_17"
# colnames(subsetQ_17.11_EC)[2] <- "Q_17_freq"


Q17_EC <-bind_rows(subsetQ_17.1_EC,subsetQ_17.2_EC, subsetQ_17.3_EC, subsetQ_17.4_EC, subsetQ_17.5_EC, 
                   subsetQ_17.6_EC, subsetQ_17.7_EC, subsetQ_17.8_EC)
# , subsetQ_17.9_EC, subsetQ_17.10_EC,
#                    subsetQ_17.11_EC)
Q17_EC

###Join 11 tests Text can we write subsetQ_17.1_SKC:subsetQ_17.11_SKC
subsetQ_17.1_SKC
subsetQ_17.2_SKC
subsetQ_17.3_SKC
subsetQ_17.4_SKC
subsetQ_17.5_SKC
subsetQ_17.6_SKC
subsetQ_17.7_SKC
subsetQ_17.8_SKC
# subsetQ_17.9_SKC
# subsetQ_17.10_SKC
# subsetQ_17.11_SKC

#remane clm headings 
# can we write 
# colnames(subsetQ_17.1_SKC:subsetQ_17.11_SKC )[1] <- "Q_17"
# colnames(subsetQ_17.1_SKC:subsetQ_17.11_SKC )[2] <- "Q_17_freq"

colnames(subsetQ_17.1_SKC)[1] <- "Q_17"
colnames(subsetQ_17.1_SKC)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_SKC)[1] <- "Q_17"
colnames(subsetQ_17.2_SKC)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_SKC)[1] <- "Q_17"
colnames(subsetQ_17.3_SKC)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_SKC)[1] <- "Q_17"
colnames(subsetQ_17.4_SKC)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_SKC)[1] <- "Q_17"
colnames(subsetQ_17.5_SKC)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_SKC)[1] <- "Q_17"
colnames(subsetQ_17.6_SKC)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_SKC)[1] <- "Q_17"
colnames(subsetQ_17.7_SKC)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_SKC)[1] <- "Q_17"
colnames(subsetQ_17.8_SKC)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_SKC)[1] <- "Q_17"
# colnames(subsetQ_17.9_SKC)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_SKC)[1] <- "Q_17"
# colnames(subsetQ_17.10_SKC)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_SKC)[1] <- "Q_17"
# colnames(subsetQ_17.11_SKC)[2] <- "Q_17_freq"


Q17_SKC <-bind_rows(subsetQ_17.1_SKC,subsetQ_17.2_SKC, subsetQ_17.3_SKC, subsetQ_17.4_SKC, subsetQ_17.5_SKC, 
                   subsetQ_17.6_SKC, subsetQ_17.7_SKC, subsetQ_17.8_SKC)
# , subsetQ_17.9_SKC, subsetQ_17.10_SKC,
#                    subsetQ_17.11_SKC)
Q17_SKC

###Join 11 tests Text can we write subsetQ_17.1_SKC:subsetQ_17.11_SKC
subsetQ_17.1_SMC
subsetQ_17.2_SMC
subsetQ_17.3_SMC
subsetQ_17.4_SMC
subsetQ_17.5_SMC
subsetQ_17.6_SMC
subsetQ_17.7_SMC
subsetQ_17.8_SMC
# subsetQ_17.9_SMC
# subsetQ_17.10_SMC
# subsetQ_17.11_SMC

#remane clm headings 
# can we write 
# colnames(subsetQ_17.1_SMC:subsetQ_17.11_SMC)[1] <- "Q_17"
# colnames(subsetQ_17.1_SMC:subsetQ_17.11_SMC )[2] <- "Q_17_freq"

colnames(subsetQ_17.1_SMC)[1] <- "Q_17"
colnames(subsetQ_17.1_SMC)[2] <- "Q_17_freq"

colnames(subsetQ_17.2_SMC)[1] <- "Q_17"
colnames(subsetQ_17.2_SMC)[2] <- "Q_17_freq"

colnames(subsetQ_17.3_SMC)[1] <- "Q_17"
colnames(subsetQ_17.3_SMC)[2] <- "Q_17_freq"

colnames(subsetQ_17.4_SMC)[1] <- "Q_17"
colnames(subsetQ_17.4_SMC)[2] <- "Q_17_freq"

colnames(subsetQ_17.5_SMC)[1] <- "Q_17"
colnames(subsetQ_17.5_SMC)[2] <- "Q_17_freq" 

colnames(subsetQ_17.6_SMC)[1] <- "Q_17"
colnames(subsetQ_17.6_SMC)[2] <- "Q_17_freq"

colnames(subsetQ_17.7_SMC)[1] <- "Q_17"
colnames(subsetQ_17.7_SMC)[2] <- "Q_17_freq"

colnames(subsetQ_17.8_SMC)[1] <- "Q_17"
colnames(subsetQ_17.8_SMC)[2] <- "Q_17_freq"

# colnames(subsetQ_17.9_SMC)[1] <- "Q_17"
# colnames(subsetQ_17.9_SMC)[2] <- "Q_17_freq"
# 
# colnames(subsetQ_17.10_SMC)[1] <- "Q_17"
# colnames(subsetQ_17.10_SMC)[2] <- "Q_17_freq"     
# 
# colnames(subsetQ_17.11_SMC)[1] <- "Q_17"
# colnames(subsetQ_17.11_SMC)[2] <- "Q_17_freq"


Q17_SMC <-bind_rows(subsetQ_17.1_SMC,subsetQ_17.2_SMC, subsetQ_17.3_SMC, subsetQ_17.4_SMC, subsetQ_17.5_SMC, 
                    subsetQ_17.6_SMC, subsetQ_17.7_SMC, subsetQ_17.8_SMC)
# , subsetQ_17.9_SMC, subsetQ_17.10_SMC,
#                     subsetQ_17.11_SMC)
Q17_SMC

subsetQ17_pH<- Q17_pH %>%
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ17_Text <- Q17_Text %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_Al <- Q17_Al  %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsettQ17_Bor  <- Q17_Bor %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_CC <- Q17_CC %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_TED <- Q17_TED %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_TEE <- Q17_TEE %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_Cl <- Q17_Cl %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_EC <- Q17_EC %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_SKC <- Q17_SKC %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_SMC <- Q17_SMC %>% 
  filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_pH
subsetQ17_Text
subsetQ17_Al
subsettQ17_Bor
subsetQ17_CC
subsetQ17_TED
subsetQ17_TEE
subsetQ17_Cl
subsetQ17_EC
subsetQ17_SKC
subsetQ17_SMC

###join df with test
Q17_pH
Q17_Text
Q17_Al
Q17_Bor
Q17_CC
Q17_TED
Q17_TEE
Q17_Cl
Q17_EC
Q17_SKC
Q17_SMC


Q17_all_test <- bind_rows ( Q17_pH, Q17_Text, Q17_Al, Q17_Bor,  Q17_CC, Q17_TED,  Q17_TEE, Q17_Cl,
                              Q17_EC, Q17_SKC,  Q17_SMC)
                           
str(Q17_all_test) 

# filter out NA? no need as by asking for resposes to "Micronutrients" has automatically filtered out na#######
subsetQ17_All_agro_grower <- Q17_all_test %>% 
  # filter(!is.na(Q_17)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_All_agro_grower

# filter out NA in Q17_freq ######
subsetQ17_All_agro_grower <- Q17_all_test %>% 
  filter(!is.na(Q_17_freq)) %>%
  group_by(Resp_Group) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))

subsetQ17_All_agro_grower

Q17_all_test

subsetQ17_All_agro_grower <- Q17_all_test %>% 
  filter(!is.na(Q_17_freq)) %>%
  group_by(Resp_Group, Q_17) %>% 
  count(Q_17_freq) %>% 
  mutate(percent = round(
    (freq = n / sum(n)),2))


subsetQ17_All_agro_grower$Q_17_freq <- factor(subsetQ17_All_agro_grower$Q_17_freq,levels = c("0-5",  "5-10", "10-15", 
                                                                                             "15-20", "20-25",  "25-30", 
                                                                                             "greater than 30"))

subsetQ17_All_agro_grower$Q_17_freq

###{r Q17 data graphs, echo=FALSE}


ggplot(subsetQ17_All_agro_grower, aes (x = Q_17_freq, y = percent))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Resp_Group ~ Q_17)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil Micronutrient testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) +
  scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


ggplot(subsetQ17_All_agro_grower, aes (x = Q_17_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Resp_Group ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil Micronutrient testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) #+
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 


ggplot(subsetQ17_All_agro_grower, aes (x = Q_17_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  facet_wrap( Q_17 ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "",
       caption = "Q)  Which tests do you currently use for your soil Micronutrient testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) #+
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 



ggplot(subsetQ17_All_agro_grower, aes (x = Q_17_freq, y = n))+
  geom_col()+
  #geom_text(aes(label = percent), vjust = -1.0, hjust = 0.5)+
  #facet_wrap( Q_15 ~ .)+
  theme_classic()+
  labs(x= "Samples per paddock",
       y = "number of resp",
       title = "Frequency of test",
       subtitle = "Total of all tests and respondants",
       caption = "Q)  Which tests do you currently use for your soil Micronutrient testing?")+
  theme(axis.text.x=element_text(angle=90,hjust=1),
        plot.caption = element_text(size = 8)) 
#scale_y_continuous(labels = scales::percent_format(accuracy = 5L)) 

