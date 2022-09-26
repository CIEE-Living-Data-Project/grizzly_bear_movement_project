######################################################
############Analyzing grizzly bear data###############
######################################################
####################Olivia Rahn#######################
#################September 26 2022####################


#going to do some basic analyses of grizzly bear dataset

#loading necessary packages
library(ggplot2)

#loading dataset
grizzly_bear_movement <- read.csv("~/Data/downloaded/gbears_used_available_final.csv") #movement data

#going to run a quick analysis to answer one of my questions proposed in the outline of my project 
#does distance to a stream impact the likelihood of a bear being in a motorized or non-motorized recreational area

#doing motorized areas first
motorized_prob_model <- lm(prob_motorised ~ d_stream, data = grizzly_bear_movement)
summary(motorized_prob_model)
#distance from a stream has a significant effect for non-motorized

#non-motorized areas
non_motorized_prob_model <- lm(prob_non_motorised ~ d_stream, data = grizzly_bear_movement)
summary(non_motorized_prob_model)
#distance from a stream has a significant effect for motorized

#visalize
non_motorized_plot <- ggplot(grizzly_bear_movement, aes(d_stream,prob_non_motorised)) +
  geom_point()+
  stat_smooth(method = "lm")

motorized_plot <- ggplot(grizzly_bear_movement, aes(d_stream,prob_motorised)) +
  geom_point()+
  stat_smooth(method = "lm")

