# load and sort data
Scores <- read.csv2("D:\\ownCloud\\fortytwo\\�volution scores politiques france\\scores.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(Scores)
ScoresANE <- read.csv2("D:\\ownCloud\\fortytwo\\�volution scores politiques france\\scores avec non exprim�s.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(ScoresANE)
Exprimes <- read.csv2("D:\\ownCloud\\fortytwo\\�volution scores politiques france\\exprim� non exprim�.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(Exprimes)

# load required libraries
require(ggplot2)
require(rCharts)

# plot scores
ScoresPlot <- mPlot(x = "Date", y = c("Gauche.communiste", "Verts", "PS.et.alli�s", "Centre", "Droite.et.alli�s", "Extr�me.droite"), type = "Line", data = Scores)
ScoresPlot$set(pointSize = 3, lineWidth = 3, parseTime = FALSE, height = 500, width = 800, lineColors = c("red","green","hotpink","orange","blue","grey"), labels = c("Communistes et alli�s","Verts","PS et alli�s","Centre","Droite et alli�s","Extr�me-droite"),ymax = 45)
ScoresPlot$save('D:\\ownCloud\\fortytwo\\�volution scores politiques france\\ScoresPlot.html', cdn = TRUE)

# plot scores avec non exprim�s
ScoresANEPlot <- mPlot(x = "Date", y = c("Gauche.communiste", "Verts", "PS.et.alli�s", "Centre", "Droite.et.alli�s", "Extr�me.droite", "Non.exprim�"), type = "Line", data = ScoresANE)
ScoresANEPlot$set(pointSize = 3, lineWidth = 3, parseTime = FALSE, height = 500, width = 800, lineColors = c("red","green","hotpink","orange","blue","grey","black"), labels = c("Communistes et alli�s","Verts","PS et alli�s","Centre","Droite et alli�s","Extr�me-droite","Suffrages non exprim�s"),ymax = 65)
ScoresANEPlot$save('D:\\ownCloud\\fortytwo\\�volution scores politiques france\\ScoresANEPlot.html', cdn = TRUE)

# plot suffrages non exprim�s
ExprimesPlot <- mPlot(x = "Date", y = c("Suffrages.non.exprim�s","Suffrages.exprim�s"), type = "Line", data = Exprimes)
ExprimesPlot$set(pointSize = 3, lineWidth = 3, parseTime = FALSE, height = 400, width = 800, lineColors = c("black","darkmagenta"), labels = c("Suffrages non exprim�s","Suffrages exprim�s"))
ExprimesPlot$save('D:\\ownCloud\\fortytwo\\�volution scores politiques france\\ExprimesPlot.html', cdn = TRUE)
