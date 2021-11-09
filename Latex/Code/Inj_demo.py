from Inj import *

X=['Staubsaugen','Kueche','Fenster'] # Aufgaben
Y=['Alice','Bob','Carola'] # WG

cntr=0
for f in Inj(X,Y):
  cntr+=1
  print("\nVariante {}".format(cntr))
  for x,y in f.items():
    print("{} -> {}".format(x,y))
