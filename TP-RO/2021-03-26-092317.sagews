︠b2320d77-9750-4e43-b560-fbd0143b2993︠
#Partie 1
M = matrix([[0,0,0,1,2,0,0,0],[0,0,0,0,0,21,18,5],[0,0,0,1,2,3,4,5],[0,3,21,1,3,1,0,0],[0,4,18,-1,3,0,1,0],[0,5,5,1,-1,0,0,1],[0,0,0,0,0,0,0,0],[0,0,0,1,2,0,0,0]])

def pivot(A):
    m = A.ncols() - 5 #nombre de variables d'écart...
    n = A.nrows() - 3 - m #nombre de variables initiales
    i = 0
    coef_max = 0
    max_col = 0
    while i <= n+m:
            temp = A[m + 4, i+2]
            if temp > coef_max:
                coef_max = temp
                max_col = i+2
            i+=1
    max = A.nrows() -3
    y = 3
    min_piv= A[y,2] / A[y,max_col]
    min_line = y
    while y <= max:
        if A[y,max_col] != 0:
            temp = A[y,2] / A[y,max_col]
            if (temp < min_piv) and (temp > 0):
                min_piv = temp
                min_line = y
        y+=1
    pivot = A[min_line,max_col]
    return pivot


def une_etape(A): #effectue une étape de la méthode du simplexe sur la matrice A
    my_pivot = pivot(A)
    #TODO calculer le tableau suivant grâce au pivot
    print('Pivot :',my_pivot)
show(M)
une_etape(M)


︡ce55dbf6-fca0-4e0c-ad2f-a66e9297c47a︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrrrrr}\n0 &amp; 0 &amp; 0 &amp; 1 &amp; 2 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 21 &amp; 18 &amp; 5 \\\\\n0 &amp; 0 &amp; 0 &amp; 1 &amp; 2 &amp; 3 &amp; 4 &amp; 5 \\\\\n0 &amp; 3 &amp; 21 &amp; 1 &amp; 3 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 4 &amp; 18 &amp; -1 &amp; 3 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 5 &amp; 5 &amp; 1 &amp; -1 &amp; 0 &amp; 0 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1 &amp; 2 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$</div>"}︡{"stdout":"Pivot : 3\n"}︡{"done":true}
︠541595c9-efe8-4d99-8a31-8caf2b770cdd︠

#Partie 2
A = ([[1,0,-4,1,1],[5,3,1,0,-5,3],[4,5,-3,3,-4,1],[0,-1,0,2,1,-5],[-2,1,1,1,2,2],[2,-3,2,-1,4,5]])
B = (1,4,4,5,7,5)
C = (4,5,1,3,-5,8)
P = InteractiveLPProblem(A, B, C, ["x1", "x2","x3","x4","x5","x6"], variable_type="<=")
P.standard_form(True)
P.optimal_value()
#P.MixedIntegerLinearProgram(maximization=True, solver = "GLPK")


#Partie 3
#min = 9X1A + 8X1B + 8X1C + 9X1D + 8X1E + 6X2A + 7X2B + 6X2C + 7X2D + 7X2E + 6X3A + 6X3B + 5X3C + 7X3D + 6X3E + 5X4A + 6X4B + 6X4C + 6X4D + 5X4E

#S.C { X1A + X1B + X1C +X1D +X1E =1
#    { X2A + X2B + X2C +X2D +X2E =1
#    { X3A + X3B + X3C +X3D +X3E =1
#    { X4A + X4B + X4C +X4D +X4E =1
#    { X1A + X1B + X1C +X1D +X1E + X2A + X2B + X2C +X2D +X2E + X3A + X3B + X3C +X3D +X3E + X4A + X4B + X4C +X4D +X4E = 4

A = matrix([[1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1],
            [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]])

B = (1,1,1,1,4)
C = (9,8,8,9,8,6,7,6,7,7,6,6,5,7,6,5,6,6,6,5)
P = InteractiveLPProblem(A, B, C, ["X1A" , "X1B" , "X1C" , "X1D" , "X1E" , "X2A" , "X2B" , "X2C" , "X2D" , "X2E" , "X3A" , "X3B" , "X3C" , "X3D" , "X3E" , "X4A" , "X4B" , "X4C" ,"X4D" , "X4E"], variable_type="=")


P.is_optimal()









