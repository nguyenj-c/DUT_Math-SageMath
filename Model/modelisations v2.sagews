︠12852d4b-0723-4e89-ae09-b2a9290b62c8r︠
#a,b,c,d > 0, sont des coefficients d'interraction entre les deux populations ils sont définis individuellement plus bas.

def F1(a,b,x,y):#proie
    res = a*x - b*x*y
    return res

def F2(c,d,x,y):#prédateur
    res = -c*y + d*x*y
    return res

def Xsuivant(a,b,x,y,h):
    res = x + h*F1(a,b,x, y)
    return res

def Ysuivant(c,d,x,y,h):
    res = y + h*F2(c,d,x, y)
    return res

def AffichePop(a,b,c,d,x,y,h,color):
    TabX= [x]#Stock les valeur de la Population X
    TabY= [y]#Stock les valeur de la Population Y
    TabIncr=[]
    incr=100/h
    for i in range(int(incr)):
        x = Xsuivant(a,b,x,y,h)
        y = Ysuivant(c,d,x,y,h)
        TabIncr+=[h*i]
        TabX += [x]
        TabY += [y]
    return line(zip(TabIncr,TabX),rgbcolor=color)#+line(zip(TabIncr,TabX)) #affiche TabX(en rouge) et TabY(en vert) sur le même graphique
    #return line(zip(TabX,TabY),rgbcolor=color) #affiche TabX en fonction de TabY

a = 0.6 #a est le paramêtre faisant varier le taux d'accroissement(natalité) des proie dans F1 et a*x représente donc le taux d'accroissement des proies en l'absence de prédateurs
#ici si on baisse a, la population des proies fera des cycles plus lent mais ça n'affecte pas vraiment la population maximum et minimum. Au contraire si nous augmentons a, la population des proies fera des cycles plus rapidement.(cycles= renouvellement de la population).On observe le même phénomène pour la population des prédateurs(car la pop de prédateurs dépend de la pop de proie) mais contrairement au proies cela affecte enormément les extremum de la pop des prédateurs.

b = 0.1 #b est le coefficient d'interraction entre les deux populations, impactant les proie si dans leur environnement on y ajoute les prédateurs
#ici donc plus b est grand plus les proies se ferront manger, donc moins de proies ce qui amène a un cycle rapide mais ça n'affecte pas vraiment la population maximum et minimum. Au contraire si nous diminuons b, la population des proies fera des cycles plus lent que quand b est grand car les proies se feront moins manger par les prédateurs qui sont en petit nombre.

c = 0.2 #c est le paramêtre faisant varier le taux d'accroissement(mortalités) des prédateurs dans F2 et -c*y représente donc le taux d'accroissement des prédateurs en l'absence de proies
d = 0.6 #d est le coefficient d'interraction entre les deux populations, impactant les prédateurs si dans leur environnement on y ajoute les proies(ici donc + d est grand plus les prédateurs verront leurs pop s'aggrandir)

x=1      #Etant donné qu'il n'y a pas d'unité le grafique représente autant une pop de 1 millions comme de mille
y=0.5    #même réfléxion
h=0.001  #plus h est petit plus grande sera notre précision (optimal h= 0.001 et range= 100000)

w=0.25
z=0.125

AffichePop(a,b,c,d,x,y,h,'green')
︡a016475c-9da6-42dd-8fc0-40a461eaada5︡{"done":true}









