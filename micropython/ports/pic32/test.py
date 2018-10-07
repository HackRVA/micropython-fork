print('word ', list(x+1 for x in range(4)), end=' eol\n')

for i in range(4):
	print(i)


import pybadge
p=pybadge
p.red(10)
p.backlight(200)


p.FbColor(0b1111111111111111)

p.FbMoveRelative(0,10)
p.FbWriteLine('ABCDEFGH')
p.FbPushBuffer()

p.FbMoveRelative(0,10)
p.FbWriteLine('IJKLMNOP')
p.FbPushBuffer()

p.FbMoveRelative(0,10)
p.FbWriteLine('IJKLMNOP')
p.FbPushBuffer()




p.FbSwapBuffers()
