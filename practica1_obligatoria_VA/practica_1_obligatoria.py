import numpy as np
import cv2

img = cv2.imread("image/imgprueba.jpg")

#imgHSV = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

#cv2.imshow('Imagen HSV', imgHSV)
#cv2.waitKey(0)


gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

#cv2.imshow('Imagen gris', gray)

#cv2.waitKey(0)


mser = cv2.MSER_create()
vis = img.copy()
imgHSV = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

regions, rects = mser.detectRegions(gray)
#hulls = [cv2.convexHull(p.reshape(-1, 1, 2)) for p in regions]
#cv2.polylines(vis, hulls, 1, (0, 255, 0))

#cv2.imshow('Imagen detectada', vis)

#cv2.waitKey(0)

for r in rects:
    if(not (r[2]> 1.3*r[3]) | (r[2] < r[3])):
        cv2.rectangle(vis, ((r[0]-(r[2]*0.2)), (r[1]-(r[3]*0.2)), (r[0] + 1.4*r[2]), (r[1] + 1.4*r[3])), (0, 255, 0), 2)
        #roi = imgHSV[r[1]:(r[1]+r[3]), r[0]:(r[0]+r[2]), :]
        #cv2.imshow('Imagen', roi)
        #cv2.waitKey(0)


cv2.imshow('Imagen detectada', vis)

cv2.waitKey(0)