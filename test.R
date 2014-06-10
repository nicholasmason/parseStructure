test<-parseStructure("~/pathto/testfile.txt") # REPLACE THIS WITH THE PATH TO THE EXAMPLE OUTPUT

barplot(test,border=1,space=0,axes=F,col=rainbow(2))
par(xpd=NA)
rect(0,0,10,1,lwd=3)
text(x=5,y=-0.03,label="Pop 1",font=3) #This will have to be manually adjusted
rect(10,0,30,1,lwd=3)
text(x=20,y=-0.03,label="Pop 2",font=3)
rect(30,0,ncol(test),1,lwd=3)
text(x=(30+ncol(test))/2,y=-0.03,label="Pop 3",font=3)
