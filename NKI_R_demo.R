install.packages('Hmisc')
install.packages('rms')

library (Hmisc, T)
library (rms)

setwd (".")

mydata <- read.table("NKI_R_demo.txt",header=T,row.names=1,sep="\t")
outcome <- as.numeric(mydata$pT)

png("NKI_R_demo.png", width=1024, height=768)
par (mfrow=c(3,3), cex=0.8, oma=c(2,2,2,2))
plsmo (mydata$Age, outcome, datadensity=TRUE, ylim=c(0,1), ylab="P(pT>=3)", xlab="Age (years)" )
plsmo (mydata$Cancer.in.family, outcome, datadensity=TRUE, ylim=c(0,1), ylab="P(pT>=3)", xlab="Cancer in family" )
plsmo (mydata$cT, outcome, datadensity=TRUE, ylim=c(0,1), ylab="P(pT>=3)", xlab="cT" )
plsmo (mydata$PSA.before.treatment, outcome, datadensity=TRUE, ylim=c(0,1), ylab="P(pT>=3)", xlab="PSA (ng/ml)" )
plsmo (mydata$Biopsy.Gleason.1, outcome, datadensity=TRUE, ylim=c(0,1), ylab="P(pT>=3)", xlab="Biopsy Gleason 1" )
plsmo (mydata$Biopsy.Gleason.2, outcome, datadensity=TRUE, ylim=c(0,1), ylab="P(pT>=3)", xlab="Biopsy Gleason 2" )
plsmo (mydata$Biopsy.Gleason.Sum, outcome, datadensity=TRUE, ylim=c(0,1), ylab="P(pT>=3)", xlab="Biopsy Gleason Sum" )
plsmo (mydata$Prostate.size, outcome, datadensity=TRUE, ylim=c(0,1), ylab="P(pT>=3)", xlab="Prostate size (cc)" )
title("PCMM diagnosis vs. outcome analysis", outer=TRUE)
dev.off()