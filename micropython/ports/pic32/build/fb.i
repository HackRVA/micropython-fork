# 1 "fb.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "fb.c"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 1 3






# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 1 3
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/ansi.h" 1 3
# 76 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 2 3


typedef long unsigned int size_t;




typedef long int ptrdiff_t;







typedef int wchar_t;




typedef unsigned int wint_t;
# 8 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 2 3
# 24 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 unsigned quot;
 unsigned rem;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;



extern double atof(const char *);
extern long double _datof(const char *);
extern float strtof(const char *, char **);
extern double strtod(const char *, char **);
extern long double _dstrtod(const char *, char **);
# 60 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 3
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);
extern long strtol(const char *, char **, int);
extern unsigned long strtoul(const char *, char **, int);

extern long long atoll(const char *);
extern long long strtoll(const char *, char **, int);
extern unsigned long long strtoull(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

extern void

__attribute__((noreturn))

abort(void);

extern void

__attribute__((noreturn))

exit(int);

extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;


extern int __attribute__((weak)) system(const char *);




extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);
extern char * ltoa(char * buf, long val, int base);


extern char * ultoa(char * buf, unsigned long val, int base);
# 2 "fb.c" 2

# 1 "./include/fb.h" 1






enum {
    FB_UNUSED=0,
    FB_CLEAR,
    FB_BACKGROUND_COLOR,
    FB_COLOR,
    FB_TRANSPARENT_MASK,
    FB_MOVE,
};

struct vector8_t {
   unsigned char x;
   unsigned char y;
};

struct framebuffer_t {
   unsigned short *buffer;
   struct vector8_t pos;
   unsigned char font;
   unsigned char fontHeight;

   unsigned short color;
   unsigned short BGcolor;
   unsigned short transMask;
   unsigned short transIndex;
   unsigned short changed;
};

extern struct framebuffer_t G_Fb;

void FbInit() ;
int FbFrameDone();
void FbMove(unsigned char x, unsigned char y);
void FbMoveRelative(char x, char y);
void FbMoveX(unsigned char x);
void FbMoveY(unsigned char y);
void FbClear();
void FbColor(unsigned short color);
void FbBackgroundColor(unsigned short color);

void FbTransparency(unsigned short transparencyMask);
void FbSprite(unsigned char picId, unsigned char imageNo);
void FbCharacter(unsigned char charin);
void FbFilledRectangle(unsigned char width, unsigned char height);
void FbPoint(unsigned char x, unsigned char y);
void FbPrintChar(unsigned char charin, unsigned char x, unsigned char y);
void FbHorizontalLine(unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2);
void FbVerticalLine(unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2);
void FbLine(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1);
void FbWriteLine(unsigned char *string);
void FbWriteString(unsigned char *string, unsigned char length);
void FbRectangle(unsigned char width, unsigned char height);

void FbImage(unsigned char assetId, unsigned char seqNum);
void FbImage8bit(unsigned char assetId, unsigned char seqNum);
void FbImage4bit(unsigned char assetId, unsigned char seqNum);
void FbImage2bit(unsigned char assetId, unsigned char seqNum);
void FbImage1bit(unsigned char assetId, unsigned char seqNum);
# 4 "fb.c" 2
# 1 "./include/S6B33.h" 1







void S6B33_init_device(void);

void S6B33_rect(int x, int y, int width, int height);

void S6B33_pixel(unsigned short pixel);
# 5 "fb.c" 2
# 1 "./include/assetList.h" 1
# 11 "./include/assetList.h"
enum {




    FONT,

    LASTASSET,
};

enum {
    AUDIO,
    MIDI,
    PICTURE1BIT,
    PICTURE2BIT,
    PICTURE4BIT,
    PICTURE8BIT,
};

struct asset {
    unsigned char assetId;
    unsigned char type;
    unsigned char seqNum;
    unsigned short x;
    unsigned short y;
    const char *data_cmap;
    const char *pixdata;
    void (*datacb)(unsigned char, int);
};
extern const struct asset assetList[];
# 6 "fb.c" 2
# 1 "./include/colors.h" 1
# 7 "fb.c" 2


struct framebuffer_t G_Fb;
# 25 "fb.c"
unsigned short LCDbuffer[(132 * 132)] ;



void FbInit() {
    G_Fb.buffer = LCDbuffer;
    G_Fb.pos.x = 0;
    G_Fb.pos.y = 0;
    G_Fb.font = FONT;
    G_Fb.fontHeight = 8;

    G_Fb.color = 255;
    G_Fb.BGcolor = 0;
    G_Fb.transMask = 0;
    G_Fb.transIndex = 0;
    G_Fb.changed = 0;
}

void FbMoveX(unsigned char x)
{
    G_Fb.pos.x = x;

    if (G_Fb.pos.x > 132) G_Fb.pos.x = 132 -1;
}

void FbMoveY(unsigned char y)
{
    G_Fb.pos.y = y;

    if (G_Fb.pos.y > 132) G_Fb.pos.y = 132 -1;
}

void FbMoveRelative(char x, char y)
{
    FbMove(G_Fb.pos.x + x, G_Fb.pos.y + y);
}

void FbMove(unsigned char x, unsigned char y)
{
    G_Fb.pos.x = x;
    G_Fb.pos.y = y;

    if (G_Fb.pos.x > 132) G_Fb.pos.x = 132 -1;
    if (G_Fb.pos.y > 132) G_Fb.pos.y = 132 -1;
}

void FbClear()
{
    unsigned short i;

    S6B33_rect(0, 0, 132 -1, 132 -1);

    G_Fb.pos.x = 0;
    G_Fb.pos.y = 0;
    G_Fb.changed = 0;

    for (i=0; i<(132 * 132); i++) {
 LCDbuffer[(i)] = G_Fb.BGcolor;
 S6B33_pixel(G_Fb.BGcolor);
    }
}

void FbTransparency(unsigned short transparencyMask)
{
    G_Fb.transMask = transparencyMask;
}

void FbColor(unsigned short color)
{
    G_Fb.color = color;
}

void FbBackgroundColor(unsigned short color)
{
    G_Fb.BGcolor = color;
}

void FbImage(unsigned char assetId, unsigned char seqNum)
{
    switch (assetList[assetId].type) {
 case PICTURE1BIT:
     FbImage1bit(assetId, seqNum);
     break;

 case PICTURE2BIT:
     FbImage2bit(assetId, seqNum);
     break;

 case PICTURE4BIT:
     FbImage4bit(assetId, seqNum);
     break;

 case PICTURE8BIT:
     FbImage8bit(assetId, seqNum);
     break;

 default:
     break;
    }
}

void FbImage8bit(unsigned char assetId, unsigned char seqNum)
{
    unsigned char y, yEnd, x;
    unsigned char *pixdata, pixbyte, ci, *cmap, r, g, b;
    unsigned short pixel;


    yEnd = G_Fb.pos.y + assetList[assetId].y;
    if (yEnd > 132) yEnd = 132 -1;

    for (y = G_Fb.pos.y; y < yEnd; y++) {
 pixdata = (unsigned char *)(&(assetList[assetId].pixdata[ (y - G_Fb.pos.y) * assetList[assetId].x + seqNum * assetList[assetId].x * assetList[assetId].y]));

 for (x = 0; x < assetList[assetId].x; x++) {
  if ((x + G_Fb.pos.x) >= 132) continue;

  pixbyte = *pixdata;

  ci = pixbyte;
  if (ci != G_Fb.transIndex) {
      cmap = (unsigned char *)(&(assetList[assetId].data_cmap[ci * 3]));

      r = cmap[0];
      g = cmap[1];
      b = cmap[2];

      pixel = ((((r >> 3) & 0b11111) << 11 )
     | (((g >> 3) & 0b11111) << 6 )
     | (((b >> 3) & 0b11111) )) ;

      if (G_Fb.transMask > 0)
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = (LCDbuffer[(x + G_Fb.pos.x)] & (~G_Fb.transMask)) | (pixel & G_Fb.transMask);
      else
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = pixel;
  }
  pixdata++;
 }
    }
    G_Fb.changed = 1;
}

void FbImage4bit(unsigned char assetId, unsigned char seqNum)
{
    unsigned char y, yEnd, x;
    unsigned char *pixdata, pixbyte, ci, *cmap, r, g, b;
    unsigned short pixel;


    yEnd = G_Fb.pos.y + assetList[assetId].y;
    if (yEnd >= 132) yEnd = 132 -1;

    for (y = G_Fb.pos.y; y < yEnd; y++) {
 pixdata = (unsigned char *)(&(assetList[assetId].pixdata[ (y - G_Fb.pos.y) * (assetList[assetId].x >> 1) + seqNum * (assetList[assetId].x >> 1) * assetList[assetId].y]));

 for (x = 0; x < (assetList[assetId].x); ) {
  pixbyte = *pixdata++;


  if ((x + G_Fb.pos.x) > (132 -1)) continue;

  ci = ((pixbyte >> 4) & 0xF);
  if (ci != G_Fb.transIndex) {
      cmap = (unsigned char *)(&(assetList[assetId].data_cmap[ci * 3]));

      r = cmap[0];
      g = cmap[1];
      b = cmap[2];

      pixel = ((((r >> 3) & 0b11111) << 11 )
     | (((g >> 3) & 0b11111) << 6 )
     | (((b >> 3) & 0b11111) )) ;


      if (G_Fb.transMask > 0)
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = (LCDbuffer[(x + G_Fb.pos.x)] & (~G_Fb.transMask)) | (pixel & G_Fb.transMask);
      else
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = pixel;
  }
  x++;


  if ((x + G_Fb.pos.x) > (132 -1)) continue;

  ci = pixbyte & 0xF;
  if (ci != G_Fb.transIndex) {
      cmap = (unsigned char *)(&(assetList[assetId].data_cmap[ci * 3]));

      r = cmap[0];
      g = cmap[1];
      b = cmap[2];

      pixel = ((((r >> 3) & 0b11111) << 11 )
     | (((g >> 3) & 0b11111) << 6 )
     | (((b >> 3) & 0b11111) )) ;


      if (G_Fb.transMask > 0)
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = (LCDbuffer[(x + G_Fb.pos.x)] & (~G_Fb.transMask)) | (pixel & G_Fb.transMask);
      else
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = pixel;
  }
  x++;
 }
    }
    G_Fb.changed = 1;
}

void FbImage2bit(unsigned char assetId, unsigned char seqNum)
{
    unsigned char y, yEnd, x;
    unsigned char *pixdata, pixbyte, ci, *cmap, r, g, b;
    unsigned short pixel;


    yEnd = G_Fb.pos.y + assetList[assetId].y;
    if (yEnd > 132) yEnd = 132 -1;

    for (y = G_Fb.pos.y; y < yEnd; y++) {
  pixdata = (unsigned char *)(&(assetList[assetId].pixdata[ (y - G_Fb.pos.y) * (assetList[assetId].x >> 2) + seqNum * (assetList[assetId].x >> 2) * assetList[assetId].y]));

  for (x = 0; x < (assetList[assetId].x); ) {
     pixbyte = *pixdata++;


     if ((x + G_Fb.pos.x) > (132 -1)) continue;

     ci = ((pixbyte >> 6) & 0x3);
     if (ci != G_Fb.transIndex) {
  cmap = (unsigned char *)(&(assetList[assetId].data_cmap[ci * 3]));

  r = cmap[0];
  g = cmap[1];
  b = cmap[2];

  pixel = ((((r >> 3) & 0b11111) << 11 )
     | (((g >> 3) & 0b11111) << 6 )
     | (((b >> 3) & 0b11111) )) ;


  if (G_Fb.transMask > 0)
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = (LCDbuffer[(x + G_Fb.pos.x)] & (~G_Fb.transMask)) | (pixel & G_Fb.transMask);
  else
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = pixel;
     }
     x++;


     if ((x + G_Fb.pos.x) > (132 -1)) continue;

     ci = ((pixbyte >> 4) & 0x3);
     if (ci != G_Fb.transIndex) {
  cmap = (unsigned char *)(&(assetList[assetId].data_cmap[ci * 3]));

  r = cmap[0];
  g = cmap[1];
  b = cmap[2];

  pixel = ((((r >> 3) & 0b11111) << 11 )
     | (((g >> 3) & 0b11111) << 6 )
     | (((b >> 3) & 0b11111) )) ;


  if (G_Fb.transMask > 0)
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = (LCDbuffer[(x + G_Fb.pos.x)] & (~G_Fb.transMask)) | (pixel & G_Fb.transMask);
  else
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = pixel;
     }
     x++;


     if ((x + G_Fb.pos.x) > (132 -1)) continue;

     ci = ((pixbyte >> 2) & 0x3);
     if (ci != G_Fb.transIndex) {
  cmap = (unsigned char *)(&(assetList[assetId].data_cmap[ci * 3]));

  r = cmap[0];
  g = cmap[1];
  b = cmap[2];

  pixel = ((((r >> 3) & 0b11111) << 11 )
     | (((g >> 3) & 0b11111) << 6 )
     | (((b >> 3) & 0b11111) )) ;


  if (G_Fb.transMask > 0)
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = (LCDbuffer[(x + G_Fb.pos.x)] & (~G_Fb.transMask)) | (pixel & G_Fb.transMask);
  else
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = pixel;
     }
     x++;


     if ((x + G_Fb.pos.x) > (132 -1)) continue;

     ci = ((pixbyte) & 0x3);
     if (ci != G_Fb.transIndex) {
  cmap = (unsigned char *)(&(assetList[assetId].data_cmap[ci * 3]));

  r = cmap[0];
  g = cmap[1];
  b = cmap[2];

  pixel = ((((r >> 3) & 0b11111) << 11 )
     | (((g >> 3) & 0b11111) << 6 )
     | (((b >> 3) & 0b11111) )) ;


  if (G_Fb.transMask > 0)
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = (LCDbuffer[(x + G_Fb.pos.x)] & (~G_Fb.transMask)) | (pixel & G_Fb.transMask);
  else
   LCDbuffer[(y * 132 + x + G_Fb.pos.x)] = pixel;
     }
     x++;
 }
    }
    G_Fb.changed = 1;
}

void FbImage1bit(unsigned char assetId, unsigned char seqNum)
{
    unsigned char y, yEnd, x;
    unsigned char *pixdata, pixbyte, ci;


    yEnd = G_Fb.pos.y + assetList[assetId].y;

    if (yEnd >= 132) yEnd = 132 -1;

    for (y=G_Fb.pos.y; y < yEnd; y++) {
 pixdata = (unsigned char *)(&(assetList[assetId].pixdata[ seqNum * (assetList[assetId].x >> 3) * assetList[assetId].y + (y - G_Fb.pos.y) * (assetList[assetId].x >> 3)]));

 for (x=0; x < (assetList[assetId].x); x += 8) {
     unsigned char bit;

     pixbyte = *pixdata++;

     for (bit=0; bit < 8; bit++) {
  if ((bit + G_Fb.pos.x) > (132 -1)) continue;

  ci = ((pixbyte >> bit) & 0x1);
  if (ci != G_Fb.transIndex) {
      if (ci == 0) {
   if (G_Fb.transMask > 0)
       LCDbuffer[(y * 132 + x + G_Fb.pos.x + bit)] = (LCDbuffer[(y * 132 + x + G_Fb.pos.x + bit)] & (~G_Fb.transMask)) | (G_Fb.BGcolor & G_Fb.transMask);
   else
       LCDbuffer[(y * 132 + x + G_Fb.pos.x + bit)] = G_Fb.BGcolor;
      } else {
   if (G_Fb.transMask > 0)
       LCDbuffer[(y * 132 + x + G_Fb.pos.x + bit)] = (LCDbuffer[(y * 132 + x + G_Fb.pos.x + bit)] & (~G_Fb.transMask)) | (G_Fb.color & G_Fb.transMask);
   else
       LCDbuffer[(y * 132 + x + G_Fb.pos.x + bit)] = G_Fb.color;
      }
  }
     }
 }
    }
    G_Fb.changed = 1;
}






void FbTransparentIndex(unsigned short color)
{
    G_Fb.transIndex = color;
}
# 445 "fb.c"
void FbCharacter(unsigned char charin)
{
    if ((charin < 32) | (charin > 126)) charin = 32;

    charin -= 32;
    FbImage1bit(G_Fb.font, charin);



    G_Fb.changed = 1;
}


void FbFilledRectangle(unsigned char width, unsigned char height)
{
    unsigned int y, x, endX, endY;

    endX = G_Fb.pos.x + width;
    if (endX >= 132) endX = 132;

    endY = G_Fb.pos.y + height;
    if (endY >= 132) endY = 132;

    for (y=G_Fb.pos.y; y < endY; y++) {
 for (x=G_Fb.pos.x; x < endX; x++) {
     LCDbuffer[(y * 132 + x)] = G_Fb.color;
 }
    }
    FbMove(endX, endY);
    G_Fb.changed = 1;
}

void FbPoint(unsigned char x, unsigned char y)
{
    if (x >= 132) x = 132;
    if (y >= 132) y = 132;

    LCDbuffer[(y * 132 + x)] = G_Fb.color;

    FbMove(x, y);
    G_Fb.changed = 1;
}

void FbHorizontalLine(unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2)
{
    unsigned char x;

    FbMove(x1, y1);
    for (x=x1; x<x2; x++) FbPoint(x, y1);

    G_Fb.changed = 1;
}

void FbVerticalLine(unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2)
{
    unsigned char y;

    FbMove(x1, y1);
    for (y=y1; y<y2; y++) FbPoint(x1, y);
    G_Fb.changed = 1;
}

void FbLine1(unsigned char x1, unsigned char y1)
{
    FbLine(G_Fb.pos.x, G_Fb.pos.y, x1, y1);
}

void FbLine(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1)
{
    int dx = abs(x1 - x0), sx = x0 < x1 ? 1 : -1;
    int dy = abs(y1 - y0), sy = y0 < y1 ? 1 : -1;
    int err = (dx > dy ? dx : -dy)/2, e2;

    for(;;) {
 FbPoint(x0, y0);

 if (x0==x1 && y0==y1) break;

 e2 = err;
 if (e2 > -dx) { err -= dy; x0 += sx; }
 if (e2 < dy) { err += dx; y0 += sy; }
    }
    G_Fb.changed = 1;
}

void FbWriteLine(unsigned char *string)
{
    unsigned char j, x, y;



    x = G_Fb.pos.x;
    y = G_Fb.pos.y;

    for(j=0; string[j] != 0; j++) {
 FbMove(x + j * assetList[G_Fb.font].x, y);
 FbCharacter(string[j]);
    }
    G_Fb.changed = 1;

}

void FbWriteString(unsigned char *string, unsigned char length)
{
    unsigned char j, x, y;

    x = G_Fb.pos.x;
    y = G_Fb.pos.y;

    for(j=0; j<length; j++) {
 if ((string[j] == '\n') | ((x + (j+1) * assetList[G_Fb.font].x) > (132 -1))) {
    x = 0;
    y += 10;
 }

 FbMove(x + j * assetList[G_Fb.font].x, y);
 FbCharacter(string[j]);

    }
    G_Fb.changed = 1;
}

void FbRectangle(unsigned char width, unsigned char height)
{
    unsigned char x, y;

    x = G_Fb.pos.x;
    y = G_Fb.pos.y;
    FbVerticalLine(x, y, x, y + height);
    FbVerticalLine(x + width, y, x + width, y + height);

    FbHorizontalLine(x, y, x + width, y );
    FbHorizontalLine(x, y + height, x + width, y + height);
    G_Fb.changed = 1;
}





void FbSwapBuffers()
{
    unsigned int i;



    if (G_Fb.changed == 0) return;

    S6B33_rect(0, 0, 132 -1, 132 -1);
    for (i=0; i<(132 * 132); i++) {
 S6B33_pixel(LCDbuffer[(i)]);
 LCDbuffer[(i)] = G_Fb.BGcolor;
    }
    G_Fb.changed = 0;

    G_Fb.pos.x = 0;
    G_Fb.pos.y = 0;
}
