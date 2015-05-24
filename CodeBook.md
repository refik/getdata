# Original data
Original data is  "Human Activity Recognition Using Smartphones Data Set".

Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

More information is [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

# Transformations
Transformations are done on ``run_analysis.R``. First, training and test data is combined. Than, mean and std data is filtered and labeled appropriately. Later, different dimensions of the data is combined to form a tidy data set.

# Variables 
First 79 columns are mean and std of the data collected from devices.

Column 80 named ``activities`` is the type of activity the person was doing while the data was collected.

Column 81 named ``subjects`` is the identifier for the person that carried out the experiment.

