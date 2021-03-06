#include "py/nlr.h"
#include "py/obj.h"
#include "py/runtime.h"
#include "py/binary.h"
//#include "portmodules.h"

STATIC mp_obj_t pybadge_red(mp_obj_t r) ;
STATIC mp_obj_t pybadge_green(mp_obj_t g) ;
STATIC mp_obj_t pybadge_blue(mp_obj_t b) ;
STATIC mp_obj_t pybadge_flare(mp_obj_t b) ;
STATIC mp_obj_t pybadge_backlight(mp_obj_t b) ;
STATIC mp_obj_t pybadge_FbMoveX(mp_obj_t x) ;
STATIC mp_obj_t pybadge_FbMoveY(mp_obj_t y) ;
STATIC mp_obj_t pybadge_FbMove(mp_obj_t x,mp_obj_t y) ;
STATIC mp_obj_t pybadge_FbMoveRelative(mp_obj_t x,mp_obj_t y) ;
STATIC mp_obj_t pybadge_FbClear() ;
STATIC mp_obj_t pybadge_FbColor(mp_obj_t c) ;
STATIC mp_obj_t pybadge_FbBackgroundColor(mp_obj_t c) ;
STATIC mp_obj_t pybadge_FbCharacter(mp_obj_t ch) ;
STATIC mp_obj_t pybadge_FbPoint(mp_obj_t x, mp_obj_t y) ;
STATIC mp_obj_t pybadge_FbWriteLine(mp_obj_t string) ;
STATIC mp_obj_t pybadge_FbWriteString(mp_obj_t string, mp_obj_t len) ;
STATIC mp_obj_t pybadge_FbSwapBuffers() ;
STATIC mp_obj_t pybadge_FbPushBuffer() ;
STATIC mp_obj_t pybadge_FbLine(mp_obj_t x1, mp_obj_t y1) ;
STATIC mp_obj_t pybadge_LCDBars() ;
STATIC mp_obj_t pybadge_LCDcolor(mp_obj_t c) ;
STATIC mp_obj_t pybadge_LCDputPixel(mp_obj_t x, mp_obj_t y, mp_obj_t col) ;
STATIC mp_obj_t pybadge_button() ;
STATIC mp_obj_t pybadge_deinit() ;


STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_red_obj, pybadge_red);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_green_obj, pybadge_green);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_blue_obj, pybadge_blue);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_flare_obj, pybadge_flare);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_backlight_obj, pybadge_backlight);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_FbMoveX_obj, pybadge_FbMoveX);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_FbMoveY_obj, pybadge_FbMoveY);
STATIC MP_DEFINE_CONST_FUN_OBJ_2(pybadge_FbMove_obj, pybadge_FbMove);
STATIC MP_DEFINE_CONST_FUN_OBJ_2(pybadge_FbMoveRelative_obj, pybadge_FbMoveRelative);
STATIC MP_DEFINE_CONST_FUN_OBJ_0(pybadge_FbClear_obj, pybadge_FbClear);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_FbColor_obj, pybadge_FbColor);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_FbBackgroundColor_obj, pybadge_FbBackgroundColor);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_FbCharacter_obj, pybadge_FbCharacter);
STATIC MP_DEFINE_CONST_FUN_OBJ_2(pybadge_FbPoint_obj, pybadge_FbPoint);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_FbWriteLine_obj, pybadge_FbWriteLine);
STATIC MP_DEFINE_CONST_FUN_OBJ_2(pybadge_FbWriteString_obj, pybadge_FbWriteString);
STATIC MP_DEFINE_CONST_FUN_OBJ_0(pybadge_FbSwapBuffers_obj, pybadge_FbSwapBuffers);
STATIC MP_DEFINE_CONST_FUN_OBJ_0(pybadge_FbPushBuffer_obj, pybadge_FbPushBuffer);
STATIC MP_DEFINE_CONST_FUN_OBJ_2(pybadge_FbLine_obj, pybadge_FbLine);
STATIC MP_DEFINE_CONST_FUN_OBJ_0(pybadge_LCDBars_obj, pybadge_LCDBars);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_LCDcolor_obj, pybadge_LCDcolor);
STATIC MP_DEFINE_CONST_FUN_OBJ_3(pybadge_LCDputPixel_obj, pybadge_LCDputPixel);
STATIC MP_DEFINE_CONST_FUN_OBJ_1(pybadge_button_obj, pybadge_button);
STATIC MP_DEFINE_CONST_FUN_OBJ_0(pybadge_deinit_obj, pybadge_deinit);


STATIC const mp_map_elem_t pybadge_globals_table[] = {
    { MP_OBJ_NEW_QSTR(MP_QSTR___name__), MP_OBJ_NEW_QSTR(MP_QSTR_pybadge) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_red), (mp_obj_t)&(pybadge_red_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_green), (mp_obj_t)&(pybadge_green_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_blue), (mp_obj_t)&(pybadge_blue_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_flare), (mp_obj_t)&(pybadge_flare_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_backlight), (mp_obj_t)&(pybadge_backlight_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbMoveX), (mp_obj_t)&(pybadge_FbMoveX_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbMoveY), (mp_obj_t)&(pybadge_FbMoveY_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbMove), (mp_obj_t)&(pybadge_FbMove_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbMoveRelative), (mp_obj_t)&(pybadge_FbMoveRelative_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbClear), (mp_obj_t)&(pybadge_FbClear_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbColor), (mp_obj_t)&(pybadge_FbColor_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbBackgroundColor), (mp_obj_t)&(pybadge_FbBackgroundColor_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbCharacter), (mp_obj_t)&(pybadge_FbCharacter_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbPoint), (mp_obj_t)&(pybadge_FbPoint_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbWriteLine), (mp_obj_t)&(pybadge_FbWriteLine_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbWriteString), (mp_obj_t)&(pybadge_FbWriteString_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbSwapBuffers), (mp_obj_t)&(pybadge_FbSwapBuffers_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbPushBuffer), (mp_obj_t)&(pybadge_FbPushBuffer_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_FbLine), (mp_obj_t)&(pybadge_FbLine_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_LCDBars), (mp_obj_t)&(pybadge_LCDBars_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_LCDcolor), (mp_obj_t)&(pybadge_LCDcolor_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_LCDputPixel), (mp_obj_t)&(pybadge_LCDputPixel_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_button), (mp_obj_t)&(pybadge_button_obj) },
    { MP_OBJ_NEW_QSTR(MP_QSTR_deinit), (mp_obj_t)&(pybadge_deinit_obj) },
};

STATIC MP_DEFINE_CONST_DICT (
    mp_module_pybadge_globals,
    pybadge_globals_table
);

const mp_obj_module_t mp_module_pybadge = {
    .base = { &mp_type_module },
    .globals = (mp_obj_dict_t*)&mp_module_pybadge_globals,
};


STATIC mp_obj_t pybadge_red(mp_obj_t r) {
    red((unsigned char)mp_obj_get_int(r));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_green(mp_obj_t g) {
    green((unsigned char)mp_obj_get_int(g));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_blue(mp_obj_t b) {
    blue((unsigned char)mp_obj_get_int(b));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_flare(mp_obj_t f) {
    flare_leds((unsigned char)mp_obj_get_int(f));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_backlight(mp_obj_t bright) {
    backlight((unsigned char)mp_obj_get_int(bright));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbMoveX(mp_obj_t x) {
    FbMoveX((unsigned char)mp_obj_get_int(x));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbMoveY(mp_obj_t y) {
    FbMoveY((unsigned char)mp_obj_get_int(y));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbMove(mp_obj_t x, mp_obj_t y) {
    FbMove((unsigned char)mp_obj_get_int(x), (unsigned char)mp_obj_get_int(y));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbMoveRelative(mp_obj_t x, mp_obj_t y) {
    FbMoveRelative((unsigned char)mp_obj_get_int(x), (unsigned char)mp_obj_get_int(y));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbClear() {
    FbClear();

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbColor(mp_obj_t c) {
    FbColor((unsigned short)mp_obj_get_int(c));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbBackgroundColor(mp_obj_t c) {
    FbBackgroundColor((unsigned char)mp_obj_get_int(c));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbCharacter(mp_obj_t ch) {
    FbCharacter((unsigned char)mp_obj_get_int(ch));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbPoint(mp_obj_t x, mp_obj_t y) {
    FbPoint((unsigned char)mp_obj_get_int(x), (unsigned char)mp_obj_get_int(y));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbWriteLine(mp_obj_t string) {
    FbWriteLine(mp_obj_str_get_str(string));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbWriteString(mp_obj_t string, mp_obj_t len) {
    FbWriteString(mp_obj_str_get_str(string), (unsigned char)mp_obj_get_int(len));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbSwapBuffers() {
    FbSwapBuffers();

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbPushBuffer() {
    FbPushBuffer();

    return mp_const_none;
}

STATIC mp_obj_t pybadge_FbLine(mp_obj_t x1, mp_obj_t y1) {
    // do a move first, then line
    FbLine1(
	(unsigned char)mp_obj_get_int(x1), (unsigned char)mp_obj_get_int(y1)
    );

    return mp_const_none;
}

STATIC mp_obj_t pybadge_LCDBars() {
    LCDBars();

    return mp_const_none;
}

STATIC mp_obj_t pybadge_LCDcolor(mp_obj_t c) {
    LCDcolor((unsigned short)mp_obj_get_int(c));

    return mp_const_none;
}

STATIC mp_obj_t pybadge_LCDputPixel(mp_obj_t x, mp_obj_t y, mp_obj_t col) {
    LCDputPixel((unsigned char)mp_obj_get_int(x),
	(unsigned char)mp_obj_get_int(y),
	(unsigned short)mp_obj_get_int(col)
    );

    return mp_const_none;
}

STATIC mp_obj_t pybadge_button(mp_obj_t badgeYear) {
    int year = mp_obj_get_int(badgeYear);
    return MP_OBJ_NEW_SMALL_INT(button(year));
}

STATIC mp_obj_t pybadge_deinit() {
    mp_deinit();

    return mp_const_none;
}


/*
void FbHorizontalLine(unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2)
void FbVerticalLine(unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2)
void FbRectangle(unsigned char width, unsigned char height)
*/
