import sys
import serial
from time import sleep


def readFile(filename):
	port = "/dev/ttyACM0"
	lines = []

	#ser = serial.Serial(port, 57600, timeout=0)
	ser = serial.Serial(port, 115200, timeout=0)

	with open(filename, 'r') as f:
		lineno = 0
		for line in f:
			lineno += 1

			ser.write(line)
			ser.flush()
			print 'sent', lineno, line

#			if len(line) > 0 and line[-1] == '\n':
#				ser.write(line)
#				ser.flush()
#				print 'sent', lineno, line

			for r in range(1):
				data = ser.read(9999)
				if len(data) > 0:
					print '						recv:', data


	ser.close()
	return

def readstdin():
	port = "/dev/ttyACM0"
	lines = []

	#ser = serial.Serial(port, 57600, timeout=0)
	ser = serial.Serial(port, 115200, timeout=0)

	lineno = 0
	for line in sys.stdin:
	    lineno += 1

	    ser.write(line)
	    ser.flush()
	    print 'sent', lineno, line

	    for r in range(1):
		data = ser.read(9999)
		if len(data) > 0:
			print '						recv:', data

	return


readstdin()
#readFile('test.py')
