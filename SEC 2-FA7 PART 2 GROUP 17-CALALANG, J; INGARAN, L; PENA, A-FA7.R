############################################################
# FORMATIVE ASSESSMENT 7
# Probability and Probability Distributions
# Campus-Related Statistical Analysis
#
# Part 2: Normal Distribution
############################################################


############################################################
# PART 2
# APPLYING NORMAL DISTRIBUTION ON CAMPUS
# Nursing Students' Midterms Sleep Duration
############################################################


# ----------------------------------------------------------
# 1. IMPORT THE DATA
# ----------------------------------------------------------

install.packages("readxl")
library(readxl)
sleep_data <- read_excel(
  "Nursing Students’ Midterms Sleep Duration Survey (Responses).xlsx"
)

# View data
sleep_data

# Check structure
str(sleep_data)

# Extract sleep-duration variable
sleep_hours <- as.numeric(
  sleep_data[[2]]
)

# Remove missing values if there are any
sleep_hours <- na.omit(sleep_hours)

# Number of observations
length(sleep_hours)


# ----------------------------------------------------------
# 2. BASIC SUMMARY STATISTICS
# ----------------------------------------------------------

summary(sleep_hours)

# Mean
mu <- mean(sleep_hours)

# Sample standard deviation
sigma <- sd(sleep_hours)

# Variance
sleep_variance <- var(sleep_hours)

# Median
sleep_median <- median(sleep_hours)

# Mode
sleep_mode <- as.numeric(
  names(
    sort(
      table(sleep_hours),
      decreasing = TRUE
    )[1]
  )
)

# Minimum
sleep_min <- min(sleep_hours)

# Maximum
sleep_max <- max(sleep_hours)

mu
sigma
sleep_variance
sleep_median
sleep_mode
sleep_min
sleep_max


# ----------------------------------------------------------
# 3. FREQUENCY DISTRIBUTION
# ----------------------------------------------------------

frequency_table <- table(sleep_hours)

frequency_table


# Convert frequency table into a data frame
frequency_distribution <- data.frame(
  Sleep_Hours = as.numeric(names(frequency_table)),
  Frequency = as.numeric(frequency_table)
)

frequency_distribution


# ----------------------------------------------------------
# 4. HISTOGRAM OF SLEEP DURATION
# ----------------------------------------------------------

hist(
  sleep_hours,
  freq = FALSE,
  main = "Nursing Students' Midterms Sleep Duration",
  xlab = "Hours of Sleep per Night",
  ylab = "Density",
  breaks = seq(
    min(sleep_hours) - 0.5,
    max(sleep_hours) + 0.5,
    by = 1
  )
)


# ----------------------------------------------------------
# 5. ADD NORMAL DISTRIBUTION CURVE
# ----------------------------------------------------------

x_normal <- seq(
  min(sleep_hours) - 1,
  max(sleep_hours) + 1,
  length.out = 500
)

normal_curve <- dnorm(
  x_normal,
  mean = mu,
  sd = sigma
)

lines(
  x_normal,
  normal_curve,
  lwd = 2
)


# ----------------------------------------------------------
# 6. NORMAL DISTRIBUTION CURVE BY ITSELF
# ----------------------------------------------------------

curve(
  dnorm(
    x,
    mean = mu,
    sd = sigma
  ),
  from = mu - 4 * sigma,
  to = mu + 4 * sigma,
  main = "Normal Distribution of Nursing Students' Sleep",
  xlab = "Hours of Sleep",
  ylab = "Density"
)


# Add vertical line at the mean
abline(
  v = mu,
  lwd = 2
)


# ----------------------------------------------------------
# 7. CALCULATE 1-SIGMA INTERVAL
# ----------------------------------------------------------

lower_1sigma <- mu - sigma
upper_1sigma <- mu + sigma

within_1sigma <- sum(
  sleep_hours >= lower_1sigma &
    sleep_hours <= upper_1sigma
)

percent_1sigma <- (
  within_1sigma / length(sleep_hours)
) * 100

lower_1sigma
upper_1sigma
within_1sigma
percent_1sigma


# ----------------------------------------------------------
# 8. CALCULATE 2-SIGMA INTERVAL
# ----------------------------------------------------------

lower_2sigma <- mu - 2 * sigma
upper_2sigma <- mu + 2 * sigma

within_2sigma <- sum(
  sleep_hours >= lower_2sigma &
    sleep_hours <= upper_2sigma
)

percent_2sigma <- (
  within_2sigma / length(sleep_hours)
) * 100

lower_2sigma
upper_2sigma
within_2sigma
percent_2sigma


# ----------------------------------------------------------
# 9. CALCULATE 3-SIGMA INTERVAL
# ----------------------------------------------------------

lower_3sigma <- mu - 3 * sigma
upper_3sigma <- mu + 3 * sigma

within_3sigma <- sum(
  sleep_hours >= lower_3sigma &
    sleep_hours <= upper_3sigma
)

percent_3sigma <- (
  within_3sigma / length(sleep_hours)
) * 100

lower_3sigma
upper_3sigma
within_3sigma
percent_3sigma


# ----------------------------------------------------------
# 10. THEORETICAL NORMAL DISTRIBUTION PERCENTAGES
# ----------------------------------------------------------

# These are the theoretical percentages for a normal distribution.

theoretical_1sigma <- pnorm(
  mu + sigma,
  mean = mu,
  sd = sigma
) -
  pnorm(
    mu - sigma,
    mean = mu,
    sd = sigma
  )

theoretical_2sigma <- pnorm(
  mu + 2 * sigma,
  mean = mu,
  sd = sigma
) -
  pnorm(
    mu - 2 * sigma,
    mean = mu,
    sd = sigma
  )

theoretical_3sigma <- pnorm(
  mu + 3 * sigma,
  mean = mu,
  sd = sigma
) -
  pnorm(
    mu - 3 * sigma,
    mean = mu,
    sd = sigma
  )

theoretical_1sigma
theoretical_2sigma
theoretical_3sigma


# ----------------------------------------------------------
# 11. STANDARDIZE THE DATA
# ----------------------------------------------------------

z_scores <- (
  sleep_hours - mu
) / sigma

head(z_scores)


# ----------------------------------------------------------
# 12. CHECK FOR OUTLIERS USING IQR
# ----------------------------------------------------------

Q1 <- quantile(
  sleep_hours,
  0.25
)

Q3 <- quantile(
  sleep_hours,
  0.75
)

IQR_value <- IQR(
  sleep_hours
)

lower_fence <- Q1 - 1.5 * IQR_value
upper_fence <- Q3 + 1.5 * IQR_value

outliers <- sleep_hours[
  sleep_hours < lower_fence |
    sleep_hours > upper_fence
]

Q1
Q3
IQR_value
lower_fence
upper_fence
outliers


# ----------------------------------------------------------
# 13. BOXPLOT
# ----------------------------------------------------------

boxplot(
  sleep_hours,
  main = "Boxplot of Nursing Students' Sleep Duration",
  ylab = "Hours of Sleep"
)


# ----------------------------------------------------------
# 14. PART 2 SUMMARY TABLE
# ----------------------------------------------------------

part2_summary <- data.frame(
  
  Statistic = c(
    "Number of observations",
    "Mean",
    "Median",
    "Mode",
    "Sample standard deviation",
    "Variance",
    "Minimum",
    "Maximum",
    "Within 1 SD",
    "Within 2 SD",
    "Within 3 SD"
  ),
  
  Value = c(
    length(sleep_hours),
    mu,
    sleep_median,
    sleep_mode,
    sigma,
    sleep_variance,
    sleep_min,
    sleep_max,
    percent_1sigma,
    percent_2sigma,
    percent_3sigma
  )
)

part2_summary


# ----------------------------------------------------------
# 15. DISPLAY IMPORTANT RESULTS
# ----------------------------------------------------------

cat("\nPART 2 RESULTS\n")

cat("Number of students:",
    length(sleep_hours), "\n")

cat("Mean sleep duration:",
    round(mu, 4), "hours\n")

cat("Standard deviation:",
    round(sigma, 4), "hours\n")

cat("Within 1 SD:",
    round(percent_1sigma, 2), "%\n")

cat("Within 2 SD:",
    round(percent_2sigma, 2), "%\n")

cat("Within 3 SD:",
    round(percent_3sigma, 2), "%\n")


############################################################
# END OF FA7 ANALYSIS
############################################################