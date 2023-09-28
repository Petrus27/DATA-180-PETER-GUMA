#install.packages("tidyverse")

library(MASS)
library(dplyr)
library(tidyverse)
library(tibble)

### Data Wrangling. 
ls(Cars93)
Cars93_Ex1<-select(Cars93,Type,EngineSize,DriveTrain,MPG.city)

head(Cars93_Ex1)

table(Cars93$Type)

Cars93_Ex2<-filter(Cars93, Type=="Small")
head(Cars93_Ex2)


Cars93_Ex3<-select(filter(Cars93, Type=="Small"),Model,EngineSize,Horsepower,MPG.highway)
head(Cars93_Ex3)

Cars93_Ex4<-select(filter(Cars93, Horsepower>150),Model,EngineSize,Horsepower,MPG.highway)
head(Cars93_Ex4)


Cars93_Ex7<-select(filter(Cars93, Type %in% c("Sporty","Compact") & Horsepower >=120),Model,Type,EngineSize,Cylinders,Horsepower,MPG.highway)

Cars93_Ex7<-select(filter(Cars93, Type %in% c("Sporty","Compact") & Horsepower >=120),
            Model,Type,EngineSize,Cylinders,Horsepower,MPG.highway)
head(Cars93_Ex7)

# Mutate function.
Cars93_Ex9<-select(mutate(Cars93,HPpLiter=Horsepower/EngineSize),Model,Type,EngineSize,Cylinders,Horsepower,MPG.highway,HPpLiter)


# Equivalent pipeline
Cars93_Ex9<-Cars93 %>%mutate(HPpLiter=Horsepower/EngineSize) %>%select(Model,Type,EngineSize,Cylinders,Horsepower,MPG.highway,HPpLiter)

#Using the arrange function to sort your dataframe
Cars93_Ex10<-arrange(Cars93_Ex9,Cylinders,desc(Horsepower))
head(Cars93_Ex10)


#Rename function
Cars93_Ex11<-rename(Cars93_Ex10,HP=Horsepower,MPG_Highway=MPG.highway)
head(Cars93_Ex11)

#Using more of the mutate function. 
Cars93_Ex12<-mutate(Cars93_Ex11,HPpLiter=round(HPpLiter,1))
head(Cars93_Ex12)


# Mutate using an ifelse condition

Cars93_Ex13<-mutate(Cars93_Ex12,Performance=ifelse(HPpLiter>=65,"High","Regular"))
head(Cars93_Ex13)

Cars93_Ex14<-Cars93_Ex13 %>%mutate(Performance=ifelse(HPpLiter>=65,"High",ifelse(HPpLiter>=55,"Regular","Low")))
head(Cars93_Ex14)

### Using mammals data from the MASS library
head(mammals)
has_rownames(mammals)

mammals_rn<-rownames_to_column(mammals, "Mammal")
has_rownames(mammals_rn)

head(mammals_rn)

head(mammals_rn, 5)

mammals_2<-column_to_rownames(mammals_rn,"Mammal")
head(mammals_2, 5)

#Summarize function
Engine_Summary<-Cars93_Ex14 %>%group_by(Type) %>%summarize(Num=n(),Min_Size=min(EngineSize),Max_Size=max(EngineSize),Ave_HP=mean(HP),
               Median_MPG_HWY=median(MPG_Highway),Num_High_Performance=sum(Performance=="High"))

Engine_Summary<-data.frame(Engine_Summary)
Engine_Summary


Engine_Summary_2<-Cars93_Ex14 %>%group_by(Cylinders) %>%
  summarise(Num=n(),Min_Size=min(EngineSize),Max_Size=max(EngineSize),Ave_HP=mean(HP),
               Median_MPG_HWY=median(MPG_Highway),Num_High_Performance=sum(Performance=="High"))

Engine_Summary_2<-data.frame(Engine_Summary_2)
Engine_Summary_2

