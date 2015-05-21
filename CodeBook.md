# Codebook
Here you will find all the information needed for reading the code and all the information about the variables includes in the final result.

## Data cleaning Process
1. Load all the data into Rstudio including data,subjects and activity table for both the testing and training 
2. Bind the data,subjects and activity column-wise for both testing and training
3. Bind the testing and traing data together row-wisely
4. Load the feature.txt into Rstudio and remove all the "()" and "-" in the features' name
5. Look up all the features' names which including "mean" and "std" and save the variables' number
6. Slice the data from step3 and select the variables from step5 into a new dataset
7. Load the activity table into Rstudio and join this table with the data from step6 on activity's number
8. Remove the activity number from the result data from step7
9. Group the data by subject and the the activity
10. Compute the means for all the variables of the grouped data from step9
11. Export the result into the final text file

## Variables in the final result
Here are the list for the variables in final result, the "()" and "-" hava already been removed from the variables' names

1. subject
2. activityDesc
3. tBodyAccmeanX
4. tBodyAccmeanY
5. tBodyAccmeanZ
6. tBodyAccstdX
7. tBodyAccstdY
8. tBodyAccstdZ
9. tGravityAccmeanX
10. tGravityAccmeanY
11. tGravityAccmeanZ
12. tGravityAccstdX
13. tGravityAccstdY
14. tGravityAccstdZ
15. tBodyAccJerkmeanX
16. tBodyAccJerkmeanY
17. tBodyAccJerkmeanZ
18. tBodyAccJerkstdX
19. tBodyAccJerkstdY
20. tBodyAccJerkstdZ
21. tBodyGyromeanX
22. tBodyGyromeanY
23. tBodyGyromeanZ
24. tBodyGyrostdX
25. tBodyGyrostdY
26. tBodyGyrostdZ
27. tBodyGyroJerkmeanX
28. tBodyGyroJerkmeanY
29. tBodyGyroJerkmeanZ
30. tBodyGyroJerkstdX
31. tBodyGyroJerkstdY
32. tBodyGyroJerkstdZ
33. tBodyAccMagmean
34. tBodyAccMagstd
35. tGravityAccMagmean
36. tGravityAccMagstd
37. tBodyAccJerkMagmean
38. tBodyAccJerkMagstd
39. tBodyGyroMagmean
40. tBodyGyroMagstd
41. tBodyGyroJerkMagmean
42. tBodyGyroJerkMagstd
43. fBodyAccmeanX
44. fBodyAccmeanY
45. fBodyAccmeanZ
46. fBodyAccstdX
47. fBodyAccstdY
48. fBodyAccstdZ
49. fBodyAccmeanFreqX
50. fBodyAccmeanFreqY
51. fBodyAccmeanFreqZ
52. fBodyAccJerkmeanX
53. fBodyAccJerkmeanY
54. fBodyAccJerkmeanZ
55. fBodyAccJerkstdX
56. fBodyAccJerkstdY
57. fBodyAccJerkstdZ
58. fBodyAccJerkmeanFreqX
59. fBodyAccJerkmeanFreqY
60. fBodyAccJerkmeanFreqZ
61. fBodyGyromeanX
62. fBodyGyromeanY
63. fBodyGyromeanZ
64. fBodyGyrostdX
65. fBodyGyrostdY
66. fBodyGyrostdZ
67. fBodyGyromeanFreqX
68. fBodyGyromeanFreqY
69. fBodyGyromeanFreqZ
70. fBodyAccMagmean
71. fBodyAccMagstd
72. fBodyAccMagmeanFreq
73. fBodyBodyAccJerkMagmean
74. fBodyBodyAccJerkMagstd
75. fBodyBodyAccJerkMagmeanFreq
76. fBodyBodyGyroMagmean
77. fBodyBodyGyroMagstd
78. fBodyBodyGyroMagmeanFreq
79. fBodyBodyGyroJerkMagmean
80. fBodyBodyGyroJerkMagstd
81. fBodyBodyGyroJerkMagmeanFreq
