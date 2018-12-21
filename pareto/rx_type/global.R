library(tidyverse)
library(shinydashboard)

# load opioids prescription data
opioids_per_rx<-readRDS('opioids_per_rx.RDS')
data<-opioids_per_rx
# name rx as dataframe

drugName <- as.data.frame(data)%>% 
              select(rx)%>%
                unique()
                
drugName <- sort(drugName$rx)
#colnames(rx)<-c('drug_name')


