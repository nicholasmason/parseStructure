# Created by Nick Mason (nicholas.albert.mason@gmail.com)
# Created/LastModified: June 10, 2014
# Version: 1.0

# Functions: 	parseStructure
# Purpose: 	The purpose of this function is parse the output of Structure for plotting in R.
# Input (1): 	(1) Path to a structure output file
# Ouput(1):	A matrix wherein each column represents an individual and each row represents the q score for each population. This can then be easily plotted using the barplot() function. I usually use the following parameters with barplot(space=0,axes=F). Borders to delimit different populations / groups can be done with rect().

parseStructure<-function(structurefile){
	input<-readLines(file(structurefile))
	input<-input[(grep("Inferred ancestry of individuals",input)+1):length(input)]
	input<-input[2:(grep("Estimated Allele Frequencies",input)-3)]
	foo<-strsplit(sapply(strsplit(input[-1],":"),function(x) x[2])," ")
	foo.mat<-sapply(foo,function(x) x[3:length(foo[[2]])])
	return(foo.mat)
}