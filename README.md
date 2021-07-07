---
title: "README.md"
author: "You!"
date: "7/7/2021"
output: html_document
---

The script in run_analysis.R reads in the training and testing datasets for the x, y and z values for the three different sets of measurements(Acc, Gyro, Total). 
The script then combines the train and test dataset for each activity/variable pair into a single dataset.
Following this, a single measurement is calculated for each row in each of the resulting datasets (for mean and standard deviation). These values are added as new columns to a dataframe called final_df. Activity names are used as column identifies based on the activity_labels.txt that was with the other files.
The final sets of commands in the script uses sapply to calculate a single average value for each set of activity/variable pair and places it into a new dataframe(summary_df). The resulting dataframe has 9 values.
Finally, the dataframe is written to a text file.


The following files are available for the train and test data. Their descriptions are equivalent. (This bit is taken from the README file provided with the data)

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

final_df
Walking_Avg = Average Value for Each Row in the combined BOdy_Acc_X_Test and BOdy_Acc_X_Train dataset
Walking_Upstairs_Avg = Average Value for Each Row in the combined BOdy_Acc_Y_Test and BOdy_Acc_Y_Train dataset
Walking_Downstairs_Avg = Average Value for Each Row in the combined BOdy_Acc_Z_Test and BOdy_Acc_Z_Train dataset
Walking_Std = Standard Deviation for Each Row in the combined BOdy_Acc_X_Test and BOdy_Acc_X_Train dataset
Walking_Upstairs_Std = Standard Deviation for Each Row in the combined BOdy_Acc_Y_Test and BOdy_Acc_Y_Train dataset
Walking_Downstairs_Std = Standard Deviation for Each Row in the combined BOdy_Acc_Z_Test and BOdy_Acc_Z_Train dataset
Sitting_Avg = Average Value for each row in the Combined Body_Gyro_X_Test and Body_gyro_Y_Train dataset
Standing_Avg = Average Value for each row in the Combined Body_Gyro_Y_Test and Body_gyro_Y_Train dataset
Laying_Avg = Average Value for each row in the Combined Body_Gyro_Z_Test and Body_gyro_Z_Train dataset
Sitting_Std = Standard Deviation for each row in the Combined Body_Gyro_X_Test and Body_gyro_X_Train dataset
Standing_Std = Standard Deviation for each row in the Combined Body_Gyro_Y_Test and Body_gyro_Y_Train dataset
Laying_Stds = Standard Deviation for each row in the Combined Body_Gyro_Z_Test and Body_gyro_Z_Train dataset
Total_X_Avg = Average Value for each row in the Combined Total_Acc_X_Test and Total_Acc_X_Train dataset
Total_Y_Avg = Average Value for each row in the Combined Total_Acc_Y_Test and Total_Acc_Y_Train dataset
Total_Z_Avg = Average Value for each row in the Combined Total_Acc_Z_Test and Total_Acc_Z_Train dataset
Total_X_Std = Standard Deviation for each row in the Combined Total_Acc_X_Test and Total_Acc_X_Train dataset
Total_Y_Std = Standard Deviation for each row in the Combined Total_Acc_Y_Test and Total_Acc_Y_Train dataset
Total_Z_Std = Standard Deviation for each row in the Combined Total_Acc_Z_Test and Total_Acc_Z_Train dataset

Summary_df = average values for each activity/variable pair
Walking_Avg = Average Value for the Walking_Avg column in final_df
Walking_Upstairs_Avg = Average Value for the Walking_Upstairs_Avg column in final_df
Walking_Downstairs_Avg = Average Value for the Walking_Downstairs_Avg column in final_df
Sitting_Avg = Average Value for the Sitting_Avg column in Final_df
Standing_Avg = Average Value for the Standing_Avg column in Final_df
Laying_Avg = Average Value for the Laying_Avg column in Final_df
Total_X_Avg = Average Value for the Total_X_Avg column in FInal_df
Total_Y_Avg = Average Value for the Total_Y_Avg column in final_df
Total_Z_Avg = Average Value for the Total_Z_Avg column in final_df