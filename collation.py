from collatex import *

with open("41memorie1.txt", encoding="UTF-8") as f:
    primaEdizione = f.read()

with open("45memorie1.txt", encoding="UTF-8") as g:
    secondaEdizione = g.read()
    
collation = Collation()
collation.add_plain_witness("1941", primaEdizione)
collation.add_plain_witness("1945", secondaEdizione)
alignment_table = collate(collation, output="tei")

with open("memorie1.xml", "w", encoding="UTF-8") as xml:
   xml.write(alignment_table)


