︠a6de9193-c9dd-4869-9be3-502ff9800f09s︠
import igraph
from numpy import zeros,array
from PIL import Image
img=Image.open("1.png")
pxl=img.load()
img.size
g = DiGraph([(1,2),(1,6),(1,7),(2,3),(2,7),(2,8),(3,4),(3,8),(3,9),(4,5),(4,9),(4,10),(5,10),(6,7)])
g.plot(edge_labels=True)


def d(A,B,G):
int λ=pixelValueDiff;
if A=B :
    d(A,B,G)=0
elif
    if VG(A)is None:
        d(A,B,G) = float("inf")
    elif
        d(A,B,G)=min(d(xi, B, G - {A}) + λ(A, xi))
return d(A,B,G)
    
︡8a996667-fd5c-44f3-a7ad-210e94524dc1︡{"stdout":"(5, 5)\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b41b5796-e563-4449-8928-42e24d0a43fb/364/tmp_7Y8Pzk.svg","show":true,"text":null,"uuid":"23315b78-01f8-4539-a3b7-735e1631a891"},"once":false}︡{"stderr":"\n\n*** WARNING: Code contains non-ascii characters    ***\n*** Maybe the character < u > should be replaced by < \" > ? ***\n\n\nError in lines 9-9\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1234, in execute\n    flags=compile_flags), namespace, locals)\n  File \"<string>\", line 1\n    def d(A,B,G):\n                ^\nSyntaxError: unexpected EOF while parsing\n"}︡{"done":true}









