# First we will import some libraries
from datetime import datetime
from pytesseract import image_to_string
import cv2
import pytesseract


# Now we will use openCV for read the image and locate the image 
img = cv2.imread('3.png')

# Now we will use this function image_to_string for read the text from image  
text = pytesseract.image_to_string(img)

# datetime object containing current date and time
now = datetime.now()

# call the function 
print(text)

# create and open the output.txt file
imageContents = open("output.txt","w");

# It will write the date & time info in that output.txt file 
imageContents.write("now " + now.strftime("%d/%m/%Y %H:%M:%S"));

# Now add the sentense with concatinate text in the output.txt file
imageContents.write("Read Text From image" + text);

#close the image 
imageContents.close()

