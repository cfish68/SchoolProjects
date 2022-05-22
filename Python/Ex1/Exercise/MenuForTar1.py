#
#  Example program for Targil 1
#
import math
from myboolfuncs import *
#
# Area calculation program  
def rectangleArea(w, h):
     return w*h
#
def circleArea(r):
     return math.pi * r**2
#
#
def SphereArea(r):
    return 4 * math.pi * r**2
#
def ConeArea(r, h):
    return math.pi * r * (r + math.sqrt(h**2 + r**2))
#
def PyramidArea(a, h):
    return a**2 + ((2 * a) * (math.sqrt(((a**2)/4)+ h**2)))
# printing the menu options
# printing the menu options
def prtMenu(shapes):
   for i in range(len(shapes)):
      print (i+1, shapes[i])
   return
#
# main program
#
print ("Welcome to the Area calculation program")
print ("---------------------------------------\n")  
# Print out the menu
shapes = ("Rectangle", "Circle", "Sphere", "Cone", "Square Pyramid")
while True:
    print ("\nPlease select a shape (press 0 to quit):")
    prtMenu(shapes) 
    # Get the user's choice: 
    shape = input("> ")
    # Calculate the area: 
    if shape == "1":
         height = getNumber("Please enter the height: ")    
         width  = getNumber("Please enter the width: ")
         area = rectangleArea(width, height)
         print ("The area is", area)
         continue
    elif shape == "2":
         radius = getNumber("Please enter the radius: ")
         area   = circleArea(radius)
         print ("The area is", area)
         continue
    elif shape == "3":
         radius = getNumber("please enter the radius: ")
         area = SphereArea
         print ("The area is", area)
         continue
    elif shape == "4":
          radius = getNumber("please enter the radius: ")
          height = getNumber("please enter the height: ")
          area = ConeArea(radius, height)
          print("The area is", area)
          continue
    elif shape == "5":
          a = getNumber("please enter the length of base edge: ")
          h = getNumber("Please enter the Height: ")
          area = PyramidArea(a, h)
          print("The area is", area)
          continue
     
    elif shape == "0":
         print ("Bye!")
         break
    else:     
         print ("Invalid shape")
