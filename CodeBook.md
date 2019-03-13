<h1> Code book for getting and cleaning data assignment </h1>

This code book describes all the data set and transformations carried out on the initial data set to derive the tidy data set, tidy_data.txt

<h2> Data </h2>

The tidy_data.txt is a space-separated text file. There are 180 rows and 81 columns in this data set. 

<h2> Variables or Column names </h2>

* **Subject** : The first column in the data set identifies subjects that range from 1 to 30
* **Activity** : Activity column identifies different activities in the data set. The activities include WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

* **Time Domain Signals**

- Average time-domain body acceleration in the X, Y and Z directions:

	- timeDomainBodyAccelerometerMeanX
	- timeDomainBodyAccelerometerMeanY
	- timeDomainBodyAccelerometerMeanZ

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- timeDomainBodyAccelerometerStandardDeviationX
	- timeDomainBodyAccelerometerStandardDeviationY
	- timeDomainBodyAccelerometerStandardDeviationZ

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- timeDomainGravityAccelerometerMeanX
	- timeDomainGravityAccelerometerMeanY
	- timeDomainGravityAccelerometerMeanZ

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- timeDomainGravityAccelerometerStandardDeviationX
	- timeDomainGravityAccelerometerStandardDeviationY
	- timeDomainGravityAccelerometerStandardDeviationZ

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- timeDomainBodyAccelerometerJerkMeanX
	- timeDomainBodyAccelerometerJerkMeanY
	- timeDomainBodyAccelerometerJerkMeanZ

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- timeDomainBodyAccelerometerJerkStandardDeviationX
	- timeDomainBodyAccelerometerJerkStandardDeviationY
	- timeDomainBodyAccelerometerJerkStandardDeviationZ
  
- Average time-domain body angular velocity in the X, Y and Z directions:

	- timeDomainBodyGyroscopeMeanX
	- timeDomainBodyGyroscopeMeanY
	- timeDomainBodyGyroscopeMeanZ

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- timeDomainBodyGyroscopeStandardDeviationX
	- timeDomainBodyGyroscopeStandardDeviationY
	- timeDomainBodyGyroscopeStandardDeviationZ

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- timeDomainBodyGyroscopeJerkMeanX
	- timeDomainBodyGyroscopeJerkMeanY
	- timeDomainBodyGyroscopeJerkMeanZ

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- timeDomainBodyGyroscopeJerkStandardDeviationX
	- timeDomainBodyGyroscopeJerkStandardDeviationY
	- timeDomainBodyGyroscopeJerkStandardDeviationZ

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- timeDomainBodyAccelerometerMagnitudeMean
	- timeDomainBodyAccelerometerMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- timeDomainGravityAccelerometerMagnitudeMean
	- timeDomainGravityAccelerometerMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- timeDomainBodyAccelerometerJerkMagnitudeMean
	- timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- timeDomainBodyGyroscopeMagnitudeMean
	- timeDomainBodyGyroscopeMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- timeDomainBodyGyroscopeJerkMagnitudeMean
	- timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- frequencyDomainBodyAccelerometerMeanX
	- frequencyDomainBodyAccelerometerMeanY
	- frequencyDomainBodyAccelerometerMeanZ

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- frequencyDomainBodyAccelerometerStandardDeviationX
	- frequencyDomainBodyAccelerometerStandardDeviationY
	- frequencyDomainBodyAccelerometerStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- frequencyDomainBodyAccelerometerMeanFrequencyX
	- frequencyDomainBodyAccelerometerMeanFrequencyY
	- frequencyDomainBodyAccelerometerMeanFrequencyZ

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- frequencyDomainBodyAccelerometerJerkMeanX
	- frequencyDomainBodyAccelerometerJerkMeanY
	- frequencyDomainBodyAccelerometerJerkMeanZ

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- frequencyDomainBodyAccelerometerJerkStandardDeviationX
	- frequencyDomainBodyAccelerometerJerkStandardDeviationY
	- frequencyDomainBodyAccelerometerJerkStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- frequencyDomainBodyAccelerometerJerkMeanFrequencyX
	- frequencyDomainBodyAccelerometerJerkMeanFrequencyY
	- frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- frequencyDomainBodyGyroscopeMeanX
	- frequencyDomainBodyGyroscopeMeanY
	- frequencyDomainBodyGyroscopeMeanZ

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- frequencyDomainBodyGyroscopeStandardDeviationX
	- frequencyDomainBodyGyroscopeStandardDeviationY
	- frequencyDomainBodyGyroscopeStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- frequencyDomainBodyGyroscopeMeanFrequencyX
	- frequencyDomainBodyGyroscopeMeanFrequencyY
	- frequencyDomainBodyGyroscopeMeanFrequencyZ

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- frequencyDomainBodyAccelerometerMagnitudeMean
	- frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
	- frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- frequencyDomainBodyAccelerometerJerkMagnitudeMean
	- frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
	- frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- frequencyDomainBodyGyroscopeMagnitudeMean
	- frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
	- frequencyDomainBodyGyroscopeMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- frequencyDomainBodyGyroscopeJerkMagnitudeMean
	- frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
	- frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency
  
## Transformations

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
1. The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement, and the others were discarded.
1. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see [Identifiers](#identifiers) section).
1. The variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to timeDomainBodyAccelerometerMeanX), using the following set of rules:
	- Special characters (i.e. (, ), and -) were removed
	- The initial f and t were expanded to frequencyDomain and timeDomain respectively.
	- Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and StandardDeviation respectively.
	- Replaced BodyBody with Body.
1. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

