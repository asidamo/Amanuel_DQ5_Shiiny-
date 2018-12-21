library(shinydashboard)
library(tidyverse)
library(ggplot2)

# read data 

data<-readRDS("prescription_by_state.RDS")

States<-as.data.frame(data)

States<-States%>%
        select(state)%>%
        unique()
         
         
States<-sort(States$state)
         


