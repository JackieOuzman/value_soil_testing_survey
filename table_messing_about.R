


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
