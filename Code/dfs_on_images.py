import matplotlib.pyplot as plt

im=plt.imread("averkov_signature.jpg")

def adj_maker(im):
    def inside(pos):
        i,j=pos
        return i>=0 and i<=im.shape[0] and j>=0 and j<=im.shape[1]

    def color_value(pos):
        i,j=pos
        return float(im[i,j,0])+float(im[i,j,1])+float(im[i,j,2])

    def adj(pos):
        i,j=pos
        col1=color_value(pos)
        print(col1)
        result=[]
        for s,t in [(i-1,j),(i+1,j),(i,j-1),(i,j+1)]:
            if inside((s,t)):
                col2=color_value((s,t))
                if abs(col1-col2)<5:
                    result.append((s,t))
        return result
    return adj

def dfs(adj,u,found):
    found.append(u)
    for v in adj(u):
        if v not in found:
            dfs(adj,v,found)

found=[]
adj=adj_maker(im)

#dfs(adj,(10,10),found)

#print(found)
