merge_data <- function() {
  train.x <- read.table('data/train/X_train.txt')
  train.y <- read.table('data/train/y_train.txt')
  train.subject <- read.table('data/train/subject_train.txt')
  test.x <- read.table('data/test/X_test.txt')
  test.y <- read.table('data/test/y_test.txt')
  test.subject <- read.table('data/test/subject_test.txt')
  subject <- rbind(train.subject, test.subject)
  names(subject) <- 'subjects'
  list(x = rbind(train.x, test.x), y = rbind(train.y, test.y), subject = subject)
}

get_mean_std <- function(x) {
  features <- read.table("data/features.txt")
  ind <- sapply(features[,2], function(x) grepl('mean()|std()', x))
  coln <- features[ind, 2]
  filtered <- x[,ind] 
  names(filtered) <- features[ind,2]
  filtered
}

activity_names <- function(y) {
  data.frame(activities=factor(y[[1]], labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING", "LAYING")))
}

merged_data <- merge_data()
combined <- cbind(get_mean_std(merged_data$x), activity_names(merged_data$y), merged_data$subject)
write.table(combined, "UCI_tidy.txt", row.names=FALSE)

