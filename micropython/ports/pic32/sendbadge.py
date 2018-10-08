import sys
from time import sleep

def pause():
    sleep(0.4)


def readFile(filename):
    lines = []
    outline = []

    acmw = open("/dev/ttyACM0",'w')

    with open(filename, 'r') as f:
        lineno = 0
        for line in f:
            lineno += 1
            if len(line) > 0 and line[-1] == '\n':
            	acmw.write(line)
            	acmw.flush()
		pause()
#            	print(outline)
#            	acmr.read(outline)
		

    return

readFile('test.py')

