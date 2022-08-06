︠aff1c9e1-8510-4891-ae7c-4fe68c396cebr︠
#a,b,c,d > 0

def F1(a,b,x,y):
    res = a*x - b*x*y +ex
    return res

def F2(c,d,x,y):
    res = -c*y + d*x*y -ey
    return res

def Xsuivant(a,b,x,y,h):
    res = x + h*F1(a,b,x, y)
    return res

def Ysuivant(c,d,x,y,h):
    res = y + h*F2(c,d,x, y)
    return res



#pc=plot(Xsuivant(x,y,h),0,100, rgbcolor='green')
#pc =plot(Xsuivant(x,y,h),0,100, linestyle='--',rgbcolor=(1,0,1))
#ps=plot(Ysuivant(x,y,h),0,100, rgbcolor='red')

def AffichePop(a,b,c,d,x,y,h,color):
    TabX= [x]#Stock les valeur de la Population X
    TabY= [y]#Stock les valeur de la Population Y
    TabIncr=[]
    incr=1000/h
    for i in range(int(incr)):
        x = Xsuivant(a,b,x,y,h)
        y = Ysuivant(c,d,x,y,h)
        TabIncr+=[h*i]
        TabX += [x]
        TabY += [y]
        return line(zip(TabIncr,TabY),rgbcolor=color)
    #return line(zip(TabX,TabY), rgbcolor=color)
        #affiche TabX en fonction de TabY

a = 0.6
b = 1
c = 0.2
d = 0.6
x=1 #Etant donn´e qu'il n'y a pas d'unit´e le graphique
y=0.5 #repr´esente autant une pop de 1 millions comme de mille
h=0.0001 #plus h est petit plus grande sera notre pr´ecision (optimal h * range = 100)
w=0.25
z=0.125
AffichePop(a,b,c,d,x,y,h,'green')
︡6a63ed6d-dbb4-47b7-8781-dfc287c43268︡









