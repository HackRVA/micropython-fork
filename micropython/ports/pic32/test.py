#print('word ', list(x+1 for x in range(4)), end=' eol\n')
#for i in range(4): print(i)

import pybadge
p=pybadge
p.red(10)
p.blue(40)
p.backlight(255)

p.FbClear()

p.FbColor(0b1111111111111111)

p.FbMove(64,32)
p.FbLine(64,64)
p.FbLine(32,64)
p.FbLine(32,32)
p.FbLine(64,32)
p.FbPushBuffer()

p.FbMoveX(0)
p.FbMoveRelative(0,10)
p.FbWriteLine('ABCDEFGH')
p.FbPushBuffer()

p.FbMoveRelative(-10,10)
p.FbWriteLine('ijklmnop')
p.FbPushBuffer()

p.FbMoveRelative(-30,10)
p.FbWriteLine('QRSTUVWXYZ')
p.FbPushBuffer()

p.deinit()

#END
