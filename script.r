# load and sort data
Scores <- read.csv2("D:\\ownCloud\\fortytwo\\évolution scores politiques france\\scores.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(Scores)
ScoresANE <- read.csv2("D:\\ownCloud\\fortytwo\\évolution scores politiques france\\scores avec non exprimés.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(ScoresANE)
Exprimes <- read.csv2("D:\\ownCloud\\fortytwo\\évolution scores politiques france\\exprimé non exprimé.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(Exprimes)

# load required libraries
require(ggplot2)
require(rCharts)

# plot scores
ScoresPlot <- mPlot(x = "Date", y = c("Gauche.communiste", "Verts", "PS.et.alliés", "Centre", "Droite.et.alliés", "Extrême.droite"), type = "Line", data = Scores)
ScoresPlot$set(pointSize = 3, lineWidth = 3, parseTime = FALSE, height = 500, width = 800, lineColors = c("red","green","hotpink","orange","blue","grey"), labels = c("Communistes et alliés","Verts","PS et alliés","Centre","Droite et alliés","Extrême-droite"),ymax = 45)
ScoresPlot$save('D:\\ownCloud\\fortytwo\\évolution scores politiques france\\ScoresPlot.html', cdn = TRUE)

# plot scores avec non exprimés
ScoresANEPlot <- mPlot(x = "Date", y = c("Gauche.communiste", "Verts", "PS.et.alliés", "Centre", "Droite.et.alliés", "Extrême.droite", "Non.exprimé"), type = "Line", data = ScoresANE)
ScoresANEPlot$set(pointSize = 3, lineWidth = 3, parseTime = FALSE, height = 500, width = 800, lineColors = c("red","green","hotpink","orange","blue","grey","black"), labels = c("Communistes et alliés","Verts","PS et alliés","Centre","Droite et alliés","Extrême-droite","Suffrages non exprimés"),ymax = 65)
ScoresANEPlot$save('D:\\ownCloud\\fortytwo\\évolution scores politiques france\\ScoresANEPlot.html', cdn = TRUE)

# plot suffrages non exprimés
ExprimesPlot <- mPlot(x = "Date", y = c("Suffrages.non.exprimés","Suffrages.exprimés"), type = "Line", data = Exprimes)
ExprimesPlot$set(pointSize = 3, lineWidth = 3, parseTime = FALSE, height = 400, width = 800, lineColors = c("black","darkmagenta"), labels = c("Suffrages non exprimés","Suffrages exprimés"))
ExprimesPlot$save('D:\\ownCloud\\fortytwo\\évolution scores politiques france\\ExprimesPlot.html', cdn = TRUE)
