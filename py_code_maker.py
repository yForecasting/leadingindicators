#
#   PYTHON !
#
# Coding simplifier
import os
import sys
from os import path
import shutil

# ------------------
print("python script run from ", os.getcwd())
# ------------------
cwd = os.getcwd()
# os.chdir(cwd)
# input
# set directories
# os.listdir()
path_manual = "man"
path_functions = "R"

# fun_name = input("Function name: ")
fun_name = r.mf_name
fun_file = fun_name + ".R"
fun_doc = fun_name + ".Rd"

# Function R - file
os.chdir(path_functions)
reassure = "y"
if path.exists(fun_doc):
  reassure = input("This function already exists, overwrite??? (y/n): ")

if reassure == "y":
  # Make the file
  myFile = open(fun_file, 'w')
  # Content
  myFile.write(fun_name + " <- function() {\n")
  myFile.write("\n")
  myFile.write("}\n")
  # Close the file
  myFile.close()
  
os.chdir(cwd)
# documentation
os.chdir(path_manual)
reassure = "y"
if path.exists(fun_doc):
  reassure = input("This function documentation already exists, overwrite??? (y/n): ")

title = input("Title: ")
use = input("Basic use: ")
description = input("Description: ")
example = input("Example: ")
  
if reassure == "y":
  # Make the file
  myFile = open(fun_doc, 'w')
  # Content
  myFile.write("\\name{"+fun_name+"}\n")
  myFile.write("\\alias{"+fun_name+"}\n")
  myFile.write("\\title{"+title+"}\n")
  myFile.write("\\usage{\n")
  myFile.write(use+"\n")
  myFile.write("}\n")
  myFile.write("\\description{\n")
  myFile.write(description+"\n")
  myFile.write("}\n")
  myFile.write("\\examples{\n")
  myFile.write(example+"\n")
  myFile.write("}\n")
  # Close the file
  myFile.close()

os.chdir(cwd)
