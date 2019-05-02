library(europepmc)

library(tidypmc)

doc <- epmc_ftxt("PMC5954787")
doc_raw <- xml2::read_xml("41205_2017_Article_17.nxml")

exports <- ls("package:tidypmc")
exports


# Basic functions

text <- pmc_text(doc)

caption <- pmc_caption(doc)

table <- pmc_table(doc)
collapsed_table <- collapse_rows(table)

reference <- pmc_reference(doc)

metadata <- pmc_metadata(doc)
# Might want to parse dates as dates, rather than concatenating them as strings
# Names of metadata — some have spaces



# Searching functions

separate_text(text, "stent")
separate_text(collapsed_table, "stent")

separate_refs(text)
# This is pretty awesome actually


separate_genes(text)

separate_tags(text, "stent")
# I don't have the expertise here. How does this differ from genes and text?



# The README describes how to update the references if they are formatted as
# superscript. Maybe this would be useful as an option for the separate_refs()
# function. Maybe it does? It looks like it might already. But this appearing in
# the README makes it seem like it doesn't.

doc1 <- epmc_ftxt("PMC6385181")
text <- pmc_text(doc1)

refs <- separate_refs(text)
refs
