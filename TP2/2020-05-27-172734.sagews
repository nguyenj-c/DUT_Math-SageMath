︠5f7ef34b-9288-4a21-b9f3-647f314753e2r︠
from PIL import Image
img=Image.open("2.png")
pxl=img.load()
nbPixel = img.size[0] * img.size[1]
graph = DiGraph(nbPixel, weighted = true)
for n in range(nbPixel) :
    pixelRGBValues = pxl[int(n/5),int(n%5)]
    pixelTotalRGBValue = pixelRGBValues[0]+pixelRGBValues[1]+pixelRGBValues[2]

    if ((n + 1) % img.size[0] != 0) :
        nextPixelRGBValues = pxl[int(n/5),int(n%5+1)]
        nextPixelTotalRGBValue = nextPixelRGBValues[0] + nextPixelRGBValues[1] + nextPixelRGBValues[2]
        pixelValueDiff = abs(pixelTotalRGBValue - nextPixelTotalRGBValue)
        graph.add_edge(n, n+1, pixelValueDiff)

    if (n+img.size[1] < nbPixel) :
        nextPixelRGBValues = pxl[int(n/5 + 1),int(n%5)]
        nextPixelTotalRGBValue = nextPixelRGBValues[0] + nextPixelRGBValues[1] + nextPixelRGBValues[2]
        pixelValueDiff = abs(pixelTotalRGBValue - nextPixelTotalRGBValue)
        graph.add_edge(n, n+img.size[1], pixelValueDiff)

    if (n+img.size[1] < nbPixel and (n + 1) % img.size[0] != 0) :
        nextPixelRGBValues = pxl[int(n/5+1),int(n%5+1)]
        nextPixelTotalRGBValue = nextPixelRGBValues[0] + nextPixelRGBValues[1] + nextPixelRGBValues[2]
        pixelValueDiff = abs(pixelTotalRGBValue - nextPixelTotalRGBValue)
        graph.add_edge(n, n+img.size[1]+1, pixelValueDiff)
graph.plot(edge_labels = true)
def d(A,B,graph):
    if A == B :
        return 0
    elif neighbors_out(A) == None:
            return +infinity
        else :
             return min(d(A,B, graph+ pixelRGBValue(A)))
A=0
B=11
d(A,B,graph)
︡1802b028-434a-4b28-bd94-38c3fda9663d︡{"file":{"filename":"/home/user/.sage/temp/project-b41b5796-e563-4449-8928-42e24d0a43fb/658/tmp__cbR3l.svg","show":true,"text":null,"uuid":"660b86b5-37ac-4ba2-9d43-0522be0b2707"},"once":false}︡{"stderr":"Error in lines 35-35\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1234, in execute\n    flags=compile_flags), namespace, locals)\n  File \"\", line 1, in <module>\n  File \"\", line 8, in d\nAttributeError: 'DiGraph' object has no attribute 'remove_nodes_from'\n"}









