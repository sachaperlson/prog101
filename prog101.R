##########################################################################
## Driver: (Sacha Perlson) (GitHub Handle)                                       ##
## Navigator: (Name) (GitHub Handle)                                    ##
## Date: (2025-14-25)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
#Kenai Fjords National Park

# How was temperature monitored?
#temp loggers where placed on each site and recorded the temperature every 20,30, or 60 minutes
#Temperatures were averaged within five time periods relating to mussel life history

# What's the difference between absolute temperature and temperature anomaly?
#Absolute temperature gives air temperature metrics and temperature anomaly are water temperatures

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?
#6 vectors
Kefj_

# How long are they?
# 2187966
?kefj

# What do they represent?
#temp- temperature in C
#site- name of the site
#datetime- date and time of the temp record
#tidelevel- predicted tide level
#exposure- type of temp reading (air, transition, water, air)
#season- late winter, spring, summer, fall, early winter

# Link to sketch
https://docs.google.com/document/d/1gSwifdjHEOOg74Fd3sBPdtOYEZjByG8h1ESySM_GxgY/edit?tab=t.0


kefj_Harris_datetime <- kefj_datetime[kefj_site == "Harris"]

kefj_Harris_interval <- kefj_Harris_datetime[2:length(kefj_Harris_datetime)] - kefj_Harris_datetime[1:length(kefj_Harris_datetime)-1]


# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?

# Link to sketch

# Plot the hottest day

hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
kefj_datetime >= hotday_start &
kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime,hotday_temperature, hotday_exposure)

# Repeat for the coldest day
coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[hottest_idx]
coldday_start <- as.POSIXct("2013-01-27 00:00", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-27 23:59", tz = "Etc/GMT+8")
coldday_idx <- kefj_site == coldest_site &
  kefj_datetime >= coldday_start &
  kefj_datetime <= coldday_end
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temperature <- kefj_temperature[coldday_idx]
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime,coldday_temperature, coldday_exposure)


# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?
#I notice that the air and air/transition exposure is located near the highest and lowest spike of the graph and the graphs both have a huge spike within them. The coldest day goes down and the hottest graph goes up.

# How did Traiger et al. define extreme temperature exposure?
#air temperature exposure variables (cold air exposure in late winter, spring, and early winter, warm air exposure in spring, summer, and fall)

# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.

# Compare your answer to the visualization you made. Does it look right to you?

# Repeat this process for extreme cold exposure on the coldest day.


# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
