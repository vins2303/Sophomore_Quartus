import cv2
import numpy as np
import sys
import os


frame = cv2.imread(sys.argv[1])

file_name = os.path.splitext(sys.argv[1])[0]
arr = open("image/" + file_name + "_Arr.txt", "w")

wire = open("image/" + file_name + "_img.txt", 'w')

(heigh, width, _) = frame.shape
print("Heigh = ", heigh)
print("Width = ", width)

arr.write("wire [ 0 : " + str(width-1) + "] " + sys.argv[2] + "[ 0 : " + str(heigh-1) + "];\n")

for row in range(heigh):
    
    line = ""
    for col in range(width):
        if(frame[row][col][0] < 200):
            line += "1"
        else:
            line += "0"
    print(line)
    wire.write(line+"\n") 
    line ="assign " + sys.argv[2] + "[" + str(row) + "] = " + str(width) + "'b" + line + ";"
    arr.write( line + "\n")


wire.close()
arr.close()