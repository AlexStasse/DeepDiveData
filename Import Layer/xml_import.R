require(XML)
library("XML")

xml.url = "http://www.w3schools.com/xml/plant_catalog.xml"

xmlfile <- xmlTreeParse(xml.url)
xmltop = xmlRoot(xmlfile)
categories <- xmlSApply(xmltop, function(x) xmlSApply(x, xmlValue))
dataframe <- data.frame(t(categories),row.names=NULL)
dataframe