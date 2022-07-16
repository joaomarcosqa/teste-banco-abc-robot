import sys
import os
import platform
from os import path

sys.path.append(path.abspath('./'))
# import config

for param in sys.argv[1:]:
    # comando a ser usado python run.py -test
    if param == "-test":
        command = "robot -d ./logs ./testes "
os.system(command)
