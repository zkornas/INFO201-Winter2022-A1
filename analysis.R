# Overview ----------------------------------------------------------------
# Updated: January 15, 2022 (David Hendry)
#
# Assignment 1
# In this assignment you will analyze data from:
#    Count Love: Protests for a kinder world
#    https://countlove.org
#
## 1.0 Introduction ----
# Before proceeding, as with any data science project, you should explore
# countlove.org and consider such questions as:
#    1. Goals. What are the goals of Count Love? Who is working on this 
#           project? What does Count Love want to achieve?
#    2. Human values. What values seem to be informing the design of
#           Count Love? Where do these values come from?
#    3. Data sources. Where does the data come from? Is the data credible?
#           What assumptions do the developers make about the data? What
#           data is missing?
#    3. Direct stakeholders. Who might use the data collected at Count
#           Love? What skills and motivations would be needed? How is this
#           this project funded? Who, if anyone, makes money?
#    4. Indirect stakeholders. Who, if anyone, might be impacted by this
#           data but is unaware of Count Love?
#    5. Benefits and harms. What are the potential benefits and harms of
#           Count Love?
#
# Data Feminism. As you consider these five dimensions, draw upon your
# reading from D'lgnazio & Klein (2020), and consider how Count Love
# uses and resists "power" to achieve its goals.
#
### Note: Working Definitions:
#    Human Value.  (noun) "What is important to people in their lives,
#                  with a focus on ethics and morality." Example human
#                  values: privacy, safety, intimacy, interdependence,
#                  calmness, dignity, justice, environmental sustainability,
#                  system performance, system reliability, usability (ease of
#                  use), and many more.
#
#    Direct        (noun) "A person who directly uses a tool or technology,
#    stakeholder.  including data and data visualizations." In human-centered
#                  design and design thinking, direct stakeholders are often
#                  called "users."
#
#    Indirect      (noun) "A person who is impacted by a tool or technology
#    stakeholder.  but who never actually uses it." Example: In a court
#                  of law, a judge might use an AI system that predicts
#                  if a convicted defendant is likely to repeat their
#                  crime in the future. This tool might be used by a judge
#                  to make a sentencing decision. The defendant, however,
#                  would NOT interact with such a system. Here, the defendant
#                  would be an indirect stakeholder, whereas the judge and the
#                  AI system engineers would be direct stakeholders.
#
# These definitions come from the Envisioning Cards (Friedman, Nathan, Kane,
# & Lin (2011) and value sensitive design (vsdesign.org).
#
## 2.0 About Social Movements ----
# Before starting any data science project, it is important to have
# _domain familiarity_, that is, to know something about the topic. As
# preparation for this assignment, please find and read *two* articles
# about protests in the U.S. Keep track of the URLs and titles of 
# the articles.
#
# See (Article #1) and (Article #2) in README.md 
#
## 3.0 About the Data ----
# In this assignment, you will download data formatted in a CVS file
# from Count Love.
#
# A CVS file, as you may know, refers to a text file where each row contains
# values that are separated by commas. The rows in the file are sometimes
# called records or observations. And the values are sometimes called
# attributes or features.
#
# CVS files are a very common format for data exchange. You can, for example,
# create and open CVS files with Microsoft Excel. See section 10.3 (Freedman
# & Ross, 2019).
#
## 4.0 Assignment Prompts ----
# This assignment comprises two kinds of prompts:
#
#    1. Coding prompts. Write the necessary R code to compute an answer.
#    For grading, it is VERY IMPORTANT that you assign results to the variable
#    names in the `backtics`.
#
#    2. Reflection prompts. Critically think about the prompt and write a brief
#    response (1-3 sentences or a short paragraph, depending on the prompt).
#    Your responses should be written in the README.md file.
#
## 5.0 Grading guidelines ----
#
#   1. The coding prompts are generally worth 1-3 points each, depending on
#      difficulty. As always, seek to write *correct* code and code that
#      is *easy* to understand. Total points: 73 points.
#
#   2. The reflective prompts are generally worth 2 points. 
#      Total points: 24 points.
#      
#         0 points: Not completed or poorly done.
#         1 points: Completed and satisfactory.
#         2 points: A concise, clear, thoughtful response, without spelling or
#                   grammatical errors, and if relevant: reporting specific 
#                   results from your data analyses; including citations; drawing
#                   on Data Feminism (D'lgnazio & Klein, 2020); and drawing on
#                   concepts in data science.
#
## 6.0 Examples ----
### 6.1 Example: Coding prompt ----
# Use the function sum() to compute the sum of three integers. `sum_numbers`
sum_numbers <- sum(10,1,-2.5)

# Grading: This answer would get 0.5 / 1 point b/c -2.5 is NOT an integer,
# but the sum() function is correct, there are three numbers, and the
# variable name is correct.

### 6.2 Example: Reflection Prompt ----
# Reflection: Look at the US map at https://countlove.org/. What do you notice
# about the distributions of protests?
#
# Grading:
# 0 point answer: "Protests are shown with blue dots."
# 1 point answer: "There are more protests in the Eastern US than anywhere else."
# 2 point answer: "There seem to be more protests in the Eastern
#                 US, perhaps because more people live there, or
#                 because more people are politically or socially
#                 active in the Eastern US, or because it has been
#                 easier to collect data in cities and towns
#                 in the Eastern US than elsewhere."
#
# Parts 1-8 ----
# You are now ready to work on Parts 1-8. As always, if you have questions,
# post on Teams or ask the Instructor or your Teaching Assistant.

## Part 1: Set up ----------------------------------------------------------
# In this section, you will load the necessary packages and data.

# (1.a) Load the `stringr` package, which you'll use later.
install.packages("stringr")
library("stringr")

# (1.b) Load the data from https://countlove.org/data/data.csv
# into a variable called `protests`
protests <- read.csv("https://countlove.org/data/data.csv")

# Note: Use View() to open the data set and examine the data.
# Explore the dataset. What information is available?
View(protests)

# (1.c) Use an R function to determine how many protests are in the dataset? `num_protests`
# Answer: 38097
num_protests <- nrow(protests)
print(num_protests)

# (1.d) Use an R function to determine how many how many values (also known
# as attributes or features) have been recorded for each protest? `num_features`
#Answer: 8
num_features <- ncol(protests)
print(num_features)

# (R.1a) Reflection: In your own words, what is Count Love?



## Part 2: Attendees ------------------------------------------------------
# In this part, you will explore the number of people who participated
# in the protests.

# (2.a) Extract the `Attendees` column into a variable called `num_attendees`
num_attendees <- protests$Attendees

# Note: For these prompts you will need to consider missing values. In R,
# missing values are denoted by the symbol NA, which means Not Available.

# (2.b) What is the lowest number of attendees? `min_attendees`
# Answer: 0
min_attendees <- min(num_attendees, na.rm = TRUE)
print(min_attendees)

# (2.c) What is the highest number of attendees? `max_attendees`
# Answer: 725000
max_attendees <- max(num_attendees, na.rm = TRUE)
print(max_attendees)

# (2.d) What is the mean number of attendees? `mean_attendees`
# Answer: 643.88
mean_attendees <- mean(num_attendees, na.rm = TRUE)
print(mean_attendees)

# (2.e) What is the median number of attendees? `median_attendees`
# Answer: 100
median_attendees <- median(num_attendees, na.rm = TRUE)
print(median_attendees)

# (2.f) What is the difference between the mean and median number of attendees?
# `mean_median_diff`
# Answer: 543.88
mean_median_diff <- mean_attendees - median_attendees
print(median_attendees)

# (R.2a) Reflection: What does the difference between the mean and the median
# tell you about the *distribution* of the data? (Note: If you're unfamiliar with
# working with distributions, ask your TA for clarification.)

# (2.g) To further assess the distribution of values, create a boxplot of the
# number of attendees using the `boxplot()` function. Store the plot in a
# variable called `attendees_distribution`. (Note: Later in the course, we
# will use more refined plotting methods.)
attendees_distribution <- boxplot(num_attendees)

# (2.h) Create another boxplot of the *log* of the number of attendees.
# Store the plot in a variable `log_attendees_distribution`. (Note: You will
# likely see see a warning in the console, which is expected)
log_attendees_distribution <- boxplot(log(num_attendees))

## Part 3: Locations ------------------------------------------------------
# In this part, you will explore where the protests happened.

# (3.a) Extract the `Location` column into a variable called `locations`
locations <- protests$Location

# (3.b) How many *unique* locations are in the dataset? `num_locations`
# Answer: 10037
num_locations <- length(unique(locations))
print(num_locations)

# (3.c) How many protests occurred in Washington State? `num_in_wa`
# (Hint: Use a function from the stringr package to detect the letters "WA")
# Answer: 1375
num_in_wa <- sum(str_count(locations, "WA"))
print(num_in_wa)

# (3.d) What proportion of protests occurred in Washington? `prop_in_wa`
# Answer: 0.03609
prop_in_wa <- (num_in_wa / length(locations))
print(prop_in_wa)

# (R.3a) Reflection: Does the number of protests in Washington surprise you?
# Why or why not?

# (3.e) Write a function `count_in_location()` that accepts one parameter:
#     `location` - which is the possible location of a protest
# The function should return exactly this sentence:
#    "There were N protests in LOCATION."
# If the `location` is not in the dataset, the function should return
#     "Location (LOCATION) not found."
# In these two sentences:
#     N is the number of protests that occurred at that location; and
#     LOCATION is the function's parameter.
#
# Notes:
#    1. Pay careful attention to spaces and punctuation in the sentences.
#    2. You should count the number of locations that *match* the `location'
#       parameter. For example, `Seattle` should be a match for "Seattle, WA".
count_in_location <- function(LOCATION){
  N <- sum(str_detect(locations, LOCATION))
  if(N > 1){
    result <-  paste("There were", N, "protests in", LOCATION)
  } else {
    result <- paste(LOCATION, "not found")
  }
  result
}

# (3.f) Use your function above to compute the number of protests in "Washington, DC"
# `dc_summary`
# Answer: 535
dc_summary <- count_in_location("Washington, DC")
print(dc_summary)

# (3.g) Use your function above to compute the number of protests in "Minneapolis"
# `minneapolis_summary`
# Answer: 210
minneapolis_summary <- count_in_location("Minneapolis")
print(minneapolis_summary)

# (3.h) Use your function above to demonstrate that it works correctly for a
# location that is not in the data set. `missing_summary`
missing_summary <- count_in_location("missing_summary")
print(missing_summary)

# (3.i) Create a new vector `states` which is the last two characters of each
# value in the `locations` vector. Hint: You may want to again use a function
# from the `stringr` package
states <- str_sub(locations, -2, -1)

# (3.j) Create a vector of the unique states in your dataset. `uniq_states`
uniq_states <- unique(toupper(states))

# (3.k) Create a summary sentence for each state by passing your `uniq_states`
# variable and `count_in_location` variables to the `sapply()` function.
# Store your results in `state_summary`
state_summary <- sapply(uniq_states, count_in_location)
print(state_summary)

# (R.3b) Reflection: This is AMAZING! You have applied your function to an
# entire vector *at once* with `sapply()`. Do you think this is powerful?
# Why or why not? Briefly comment.

# (3.l) Create a summary table by passing your `states` variable to the
# `table()` function and by storing the result in the variable `state_table`.
state_table <- table(states)

# Suggestion: Use the View() function to more easily examine the table.
View(state_table)

# (R.3c) Reflection: Looking at the `state_table` variable, what data quality issues
# do you notice? How would you change your analysis? (Note: There is no need
# to actually change your analysis)?

# (3.m) What was the maximum number of protests in a state? `max_in_state`
# (Hint: Use the `state_table` variable.)
# Answer: 4439
max_in_state <- max(state_table)
print(max_in_state)

## Part 4: Dates ----------------------------------------------------------
# In this part, you will exploring *when* protests happened.

# (4a) Extract the `Date` column into a variable called `dates` by passing the
# column to the `as.Date()` function. (Note: The `as.Date()` function will
# process the values as dates, which are *fortunately* already in an optimal
# format for parsing.)
dates <- as.Date(protests[["Date"]])

# (4.b) What is the most recent date in the dataset? `most_recent`
# Most recent date: 2021-01-31
most_recent <- max(dates)
print(most_recent)

# (4.c) What is the earliest date in the dataset? `earliest`
# Earliest date: 2017-01-15
earliest <- min(dates)
print(earliest)

# (4.d) What is the length of the timespan of the dataset? `time_span`
# (Hint: R can do math with dates pretty well by default!)
# Time span is 1477 days
time_span <- most_recent - earliest
print(time_span)

# (4.e) Create a vector of the dates that are in 2020. `in_2020`
in_2020 <- dates[dates >= "2020-01-01" & dates <= "2020-12-31"]

# (4.f) Create a vector of the dates that are in 2019. `in_2019`
in_2019 <- dates[dates >= "2019-01-01" & dates <= "2019-12-31"]

# (4.g) What is the ratio of the number of protests in 2020 compared to 2019?
# `ratio_2020_2019`
# The ratio is 2.33
length_2020 <- length(in_2020)
length_2019 <- length(in_2019)
ratio_2020_2019 <- (length_2020 / length_2019)
print(ratio_2020_2019)

# (R.4a) Reflection: Does the change in the number of protests from 2019 to 2020
# surprise you? Why or why not?

# (4.h) Write a function `count_on_date()` that accepts the parameter `date`,
# and returns the sentence:
#    "There were N protests on DATE." - where
#        N is the number of protests on that date; and
#        DATE is the date provided.
count_on_date <- function(DATE){
  N <- sum(str_detect(dates, DATE))
  if(N > 1){
    result <-  paste("There were", N, "protests on", DATE)
  } else {
    result <- paste(DATE, "not found")
  }
  result
}
# (4.i) Using your function you just wrote, how many protests were there on
# May 24th, 2020? `num_on_may_24`
# There were 8 protests on 2020-05-24
num_on_may_24 <- count_on_date("2020-05-24")
print(num_on_may_24)

# (4.j) Using your function you just wrote, how many protests were there on
# May 31th, 2020? `num_on_may_31`
# There were 487 protests on 2020-05-31
num_on_may_31 <- count_on_date("2020-05-31")
print(num_on_may_31)

# NOTE: For more on this timeline, see:
# https://www.nytimes.com/article/george-floyd-protests-timeline.html

# (4.k) How many protests occurred each month in 2020? `by_month_table`
# Hint: Use the `months()` function, your `in_2020` dates, and the `table()`
# Function. If you like, you can do this in multiple steps.
months_2020 <- (sapply(in_2020, months))
by_month_table <- table(months_2020)
View(by_month_table)

# (4.l) As a comparison, let's assess the change between July 2019 and July 2020.
# What is the *difference* in the number of protests between July 2020 and
# July 2019? You'll want to do this in multiple steps as you see fit, though
# your answer should be stored in the variable `change_july_protests`.
# The difference is 1271 protests
months_2019 <- (sapply(in_2019, months))
july_19 <- str_count(months_2019, "July")
july_20 <- str_count(months_2020, "July")
count_july_2019 <- length(july_19[july_19])
count_july_2020 <- length(july_20[july_20])
change_july_protests <- count_july_2020 - count_july_2019
print(change_july_protests)

## Part 5: Protest Purpose ------------------------------------------------
# In this section, you will explore *why* the protests happened.

# (5.a) Extract the `Event..legacy..see.tags.` column into a variable called `purpose`
purpose <- protests$Event..legacy..see.tags.

# (5.b) How many different purposes are listed in the dataset? `num_purposes`
# 895 purposes
num_purposes <- length(unique(purpose))
print(num_purposes)

# That's quite a few! Use View() to examine the `purpose` vector. You will notice
# a common pattern for each purpose, formatted as:
#    SOME_PURPOSE (additional_detail)
#
# (5.c) To get a higher level summary, create a variable `high_level_purpose` by
# extracting *everything before the first parenthesis* in each value
# in the vector. For example, from "Civil Rights (Black Women's March)"
# you would extract "Civil Rights". Note: You will *need* to remove the space
# before the first parenthesis. Hint: To solve this problem, you will need
# search for an R programming approach with, for example, google search.
# You will need to do some thoughtful trial and error. Be patient!
high_level_purpose <- gsub("\\(.*", "", purpose)

# (5.d) How many "high level" purposes have you identified? `num_high_level`
# There are 25 high level purposes
num_high_level <- length(unique(high_level_purpose))
print(num_high_level)

# (5.e) Create a table that counts the number of protests for each high level purpose
# `high_level_table`
high_level_table <- table(high_level_purpose)

# (R.5a) Reflection: Use View() to examine your `high_level_table` variable. What
# picture does this paint of the U.S.?
View(high_level_table)

## Part 6: Independent Exploration ----------------------------------------
#
# (6.a) Finally, write your own function that allows you to  ask
# questions of the dataset. For example, in the above sections, you wrote
# functions to ask the same question about different months, or locations.
# Can you develop code to answer new questions?
#
# (6.b) After wrting your function, demonstrate that it works, providing comments
# to help the grader understand the purpose of the function and to check 
# that it implemented correctly. If your function has limitations (for example, 
# it fails for some records in the dataset), be sure to demonstrate where it 
# fails and, if you can, give an explanation. 

# Create a function 'count_source' that takes in a paremter (SOURCE)
# and returns how many times that source was cited in the protest data
source_data <- protests$Source
source_remove_http <- gsub("http://", "", source_data)
source <- gsub("/.*", "", source_remove_http)

source_table <- table(source)
View(source_table)

count_source <- function(SOURCE){
  N <- sum(str_count(source, SOURCE))
  result <- paste(SOURCE, "was cited ", N, " times.")
  result
}

# How many times was "www.coloradoan.com" cited?
print(count_source("www.coloradoan.com"))

#How many times was "www.courier-journal.com" cited?
print(count_source("www.courier-journal.com"))

## Part 7: Critical Thinking About Data  ----------------------------------
#
# (R7.a) Reflection: Recall that in the introduction, there were five dimensions for
# critically thinking about the Count Love dataset and website. They were: (1) Goals;
# (2) Human values; (3) Data sources; (4) Direct stakeholders; (5) Indirect
# stakeholders; and (5) Benefits and harms.
#
# After having worked through Parts 1-6, please use these dimensions to critically
# reflect on the Count Love data set. As you do so, consider how Count Love
# uses and resists "power" to achieve its goals (D'lgnazio & Klein, 2020, chap. 1).
#
## Part 8: Your Learning  -------------------------------------------------
# (R.8a) Reflection. What did you find most challenging? What was 
# the most interesting thing that you learned? What types of analysis do 
# you wish you were able to do with the dataset, but currently don't 
# have the technical skills? Write a brief repsonse that enagages these 
# or similar questions.
