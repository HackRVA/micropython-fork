#print('word ', list(x+1 for x in range(4)), end=' eol\n')
#for i in range(4): print(i)

import pybadge
p=pybadge
p.red(10)
p.blue(40)
p.green(5)




p.FbClear()

p.FbColor(0b1111111111111111)

p.backlight(0)

p.backlight(128)

p.backlight(255)



p.FbColor(0b0010000100011111)
p.FbMove(1,1)
p.FbWriteLine('ABCDEFGH')
x=0
y=0
p.FbMove(64+x,32+y)
p.FbLine(64+x,64+y)
p.FbLine(32+x,64+y)
p.FbLine(32+x,32+y)
p.FbLine(64+x,32+y)
#p.FbPushBuffer()

p.FbColor(0b0010011111100100)
p.FbMoveRelative(-10,10)
p.FbWriteLine('ijklmnop')
x=20
y=20
p.FbMove(64+x,32+y)
p.FbLine(64+x,64+y)
p.FbLine(32+x,64+y)
p.FbLine(32+x,32+y)
p.FbLine(64+x,32+y)
#p.FbPushBuffer()

p.FbColor(0b1111100100000100)
p.FbMoveRelative(-30,10)
p.FbWriteLine('QRstuvWXYZ')

x=10
y=40
p.FbMove(64+x,32+y)
p.FbLine(64+x,64+y)
p.FbLine(32+x,64+y)
p.FbLine(32+x,32+y)
p.FbLine(64+x,32+y)
#p.FbPushBuffer()

p.LCDputPixel(30, 30, 0b0000000000011111)
p.LCDputPixel(31, 30, 0b0000000000011111)

p.LCDputPixel(32, 31, 0b0000011111100000)
p.LCDputPixel(33, 31, 0b0000011111100000)

p.LCDputPixel(34, 32, 0b1111100000000000)
p.LCDputPixel(35, 32, 0b1111100000000000)

p.FbPushBuffer()

p.deinit()

#END
