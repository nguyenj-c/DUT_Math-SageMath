︠5a783d96-5dab-4ace-a701-472e7df1e709s︠
#a,b,c,d > 0

def F1(a,b,x,y):
    res = a*x - b*x*y
    return res

def F2(c,d,x,y):
    res = -c*y + d*x*y
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
    incr=100/h
    for i in range(int(incr)):
        x = Xsuivant(a,b,x,y,h)
        y = Ysuivant(c,d,x,y,h)
        TabIncr+=[h*i]
        TabX += [x]
        TabY += [y]
    #return line(zip(TabIncr,TabY),rgbcolor=color)+line(zip(TabIncr,TabX))
    #affiche TabX(en rouge) et TabY(en vert) sur le m^eme graphique
     return line(zip(TabX,TabY), rgbcolor=color)
        #affiche TabX en fonction de TabY

a = 0.6
b = 1
c = 0.2
d = 0.6
x=1 #Etant donn´e qu'il n'y a pas d'unit´e le graphique
y=0.5 #repr´esente autant une pop de 1 millions comme de mille
h=0.001 #plus h est petit plus grande sera notre pr´ecision (optimal h * range = 100)
w=0.25
z=0.125
AffichePop(a,b,c,d,x,y,h,'green')+AffichePop(a,b,c,d,w,z,h,'red')

︡c8f6265c-5ac7-429a-a119-7b428431fe89︡{"stderr":"Error in lines 13-24\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1234, in execute\n    flags=compile_flags), namespace, locals)\n  File \"<string>\", line 12\n    return line(zip(TabX,TabY), rgbcolor=color)\n                                              ^\nIndentationError: unindent does not match any outer indentation level\n"}︡{"done":true}









