library(restfulSE)
library(org.Mm.eg.db)
library(tenXplore)
library(AnnotationDbi)
library(SummarizedExperiment)

inSE = se1.3M()

data("allGOterms", package="ontoProc")
data("CellTypes")
clsupp = getCellOnto()