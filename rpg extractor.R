library(Rcrawler)

#Saves whole page, with subpages, to working directory
#while at it, creates a list of all links on the pages with their type (file/folder)
Rcrawler(Website = "https://rpg.rem.uz/",
         ExtractXpathPat= c("//*/table/tr/td/img/@alt", "//*/table/tr/td/a/@href"),
         PatternsNames=c("Type", "Links"),
         ManyPerPattern=TRUE)

#Downloading the files
