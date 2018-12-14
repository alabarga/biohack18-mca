# We used the Experimental Factor Ontology ‘cell type’ class (EFO_0000324) to obtain an
# enumeration of cell types. It is an open question whether Cell Ontology or Cellosaurus should be used for this purpose.

library(ontoProc)
cellOnto = getCellOnto()

# getting neurons

cochil = children_TAG("CL:0000540", cellOnto) 
cochil
label_TAG("CL:0000540", cellOnto)
siblings_TAG("CL:0000540", cellOnto) 

cleanNames = function(tset) {
  slot(tset,"cleanFrame")$clean
}
cleanNames(cochil)

data(allGOterms)
cellTypeToGO("serotonergic neuron", gotab=allGOterms)
cellTypeToGenes("serotonergic neuron", orgDb=org.Mm.eg.db, gotab=allGOterms)
cellTypeToGenes("serotonergic neuron", orgDb=org.Hs.eg.db, gotab=allGOterms)

data(minicorpus)
head(minicorpus)

dropStop(head(minicorpus))

cs = getCellosaurusOnto()
minicorpus[1]
grep("P493", cs$name, value=TRUE, ignore.case=TRUE)
