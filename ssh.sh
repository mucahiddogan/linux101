import os
import subprocess
from subprocess import call

dizi = list()

for i in range(0,256):
    dizi.append(i)

for i in range(0,256):
    dizi[i] = str(dizi[i])
    cmd = "ssh pi@ipaddrr." + dizi[i]
   
    os.system(cmd)
