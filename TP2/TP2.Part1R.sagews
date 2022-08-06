︠7eee115d-5701-459e-a9a2-78deae874fcfs︠
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


︡06ebb2c2-84f6-4088-a76a-082f883bc545︡{"file":{"filename":"/home/user/.sage/temp/project-b41b5796-e563-4449-8928-42e24d0a43fb/1194/tmp_civ15g.svg","show":true,"text":null,"uuid":"d6714a90-21b8-4b95-aa60-63331165e419"},"once":false}︡{"done":true}










