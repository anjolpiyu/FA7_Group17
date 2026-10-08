# FA7_Group17
# Project Overview
This project applies probability distributions to two campus-related situations using student-collected data. Part 1 applies the Exponential Distribution to elevator waiting times in the FEUture Center Building, while Part 2 applies the Normal Distribution to the sleep duration of nursing students during their midterm period. The data were analyzed using R to calculate the required statistical parameters, probabilities, and graphical representations.

# Part 1: Campus-Related Issues Using Exponential Distribution
#### Scenario

The chosen campus-related issue for Part 1 is the waiting time for an elevator in the FEUture Center Building. Elevator waiting time is relevant to students because delays may affect their ability to travel between classes and other activities on time. An Exponential Distribution was used to model the observed elevator waiting times.

#### Data Collection

A total of 30 observations of elevator waiting time were collected from students using the elevators in the FEUture Center Building. The waiting times were recorded in minutes and ranged from 1 to 10 minutes. The collected observations were entered into an Excel file and analyzed using R.

The dataset had an average waiting time of approximately 4.07 minutes, with a standard deviation of approximately 2.23 minutes. The shortest recorded waiting time was 1 minute, while the longest was 10 minutes.

#### Applicability of the Exponential Distribution

The Exponential Distribution is applicable when events can reasonably be treated as occurring randomly and independently over time. In this study, the event being considered is the availability of an elevator after a student begins waiting. The waiting time from each observation was treated as an individual observation, and an exponential model was fitted to the collected data.

The rate parameter was estimated using the formula λ = 1/x̄. Based on the observed mean waiting time of approximately 4.07 minutes, the estimated rate was λ = 0.2459 events per minute.

#### Computed Parameters and Results

For an Exponential Distribution, the expected value is given by E(X) = 1/λ. Using the estimated rate, the expected waiting time was approximately 4.07 minutes. This means that, according to the fitted exponential model, a student can expect to wait around four minutes for an elevator on average.

The exponential cumulative distribution function was used to determine the likelihood of an elevator becoming available within specific timeframes. The probability of waiting 3 minutes or less was approximately 52.18%. The probability of waiting 5 minutes or less was approximately 70.76%. On the other hand, the probability of waiting more than 5 minutes was approximately 29.24%, while the probability of waiting more than 10 minutes was approximately 8.55%.

#### Interpretation and Real-World Implications

The results indicate that there is approximately a 70.76% probability that a student will wait 5 minutes or less for an elevator based on the fitted exponential model. This suggests that most students can expect an elevator to become available within five minutes. However, there is still a 29.24% probability of waiting longer than five minutes, showing that longer waiting times can still occur.

The estimated expected waiting time of 4.07 minutes provides a practical estimate of the typical waiting period experienced by students based on the collected observations. This may be useful when students plan their travel between classes, especially when they have limited time between schedules.

The results may also provide an initial basis for examining elevator demand and waiting times in the FEUture Center Building. Further data collection during different times of the day could provide more information about how elevator waiting times vary depending on student traffic and usage.

#### Graphical Analysis

A histogram of the 30 observed elevator waiting times was created using R and overlaid with the fitted Exponential Probability Density Function. The histogram represents the actual waiting-time observations, while the exponential curve represents the theoretical distribution based on the estimated rate of λ = 0.2459. The graph provides a visual comparison between the observed waiting times and the fitted exponential model.

# Part 2: Applying Normal Distribution on Campus
#### Scenario

The chosen campus-related variable for Part 2 is the sleep duration of nursing students during their midterm period. Sleep duration was selected because it provides a measurable variable that can be analyzed using the Normal Distribution. The purpose of this part is to examine the center, spread, distribution, and overall pattern of the students' reported sleep duration.

#### Data Collection

A total of 58 observations were collected, satisfying the requirement of at least 50 observations. The reported sleep durations were measured in hours and ranged from 2 to 9 hours.

The most frequently reported sleep duration was 4 hours, which occurred 16 times. Other observed sleep durations included 2, 3, 5, 6, 7, 8, and 9 hours, with different frequencies across the dataset.

#### Mean and Standard Deviation

The calculated mean sleep duration was approximately 5.1552 hours, or about 5.16 hours. The sample standard deviation was approximately 1.694 hours, or about 1.69 hours.

The mean represents the average reported sleep duration of the 58 observations, while the standard deviation describes how spread out the sleep durations are around the mean.

#### Normal Distribution Analysis

A Normal Distribution was fitted using the observed mean and standard deviation. The normal curve was used to examine how closely the observed sleep-duration data correspond to the theoretical pattern of a normal distribution.

The observed data were compared with the theoretical percentages expected within one, two, and three standard deviations of the mean.

Within one standard deviation, the interval was approximately 3.46 to 6.85 hours. A total of 36 out of 58 observations, or approximately 62.07%, fell within this range. In comparison, a theoretical Normal Distribution would have approximately 68% of observations within one standard deviation.

Within two standard deviations, the interval was approximately 1.77 to 8.54 hours. A total of 57 out of 58 observations, or approximately 98.28%, fell within this range. The theoretical percentage for a Normal Distribution is approximately 95%.

Within three standard deviations, the interval was approximately 0.07 to 10.24 hours. All 58 observations, or 100%, fell within this range. The theoretical percentage for a Normal Distribution is approximately 99.7%.

The observed percentages are not exactly the same as the theoretical 68–95–99.7 rule because the dataset contains only 58 observations and the reported sleep durations are whole-number values. However, the majority of observations are concentrated within two standard deviations of the mean.

#### Shape and Symmetry

The sleep-duration data are concentrated around the middle of the distribution, particularly between 4 and 6 hours. The distribution shows a slight right skew rather than being perfectly symmetrical. The calculated skewness was approximately 0.21, indicating only a mild positive skew.

Although the data do not perfectly follow a Normal Distribution, the Normal Distribution provides a useful model for describing the general pattern and spread of the observations.

#### Usefulness of the Normal Distribution

The Normal Distribution provides a useful way to summarize the overall pattern of the nursing students' reported sleep durations. The mean and standard deviation describe the center and spread of the data, while the normal curve allows the observed distribution to be compared with a theoretical model.

The results indicate that most observations are relatively close to the mean, although the slight right skew shows that the data are not perfectly normally distributed.

#### Graphical Analysis

A histogram of the nursing students' sleep duration was created using R and overlaid with a Normal Distribution curve based on the observed mean and standard deviation. A boxplot was also created to examine the spread of the data and identify potential outliers.

These graphical representations help show the concentration, spread, shape, and overall distribution of the observed sleep-duration data.

#### R Analysis

The R script contains separate sections for Part 1 and Part 2. For Part 1, R was used to import the elevator waiting-time dataset, calculate the number of observations, mean, standard deviation, and estimated λ, calculate the expected waiting time and exponential probabilities, calculate the 95th percentile, and create the histogram with the fitted exponential PDF.

For Part 2, R was used to import the nursing students' sleep-duration dataset, calculate the number of observations, create the frequency distribution, calculate the mean and standard deviation, determine the observed percentages within one, two, and three standard deviations, compare these percentages with the theoretical Normal Distribution percentages, create the histogram with the normal curve, calculate Z-scores, examine possible outliers using the IQR method, and create a boxplot.

#### Project Files

The project folder contains the README file, the R script containing the analysis for both parts, the Excel file containing the elevator waiting-time data, and the Excel file containing the nursing students' sleep-duration data. The graphs generated from the R analysis may also be included in the folder for documentation and presentation purposes.

#### Overall Conclusion

This project demonstrates the application of probability distributions to real-world campus-related data. For Part 1, the Exponential Distribution was used to model elevator waiting times in the FEUture Center Building. The observed mean waiting time was approximately 4.07 minutes, corresponding to an estimated rate of 0.2459 events per minute. Based on the fitted model, there was an estimated 70.76% probability of waiting five minutes or less for an elevator.

For Part 2, the Normal Distribution was applied to 58 observations of nursing students' sleep duration during midterms. The mean sleep duration was approximately 5.16 hours, with a standard deviation of approximately 1.69 hours. Most observations fell within two standard deviations of the mean, although the distribution showed a slight right skew.

Overall, the analysis demonstrates how probability distributions and statistical tools in R can be used to describe, interpret, and visualize real-world campus-related data.
