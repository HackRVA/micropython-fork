#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "py/compile.h"
#include "py/runtime.h"
#include "py/repl.h"
#include "py/mperrno.h"

char da_heap[0x5FFF];
void badgeled() {};

void do_str(const char *src, mp_parse_input_kind_t input_kind) {
    nlr_buf_t nlr;
    if (nlr_push(&nlr) == 0) {
        mp_lexer_t *lex = mp_lexer_new_from_str_len(MP_QSTR__lt_stdin_gt_, src, strlen(src), 0);
        qstr source_name = lex->source_name;
        mp_parse_tree_t parse_tree = mp_parse(lex, input_kind);
        mp_obj_t module_fun = mp_compile(&parse_tree, source_name, MP_EMIT_OPT_NONE, true);
        mp_call_function_0(module_fun);
        nlr_pop();
    } else {
        // uncaught exception
        mp_obj_print_exception(&mp_plat_print, (mp_obj_t)nlr.ret_val);
    }
}

int main(int argc, char **argv) {
    mp_init();
    do_str("print('hello world!', list(x+1 for x in range(10)), end='eol\\n')", MP_PARSE_SINGLE_INPUT);
    do_str("for i in range(10):\n  print(i)", MP_PARSE_FILE_INPUT);
    mp_deinit();
    return 0;
}

mp_lexer_t *mp_lexer_new_from_file(const char *filename) {
    mp_raise_OSError(MP_ENOENT);
}

mp_import_stat_t mp_import_stat(const char *path) {
    return MP_IMPORT_STAT_NO_EXIST;
}

mp_obj_t mp_builtin_open(size_t n_args, const mp_obj_t *args, mp_map_t *kwargs) {
    return mp_const_none;
}
MP_DEFINE_CONST_FUN_OBJ_KW(mp_builtin_open_obj, 1, mp_builtin_open);

void nlr_jump_fail(void *val) {
    while (1);
}

void NORETURN __fatal_error(const char *msg) {
    while (1);
}

#ifndef NDEBUG
void MP_WEAK __assert_func(const char *file, int line, const char *func, const char *expr) {
    printf("Assertion '%s' failed, at file %s:%d\n", expr, file, line);
    __fatal_error("Assertion failed");
}
#else
void __assert_fail(const char *file, int line, const char *func, const char *expr) {
    printf("Assertion '%s' failed, at file %s:%d\n", expr, file, line);
    __fatal_error("Assertion failed");
}
#endif

/*
int _lseek() {return 0;}
int _read() {return 0;}
int _write() {return 0;}
int _close() {return 0;}
void _exit(int x) {for(;;){}}
int _sbrk() {return 0;}
int _kill() {return 0;}
int _getpid() {return 0;}
int _fstat() {return 0;}
int _isatty() {return 0;}
*/



void *malloc(size_t n) {
   return(umm_malloc(n));
}

void *calloc(size_t nmemb, size_t size) {
   return umm_calloc(nmemb, size);
}

void *realloc(void *ptr, size_t size) 
{
   return umm_realloc(ptr, size);
}

void free(void *p) 
{
   umm_free(p);
}

#include <stdio.h>
int printf(const char *m, ...) {
   int i;

   for (i=0; ; i++)
	if (m[i] != 0) putc(0, m[i]);

   return 0;
}

#include <stdarg.h>
int vprintf(const char *format, va_list ap) {return 0;}
int vsnprintf(char *str,  size_t  size,  const  char  *format, va_list ap) {return 0;}

/*
#undef putchar
int putchar(int c) {return 0;}
int puts(const char *s) {return 0;}

void _start(void) {main(0, NULL);}
*/
