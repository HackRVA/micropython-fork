# 1 "assetList.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "assetList.c"
# 9 "assetList.c"
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
# 10 "assetList.c" 2
# 1 "./include/assets.h" 1


void doAudio();
void drawAsset(unsigned char assetId);
void drawLCD1(unsigned char assetId, int frame);
void drawLCD2(unsigned char assetId, int frame);
void drawLCD4(unsigned char assetId, int frame);
void drawLCD8(unsigned char assetId, int frame);
void setNote(unsigned short freq, unsigned short dur) ;
void setBeep(unsigned short freq);

void nextNote_cb(unsigned char assetId, int frame);
void nextMIDI_cb(unsigned char assetId, int frame) ;


;
# 11 "assetList.c" 2
# 1 "./include/colors.h" 1
# 12 "assetList.c" 2
# 28 "assetList.c"
# 1 "./include/font8x8.xbm" 1


static unsigned char font8x8_bits[] = {
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x08,
   0x08, 0x00, 0x08, 0x00, 0x00, 0x14, 0x14, 0x14, 0x00, 0x00, 0x00, 0x00,
   0x14, 0x14, 0x3e, 0x14, 0x3e, 0x14, 0x14, 0x00, 0x08, 0x1c, 0x0a, 0x1c,
   0x28, 0x1c, 0x08, 0x00, 0x00, 0x04, 0x14, 0x08, 0x14, 0x10, 0x00, 0x00,
   0x04, 0x0a, 0x0a, 0x04, 0x0a, 0x0a, 0x14, 0x00, 0x00, 0x08, 0x08, 0x08,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x04, 0x04, 0x04, 0x04, 0x08, 0x00,
   0x00, 0x04, 0x08, 0x08, 0x08, 0x08, 0x04, 0x00, 0x00, 0x00, 0x12, 0x0c,
   0x1e, 0x0c, 0x12, 0x00, 0x00, 0x00, 0x08, 0x08, 0x3e, 0x08, 0x08, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00,
   0x1e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x1c, 0x08,
   0x00, 0x10, 0x10, 0x08, 0x04, 0x02, 0x02, 0x00, 0x00, 0x08, 0x14, 0x14,
   0x14, 0x14, 0x08, 0x00, 0x00, 0x08, 0x0c, 0x08, 0x08, 0x08, 0x1c, 0x00,
   0x00, 0x0c, 0x12, 0x10, 0x0c, 0x02, 0x1e, 0x00, 0x00, 0x1e, 0x08, 0x0c,
   0x10, 0x12, 0x0c, 0x00, 0x00, 0x08, 0x0c, 0x0a, 0x1e, 0x08, 0x08, 0x00,
   0x00, 0x1e, 0x02, 0x0e, 0x10, 0x12, 0x0c, 0x00, 0x00, 0x0c, 0x02, 0x0e,
   0x12, 0x12, 0x0c, 0x00, 0x00, 0x1e, 0x10, 0x08, 0x08, 0x04, 0x04, 0x00,
   0x00, 0x0c, 0x12, 0x0c, 0x12, 0x12, 0x0c, 0x00, 0x00, 0x0c, 0x12, 0x12,
   0x1c, 0x10, 0x0c, 0x00, 0x00, 0x00, 0x0c, 0x0c, 0x00, 0x0c, 0x0c, 0x00,
   0x00, 0x00, 0x18, 0x18, 0x00, 0x18, 0x08, 0x04, 0x00, 0x10, 0x08, 0x04,
   0x04, 0x08, 0x10, 0x00, 0x00, 0x00, 0x00, 0x1e, 0x00, 0x1e, 0x00, 0x00,
   0x00, 0x04, 0x08, 0x10, 0x10, 0x08, 0x04, 0x00, 0x00, 0x08, 0x14, 0x10,
   0x08, 0x00, 0x08, 0x00, 0x18, 0x24, 0x32, 0x2a, 0x2a, 0x12, 0x04, 0x18,
   0x00, 0x0c, 0x12, 0x12, 0x1e, 0x12, 0x12, 0x00, 0x00, 0x0e, 0x12, 0x0e,
   0x12, 0x12, 0x0e, 0x00, 0x00, 0x0c, 0x12, 0x02, 0x02, 0x12, 0x0c, 0x00,
   0x00, 0x0e, 0x12, 0x12, 0x12, 0x12, 0x0e, 0x00, 0x00, 0x1e, 0x02, 0x0e,
   0x02, 0x02, 0x1e, 0x00, 0x00, 0x1e, 0x02, 0x0e, 0x02, 0x02, 0x02, 0x00,
   0x00, 0x0c, 0x12, 0x02, 0x1a, 0x12, 0x0c, 0x00, 0x00, 0x12, 0x12, 0x1e,
   0x12, 0x12, 0x12, 0x00, 0x00, 0x1c, 0x08, 0x08, 0x08, 0x08, 0x1c, 0x00,
   0x00, 0x1c, 0x08, 0x08, 0x08, 0x0a, 0x04, 0x00, 0x00, 0x12, 0x0a, 0x06,
   0x0a, 0x0a, 0x12, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x1e, 0x00,
   0x00, 0x12, 0x1e, 0x1e, 0x12, 0x12, 0x12, 0x00, 0x00, 0x12, 0x16, 0x1e,
   0x1a, 0x1a, 0x12, 0x00, 0x00, 0x0c, 0x12, 0x12, 0x12, 0x12, 0x0c, 0x00,
   0x00, 0x0e, 0x12, 0x12, 0x0e, 0x02, 0x02, 0x00, 0x00, 0x0c, 0x12, 0x12,
   0x16, 0x1a, 0x0c, 0x10, 0x00, 0x0e, 0x12, 0x12, 0x0e, 0x12, 0x12, 0x00,
   0x00, 0x0c, 0x12, 0x04, 0x08, 0x12, 0x0c, 0x00, 0x00, 0x1c, 0x08, 0x08,
   0x08, 0x08, 0x08, 0x00, 0x00, 0x12, 0x12, 0x12, 0x12, 0x12, 0x0c, 0x00,
   0x00, 0x12, 0x12, 0x12, 0x12, 0x0c, 0x0c, 0x00, 0x00, 0x12, 0x12, 0x12,
   0x1e, 0x1e, 0x12, 0x00, 0x00, 0x12, 0x12, 0x0c, 0x0c, 0x12, 0x12, 0x00,
   0x00, 0x22, 0x22, 0x14, 0x08, 0x08, 0x08, 0x00, 0x00, 0x1e, 0x10, 0x08,
   0x04, 0x02, 0x1e, 0x00, 0x00, 0x1c, 0x04, 0x04, 0x04, 0x04, 0x1c, 0x00,
   0x00, 0x02, 0x02, 0x04, 0x08, 0x10, 0x10, 0x00, 0x00, 0x1c, 0x10, 0x10,
   0x10, 0x10, 0x1c, 0x00, 0x00, 0x08, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1e, 0x00, 0x04, 0x08, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1c, 0x12, 0x12, 0x1c, 0x00,
   0x00, 0x02, 0x02, 0x0e, 0x12, 0x12, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x18,
   0x04, 0x04, 0x18, 0x00, 0x00, 0x10, 0x10, 0x1c, 0x12, 0x12, 0x1c, 0x00,
   0x00, 0x00, 0x00, 0x0c, 0x1a, 0x06, 0x0c, 0x00, 0x00, 0x08, 0x14, 0x04,
   0x0e, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x12, 0x1c, 0x10, 0x0c,
   0x00, 0x02, 0x02, 0x0e, 0x12, 0x12, 0x12, 0x00, 0x00, 0x08, 0x00, 0x0c,
   0x08, 0x08, 0x1c, 0x00, 0x00, 0x10, 0x00, 0x10, 0x10, 0x10, 0x14, 0x08,
   0x00, 0x02, 0x02, 0x12, 0x0e, 0x12, 0x12, 0x00, 0x00, 0x0c, 0x08, 0x08,
   0x08, 0x08, 0x1c, 0x00, 0x00, 0x00, 0x00, 0x16, 0x2a, 0x2a, 0x2a, 0x00,
   0x00, 0x00, 0x00, 0x0e, 0x12, 0x12, 0x12, 0x00, 0x00, 0x00, 0x00, 0x0c,
   0x12, 0x12, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x12, 0x0e, 0x02, 0x02,
   0x00, 0x00, 0x00, 0x1c, 0x12, 0x1c, 0x10, 0x10, 0x00, 0x00, 0x00, 0x0a,
   0x16, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x18, 0x0c, 0x10, 0x0c, 0x00,
   0x00, 0x04, 0x04, 0x0e, 0x04, 0x14, 0x08, 0x00, 0x00, 0x00, 0x00, 0x12,
   0x12, 0x12, 0x1c, 0x00, 0x00, 0x00, 0x00, 0x14, 0x14, 0x14, 0x08, 0x00,
   0x00, 0x00, 0x00, 0x22, 0x2a, 0x2a, 0x14, 0x00, 0x00, 0x00, 0x00, 0x12,
   0x0c, 0x0c, 0x12, 0x00, 0x00, 0x00, 0x00, 0x12, 0x12, 0x1c, 0x12, 0x0c,
   0x00, 0x00, 0x00, 0x1e, 0x08, 0x04, 0x1e, 0x00, 0x18, 0x04, 0x08, 0x06,
   0x08, 0x04, 0x18, 0x00, 0x00, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00,
   0x06, 0x08, 0x04, 0x18, 0x04, 0x08, 0x06, 0x00, 0x00, 0x14, 0x0a, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00 };
# 29 "assetList.c" 2




const static char BW_cmap[2][3] = {
{ 32, 32, 32 },
{ 64, 192, 64 },
};
# 49 "assetList.c"
const struct asset assetList[] = {




      { FONT, PICTURE1BIT, 1024, 8, 8, (const char *)BW_cmap, (const char *)font8x8_bits, (drawLCD1) },



};
