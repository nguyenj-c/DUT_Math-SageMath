︠20d21d1d-bfeb-4023-889b-d528504eabe7︠
matTrans = matrix (3,3,[0.9,0.05,0.05,0.7,0,0.3,0.8,0,0.2])
show(matTrans^5)


︡26808c14-7799-4651-9a67-2a877960e26c︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n0.883977500000000 &amp; 0.0441987500000000 &amp; 0.0718237500000000 \\\\\n0.883982500000000 &amp; 0.0442000000000000 &amp; 0.0718175000000000 \\\\\n0.883980000000000 &amp; 0.0442000000000000 &amp; 0.0718200000000000\n\\end{array}\\right)$</div>"}︡{"done":true}
︠613f385e-3714-4755-baec-5830274dec80s︠
d1 = 0.88398
d2 = 0.0442
d1 = 0.07182
etat1 = "D"
etat2 = "M"
etat3 = "J"

def Markov1pas(etat):
    if (etat==etat1):
        proba = random()
        print("proba : ")
        print(proba)
        if(proba>=0.1):
            etatfinal=etat
        elif(proba<=0.05):
            etatfinal=etat2
        else:
            etatfinal=etat3
    if (etat==etat2):
        proba = random()
        print("proba : ")
        print(proba)
        if(proba>=0.3):
            etatfinal=etat1
        else:
            etatfinal=etat3
    if (etat==etat3):
        proba = random()
        print("proba : ")
        print(proba)
        if(proba>=0.2):
            etatfinal=etat1
        else:
            etatfinal=etat
    return etatfinal

def TempsEtats (etat,n):
    etatCourant=etat
    nbE1=0
    nbE2=0
    nbE3=0
    for i in range(0,n):
        etatCourant = Markov1pas(etatCourant)
        if(etatCourant==etat1):
            nbE1=nbE1+1
        elif(etatCourant==etat2):
            nbE2=nbE2+1
        elif(etatCourant==etat2):
            nbE3=nbE3+1
    return nbE1,nbE2,nbE3

Markov1pas("D")

def PileFace():
    random.randint(0,1)
    if 0:
        print("F")
    if 1:
        print("P")

def UnePartie():
    for i in range(0,3):
        x +=PileFace
    return x

def PleinDeParties(m):
    for i in range(0,m):
        TabX = [UnePartie()]
    return TabX


MatTras = matrix([[0.5,0.5,0,0,0,0],[0,0,0.5,0.5,0,0],[0,0,0.5,0,0,0.5],[0,0,0,0.1,0],[0,0,0,0,0,1]])

show(MatTras^100)
︡f2a7f699-c70e-4cf3-9edd-b86af62fa493︡{"stdout":"proba : \n0.2585123257155848\n'D'\n"}︡{"stderr":"Error in lines 64-64\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/matrix/constructor.pyx\", line 635, in sage.matrix.constructor.matrix (build/cythonized/sage/matrix/constructor.c:2529)\n    M = MatrixArgs(*args, **kwds).matrix()\n  File \"sage/matrix/args.pyx\", line 652, in sage.matrix.args.MatrixArgs.matrix (build/cythonized/sage/matrix/args.c:7770)\n    self.finalize()\n  File \"sage/matrix/args.pyx\", line 915, in sage.matrix.args.MatrixArgs.finalize (build/cythonized/sage/matrix/args.c:10107)\n    self.finalize_seq_seq()\n  File \"sage/matrix/args.pyx\", line 1131, in sage.matrix.args.MatrixArgs.finalize_seq_seq (build/cythonized/sage/matrix/args.c:13547)\n    self.set_ncols(c)\n  File \"sage/matrix/args.pxd\", line 92, in sage.matrix.args.MatrixArgs.set_ncols (build/cythonized/sage/matrix/args.c:17815)\n    raise ValueError(f\"inconsistent number of columns: should be {p} but got {n}\")\nValueError: inconsistent number of columns: should be 6 but got 5\n"}︡{"done":true}









