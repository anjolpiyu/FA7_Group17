############################################################
# FORMATIVE ASSESSMENT 7
# Probability and Probability Distributions
# Campus-Related Statistical Analysis
#
# Part 1: Exponential Distribution
############################################################


############################################################
# PART 1
# CAMPUS-RELATED ISSUES USING EXPONENTIAL DISTRIBUTION
# Elevator Waiting Time in FEUture Center Building
############################################################


# ----------------------------------------------------------
# 1. IMPORT THE DATA
# ----------------------------------------------------------

# Install the package first if necessary:
# install.packages("readxl")

library(readxl)

elevator_data <- read_excel(
  "Elevator Waiting Time Survey (Responses).xlsx"
)

# View the data
elevator_data

# Check the structure of the data
str(elevator_data)

# Extract the waiting-time variable
waiting_time <- as.numeric(
  elevator_data[[1]]
)

# Check the number of observations
length(waiting_time)


# ----------------------------------------------------------
# 2. BASIC SUMMARY OF THE DATA
# ----------------------------------------------------------

summary(waiting_time)

# Mean waiting time
mean_wait <- mean(waiting_time)

# Sample standard deviation
sd_wait <- sd(waiting_time)

# Variance
var_wait <- var(waiting_time)

# Minimum and maximum
min_wait <- min(waiting_time)
max_wait <- max(waiting_time)

mean_wait
sd_wait
var_wait
min_wait
max_wait


# ----------------------------------------------------------
# 3. ESTIMATE THE EXPONENTIAL RATE (lambda)
# ----------------------------------------------------------

# For an exponential distribution:
# E(X) = 1/lambda
#
# Therefore:
# lambda = 1 / mean

lambda <- 1 / mean_wait

lambda


# Theoretical exponential mean
theoretical_mean <- 1 / lambda

theoretical_mean


# Theoretical exponential variance
theoretical_variance <- 1 / lambda^2

theoretical_variance


# ----------------------------------------------------------
# 4. EXPONENTIAL PDF
# ----------------------------------------------------------

# Create a sequence of waiting times
x <- seq(
  0,
  max(waiting_time) + 2,
  length.out = 500
)

# Calculate the exponential PDF
pdf_values <- dexp(
  x,
  rate = lambda
)

# View first few PDF values
head(pdf_values)


# ----------------------------------------------------------
# 5. HISTOGRAM WITH EXPONENTIAL PDF
# ----------------------------------------------------------

hist(
  waiting_time,
  freq = FALSE,
  main = "Elevator Waiting Time with Exponential PDF",
  xlab = "Waiting Time (minutes)",
  ylab = "Density",
  breaks = seq(
    min(waiting_time) - 0.5,
    max(waiting_time) + 0.5,
    by = 1
  )
)

# Add exponential probability density curve
lines(
  x,
  pdf_values,
  lwd = 2
)


# ----------------------------------------------------------
# 6. EXPONENTIAL PROBABILITIES
# ----------------------------------------------------------

# P(X <= 3)
prob_within_3 <- pexp(
  3,
  rate = lambda
)

# P(X <= 5)
prob_within_5 <- pexp(
  5,
  rate = lambda
)

# P(X > 5)
prob_after_5 <- 1 - pexp(
  5,
  rate = lambda
)

# P(X > 10)
prob_after_10 <- 1 - pexp(
  10,
  rate = lambda
)

prob_within_3
prob_within_5
prob_after_5
prob_after_10


# ----------------------------------------------------------
# 7. EXPONENTIAL QUANTILE
# ----------------------------------------------------------

# Waiting time corresponding to the 95th percentile

q95_wait <- qexp(
  0.95,
  rate = lambda
)

q95_wait


# ----------------------------------------------------------
# 8. COMPARE OBSERVED AND THEORETICAL MEAN
# ----------------------------------------------------------

cat("Observed mean waiting time:",
    mean_wait, "minutes\n")

cat("Estimated lambda:",
    lambda, "per minute\n")

cat("Theoretical exponential mean:",
    theoretical_mean, "minutes\n")


# ----------------------------------------------------------
# 9. PART 1 SUMMARY
# ----------------------------------------------------------

part1_summary <- data.frame(
  Statistic = c(
    "Number of observations",
    "Observed mean",
    "Sample standard deviation",
    "Estimated lambda",
    "Theoretical mean",
    "Theoretical variance",
    "P(X <= 3)",
    "P(X <= 5)",
    "P(X > 5)",
    "P(X > 10)",
    "95th percentile"
  ),
  
  Value = c(
    length(waiting_time),
    mean_wait,
    sd_wait,
    lambda,
    theoretical_mean,
    theoretical_variance,
    prob_within_3,
    prob_within_5,
    prob_after_5,
    prob_after_10,
    q95_wait
  )
)

part1_summary

############################################################
# END OF FA7 ANALYSIS
############################################################