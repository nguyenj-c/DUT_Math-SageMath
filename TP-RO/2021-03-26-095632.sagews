def une_etape(A):
    m = A.ncols() -5
    n = A.nrows() - 3 - m
    i = 0
    coef_max = 0
    max_col = 0
    while i <= n+m:
        temp = A[m + 4, i+2 ]
        col_temp = i + 2
        if temp > coef_max :
            coef_max = temp
            max_col = i + 2
   
    max = A.nrows() -2
    y = 3
    min-piv = A[y,2] / A[x,max_col]
    min_line = 0
    
    
        
    
    
    









