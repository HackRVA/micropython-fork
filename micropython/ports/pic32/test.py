#print('word ', list(x+1 for x in range(4)), end=' eol\n')
#for i in range(4): print(i)

import pybadge
p=pybadge
p.red(10)
p.backlight(200)

p.FbClear()

p.FbColor(0b1111111111111111)

p.FbMove(10,10)

p.FbMoveRelative(0,10)
p.FbWriteLine('ABCDEFGH')
p.FbPushBuffer()

p.FbMove(32,32)
p.FbLine(64,32)
p.FbLine(64,64)
p.FbLine(32,64)
p.FbLine(32,32)
p.FbPushBuffer()

p.FbMoveRelative(-10,10)
p.FbWriteLine('IJKLMNOP')
p.FbPushBuffer()

p.FbMoveRelative(-30,10)
p.FbWriteLine('QRSTUVWXYZ')
p.FbPushBuffer()

#END
