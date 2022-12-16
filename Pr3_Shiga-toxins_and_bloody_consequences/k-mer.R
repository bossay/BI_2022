setwd('C:\\Users\\pmbog\\source\\WorkshpoBI\\Project3\\raw_data')


hist_k_mer <- read.table("hist_j_v2.txt")
plot(hist_k_mer[1:400,],type="l", xlab = "Unique k-mers", ylab = "Count", main = "Uncorrected reads", ylim = c(0, 60000))
points(hist_k_mer[1:400,])

sum(as.numeric(hist_k_mer[1:1569,1]*hist_k_mer[1:1569,2]))

hist_k_mer[115:135,]

sum(as.numeric(hist_k_mer[1:1569,1]*hist_k_mer[1:1569,2]))/125


hist_k_mer_cor <- read.table("spades_my\\corrected\\hist_j_cor.txt")
plot(hist_k_mer_cor[1:400,],type="l", xlab = "Unique k-mers", ylab = "Count", main = "Corrected reads", ylim = c(0, 60000))
points(hist_k_mer_cor[1:400,])

sum(as.numeric(hist_k_mer_cor[1:1593,1]*hist_k_mer_cor[1:1593,2]))

hist_k_mer_cor[115:135,]

sum(as.numeric(hist_k_mer_cor[1:1593,1]*hist_k_mer_cor[1:1593,2]))/124
