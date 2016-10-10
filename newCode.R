###Today's class
#install doBy
library(doBy)
?summaryBy
summaryBy(Sepal.Length~as.character(Species),data=iris,FUN=c(mean,sd))


attach(iris)

#the DAAG package enables the pause function
#Don't forget to install the package
library(DAAG)

date()
par(mfrow=c(2,2))
for (i in 1:4){
  
  boxplot(iris[,i]~iris$Species,xlab='Species',
          ylab=names(iris)[i],
          main=paste('Boxplots of ',names(iris)[i],
                     ' by species.'),col='slateblue',cex.lab=2)
  #pause()

}
date()

#j<-0
flag=0
xo=10
while (flag==0){
  x=xo-(xo^3+xo^2+1)/(3*xo^2+2*xo)
  tolerance =abs(x-xo)
  if (tolerance<=.00001){
    flag=0
  }
  else{xo=x}
  #j<-j+1
  
}


lapply(iris[,1:4],mean)

sapply(iris[,1:4],var)


################################################
################################################
# NEW CODE 
################################################
################################################
star=function(num){
	for(i in 1:num){
		cat('*')
	}
}

for(i in 1:10){
	star(i)
	print("")
}


################################################
################################################
# END NEW CODE 
################################################
################################################

