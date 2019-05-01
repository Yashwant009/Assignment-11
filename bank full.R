library(Amelia)

bank <- read.csv("bank-full.csv", header = TRUE, sep = ";", na.strings = "unknown")

sapply(bank, function(x) sum(is.na(x)))

missmap(bank)

str(bank)

counts <- table(bank$job)
counts

# CLIENT Profession Distribution 
b <- barplot(counts, main ="Job distribution", ylab = "count", xlab = "profession", col = "steelblue", 
             ylim = c(0,10000), space = 0.2)

text(b, labels = as.data.frame(counts)[,2], pos = 3)


# JOBS AND MARITAL STAUTUS
counts <- table(bank$marital, bank$job)

barplot(counts, main ="Marital status and Profession", xlab = "profession",ylab = "counts" ,ylim = c(0,10000), space = 0.2, 
        col= c("red","green","orange"),legend =row.names(counts))

# JOBS AND EDUCATION   

counts <- table(bank$education, bank$job)

barplot(counts, main ="Education and Profession", xlab = "profession",ylab = "counts" ,ylim = c(0,10000), space = 0.2, 
        col= c("steelblue","red","orange"))
