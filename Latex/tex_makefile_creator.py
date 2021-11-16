import os, re

def is_texfile(filename):
    return os.path.isfile(filename) and \
    len(filename)>3 and \
    filename[-3:].lower()=='tex'

def is_main(filename):
    if not is_texfile(filename):
        return False
    with open(filename,'r') as f:
        contents=f.read()
        if r'\begin{document}' in contents:
            return True
        return False

def inclusions(filename):
    if not is_texfile(filename):
        return []
    with open(filename,'r') as f:
        contents=f.read()
        return(re.findall(r"\\(?:input|lstinputlisting|includegraphics)\{([^\}]+)",contents))


print("all : ",end=" ")

for filename in sorted(os.listdir()):
    if is_main(filename):
        print(filename[:-3]+"pdf",end=" ")

print()

for filename in sorted(os.listdir()):
    if is_texfile(filename):
        Inclusions=inclusions(filename)
        if is_main(filename):
            print(filename[:-3]+"pdf : "+filename,end=" ")
            for inc in Inclusions:
                print(inc,end=" ")
            print("\n\tpdflatex",filename)
            print("\tpdflatex",filename)
        else:
            if len(Inclusions)>0:
                print(filename," : "," ".join(Inclusions))

print(".PHONY : all")
