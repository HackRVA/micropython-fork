# 1 "../../py/pystack.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../py/pystack.c"
# 27 "../../py/pystack.c"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 1 3
# 19 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 1 3
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/ansi.h" 1 3
# 76 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 2 3


typedef long unsigned int size_t;




typedef long int ptrdiff_t;







typedef int wchar_t;




typedef unsigned int wint_t;
# 20 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 2 3



# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 1 3
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 3
typedef __builtin_va_list __va_list;





typedef __builtin_va_list __gnuc_va_list;
# 126 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 3
typedef __va_list va_list;
# 24 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 2 3





extern struct _iobuf {
 char * _ptr;
 int _cnt;
 char * _base;
 unsigned short _flag;
 short _file;
 size_t _size;
} _iob[8];


    extern struct _iobuf *_Files;
# 49 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern struct _tfiles
        {
          char tname[81];
          struct _iobuf * tfp;
        } * _tfilesptr;
# 137 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern int _mon_getc (int canblock);
    extern void _mon_putc (char c);
    extern void _mon_puts (const char * s);
    extern void _mon_write (const char * s, unsigned int count);
# 230 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern int _flsbuf(char, struct _iobuf *);
    extern int _filbuf(struct _iobuf *);
    extern int fclose(struct _iobuf *);
    extern int fflush(struct _iobuf *);
    extern int fgetc(struct _iobuf *);
    extern int ungetc(int, struct _iobuf *);
    extern int fputc(int, struct _iobuf *);
    extern int getw(struct _iobuf *);
    extern int putw(int, struct _iobuf *);
    extern int fputs(const char *, struct _iobuf *);
    extern int fread(void *, size_t, size_t, struct _iobuf *);
    extern size_t fwrite(const void *, size_t, size_t, struct _iobuf *);
    extern int fseek(struct _iobuf *, long, int);
    extern int rewind(struct _iobuf *);
    extern void setbuf(struct _iobuf *, char *);
    extern int setvbuf(struct _iobuf *, char *, int, size_t);
    extern int fprintf(struct _iobuf *, const char *, ...);
    extern int _fprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_eE (struct _iobuf *, const char *, ...); extern int _fprintf_eEfF (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _fprintf_eEgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEs (struct _iobuf *, const char *, ...); extern int _fprintf_fF (struct _iobuf *, const char *, ...); extern int _fprintf_fFgG (struct _iobuf *, const char *, ...); extern int _fprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_fFs (struct _iobuf *, const char *, ...); extern int _fprintf_gG (struct _iobuf *, const char *, ...); extern int _fprintf_gGs (struct _iobuf *, const char *, ...); extern int _fprintf_s (struct _iobuf *, const char *, ...); extern int _fprintf (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_eE (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfF (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEs (struct _iobuf *, const char *, ...); extern int _dfprintf_fF (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_fFs (struct _iobuf *, const char *, ...); extern int _dfprintf_gG (struct _iobuf *, const char *, ...); extern int _dfprintf_gGs (struct _iobuf *, const char *, ...); extern int _dfprintf_s (struct _iobuf *, const char *, ...); extern int _dfprintf (struct _iobuf *, const char *, ...);
    extern int fscanf(struct _iobuf *, const char *, ...);
    extern int _fscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_eE (struct _iobuf *, const char *, ...); extern int _fscanf_eEfF (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _fscanf_eEgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEs (struct _iobuf *, const char *, ...); extern int _fscanf_fF (struct _iobuf *, const char *, ...); extern int _fscanf_fFgG (struct _iobuf *, const char *, ...); extern int _fscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_fFs (struct _iobuf *, const char *, ...); extern int _fscanf_gG (struct _iobuf *, const char *, ...); extern int _fscanf_gGs (struct _iobuf *, const char *, ...); extern int _fscanf_s (struct _iobuf *, const char *, ...); extern int _fscanf (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_eE (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfF (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEs (struct _iobuf *, const char *, ...); extern int _dfscanf_fF (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_fFs (struct _iobuf *, const char *, ...); extern int _dfscanf_gG (struct _iobuf *, const char *, ...); extern int _dfscanf_gGs (struct _iobuf *, const char *, ...); extern int _dfscanf_s (struct _iobuf *, const char *, ...); extern int _dfscanf (struct _iobuf *, const char *, ...);
    extern int vfprintf(struct _iobuf *, const char *, va_list);
    extern int _vfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_eE (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fF (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_gG (struct _iobuf *, const char *, va_list); extern int _vfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_s (struct _iobuf *, const char *, va_list); extern int _vfprintf (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eE (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_s (struct _iobuf *, const char *, va_list); extern int _dvfprintf (struct _iobuf *, const char *, va_list);
    extern int vfscanf(struct _iobuf *, const char *, va_list);
    extern int _vfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_eE (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fF (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_gG (struct _iobuf *, const char *, va_list); extern int _vfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_s (struct _iobuf *, const char *, va_list); extern int _vfscanf (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eE (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_s (struct _iobuf *, const char *, va_list); extern int _dvfscanf (struct _iobuf *, const char *, va_list);
    extern int remove(const char *);
    extern int rename(const char *, const char *);
    extern struct _iobuf * fopen(const char *, const char *);
    extern struct _iobuf * freopen(const char *, const char *, struct _iobuf *);
    extern struct _iobuf * fdopen(int, const char *);
    extern long ftell(struct _iobuf *);
    extern char * fgets(char *, int, struct _iobuf *);
    extern void perror(const char *);
    extern char* _bufallo (void);
    extern void _buffree (char *pp);
    extern char * tmpnam(char *);
    extern struct _iobuf * tmpfile(void);





    extern void (*_atexitptr)(void);
# 302 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern char * gets(char *);
    extern int puts(const char *);

    extern int scanf(const char *, ...);
    extern int _scanf_cdeEfFgGnopsuxX (const char *, ...); extern int _scanf_cdeEfFgGnopuxX (const char *, ...); extern int _scanf_cdeEfFnopsuxX (const char *, ...); extern int _scanf_cdeEfFnopuxX (const char *, ...); extern int _scanf_cdeEgGnopsuxX (const char *, ...); extern int _scanf_cdeEgGnopuxX (const char *, ...); extern int _scanf_cdeEnopsuxX (const char *, ...); extern int _scanf_cdeEnopuxX (const char *, ...); extern int _scanf_cdfFgGnopsuxX (const char *, ...); extern int _scanf_cdfFgGnopuxX (const char *, ...); extern int _scanf_cdfFnopsuxX (const char *, ...); extern int _scanf_cdfFnopuxX (const char *, ...); extern int _scanf_cdgGnopsuxX (const char *, ...); extern int _scanf_cdgGnopuxX (const char *, ...); extern int _scanf_cdnopsuxX (const char *, ...); extern int _scanf_cdnopuxX (const char *, ...); extern int _scanf_eE (const char *, ...); extern int _scanf_eEfF (const char *, ...); extern int _scanf_eEfFgG (const char *, ...); extern int _scanf_eEfFgGs (const char *, ...); extern int _scanf_eEfFs (const char *, ...); extern int _scanf_eEgG (const char *, ...); extern int _scanf_eEgGs (const char *, ...); extern int _scanf_eEs (const char *, ...); extern int _scanf_fF (const char *, ...); extern int _scanf_fFgG (const char *, ...); extern int _scanf_fFgGs (const char *, ...); extern int _scanf_fFs (const char *, ...); extern int _scanf_gG (const char *, ...); extern int _scanf_gGs (const char *, ...); extern int _scanf_s (const char *, ...); extern int _scanf (const char *, ...); extern int _dscanf_cdeEfFgGnopsuxX (const char *, ...); extern int _dscanf_cdeEfFgGnopuxX (const char *, ...); extern int _dscanf_cdeEfFnopsuxX (const char *, ...); extern int _dscanf_cdeEfFnopuxX (const char *, ...); extern int _dscanf_cdeEgGnopsuxX (const char *, ...); extern int _dscanf_cdeEgGnopuxX (const char *, ...); extern int _dscanf_cdeEnopsuxX (const char *, ...); extern int _dscanf_cdeEnopuxX (const char *, ...); extern int _dscanf_cdfFgGnopsuxX (const char *, ...); extern int _dscanf_cdfFgGnopuxX (const char *, ...); extern int _dscanf_cdfFnopsuxX (const char *, ...); extern int _dscanf_cdfFnopuxX (const char *, ...); extern int _dscanf_cdgGnopsuxX (const char *, ...); extern int _dscanf_cdgGnopuxX (const char *, ...); extern int _dscanf_cdnopsuxX (const char *, ...); extern int _dscanf_cdnopuxX (const char *, ...); extern int _dscanf_eE (const char *, ...); extern int _dscanf_eEfF (const char *, ...); extern int _dscanf_eEfFgG (const char *, ...); extern int _dscanf_eEfFgGs (const char *, ...); extern int _dscanf_eEfFs (const char *, ...); extern int _dscanf_eEgG (const char *, ...); extern int _dscanf_eEgGs (const char *, ...); extern int _dscanf_eEs (const char *, ...); extern int _dscanf_fF (const char *, ...); extern int _dscanf_fFgG (const char *, ...); extern int _dscanf_fFgGs (const char *, ...); extern int _dscanf_fFs (const char *, ...); extern int _dscanf_gG (const char *, ...); extern int _dscanf_gGs (const char *, ...); extern int _dscanf_s (const char *, ...); extern int _dscanf (const char *, ...);
    extern int sscanf(const char *, const char *, ...);
    extern int _sscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdnopsuxX (const char *, const char *, ...); extern int _sscanf_cdnopuxX (const char *, const char *, ...); extern int _sscanf_eE (const char *, const char *, ...); extern int _sscanf_eEfF (const char *, const char *, ...); extern int _sscanf_eEfFgG (const char *, const char *, ...); extern int _sscanf_eEfFgGs (const char *, const char *, ...); extern int _sscanf_eEfFs (const char *, const char *, ...); extern int _sscanf_eEgG (const char *, const char *, ...); extern int _sscanf_eEgGs (const char *, const char *, ...); extern int _sscanf_eEs (const char *, const char *, ...); extern int _sscanf_fF (const char *, const char *, ...); extern int _sscanf_fFgG (const char *, const char *, ...); extern int _sscanf_fFgGs (const char *, const char *, ...); extern int _sscanf_fFs (const char *, const char *, ...); extern int _sscanf_gG (const char *, const char *, ...); extern int _sscanf_gGs (const char *, const char *, ...); extern int _sscanf_s (const char *, const char *, ...); extern int _sscanf (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdnopuxX (const char *, const char *, ...); extern int _dsscanf_eE (const char *, const char *, ...); extern int _dsscanf_eEfF (const char *, const char *, ...); extern int _dsscanf_eEfFgG (const char *, const char *, ...); extern int _dsscanf_eEfFgGs (const char *, const char *, ...); extern int _dsscanf_eEfFs (const char *, const char *, ...); extern int _dsscanf_eEgG (const char *, const char *, ...); extern int _dsscanf_eEgGs (const char *, const char *, ...); extern int _dsscanf_eEs (const char *, const char *, ...); extern int _dsscanf_fF (const char *, const char *, ...); extern int _dsscanf_fFgG (const char *, const char *, ...); extern int _dsscanf_fFgGs (const char *, const char *, ...); extern int _dsscanf_fFs (const char *, const char *, ...); extern int _dsscanf_gG (const char *, const char *, ...); extern int _dsscanf_gGs (const char *, const char *, ...); extern int _dsscanf_s (const char *, const char *, ...); extern int _dsscanf (const char *, const char *, ...);

    extern int vprintf(const char *, va_list);
    extern int _vprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _vprintf_cdeEfFnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFnopuxX (const char *, va_list); extern int _vprintf_cdeEgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEgGnopuxX (const char *, va_list); extern int _vprintf_cdeEnopsuxX (const char *, va_list); extern int _vprintf_cdeEnopuxX (const char *, va_list); extern int _vprintf_cdfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdfFgGnopuxX (const char *, va_list); extern int _vprintf_cdfFnopsuxX (const char *, va_list); extern int _vprintf_cdfFnopuxX (const char *, va_list); extern int _vprintf_cdgGnopsuxX (const char *, va_list); extern int _vprintf_cdgGnopuxX (const char *, va_list); extern int _vprintf_cdnopsuxX (const char *, va_list); extern int _vprintf_cdnopuxX (const char *, va_list); extern int _vprintf_eE (const char *, va_list); extern int _vprintf_eEfF (const char *, va_list); extern int _vprintf_eEfFgG (const char *, va_list); extern int _vprintf_eEfFgGs (const char *, va_list); extern int _vprintf_eEfFs (const char *, va_list); extern int _vprintf_eEgG (const char *, va_list); extern int _vprintf_eEgGs (const char *, va_list); extern int _vprintf_eEs (const char *, va_list); extern int _vprintf_fF (const char *, va_list); extern int _vprintf_fFgG (const char *, va_list); extern int _vprintf_fFgGs (const char *, va_list); extern int _vprintf_fFs (const char *, va_list); extern int _vprintf_gG (const char *, va_list); extern int _vprintf_gGs (const char *, va_list); extern int _vprintf_s (const char *, va_list); extern int _vprintf (const char *, va_list); extern int _dvprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEnopsuxX (const char *, va_list); extern int _dvprintf_cdeEnopuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdfFnopsuxX (const char *, va_list); extern int _dvprintf_cdfFnopuxX (const char *, va_list); extern int _dvprintf_cdgGnopsuxX (const char *, va_list); extern int _dvprintf_cdgGnopuxX (const char *, va_list); extern int _dvprintf_cdnopsuxX (const char *, va_list); extern int _dvprintf_cdnopuxX (const char *, va_list); extern int _dvprintf_eE (const char *, va_list); extern int _dvprintf_eEfF (const char *, va_list); extern int _dvprintf_eEfFgG (const char *, va_list); extern int _dvprintf_eEfFgGs (const char *, va_list); extern int _dvprintf_eEfFs (const char *, va_list); extern int _dvprintf_eEgG (const char *, va_list); extern int _dvprintf_eEgGs (const char *, va_list); extern int _dvprintf_eEs (const char *, va_list); extern int _dvprintf_fF (const char *, va_list); extern int _dvprintf_fFgG (const char *, va_list); extern int _dvprintf_fFgGs (const char *, va_list); extern int _dvprintf_fFs (const char *, va_list); extern int _dvprintf_gG (const char *, va_list); extern int _dvprintf_gGs (const char *, va_list); extern int _dvprintf_s (const char *, va_list); extern int _dvprintf (const char *, va_list);
    extern int vsprintf(char *, const char *, va_list);
    extern int _vsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdnopuxX (char *, const char *, va_list); extern int _vsprintf_eE (char *, const char *, va_list); extern int _vsprintf_eEfF (char *, const char *, va_list); extern int _vsprintf_eEfFgG (char *, const char *, va_list); extern int _vsprintf_eEfFgGs (char *, const char *, va_list); extern int _vsprintf_eEfFs (char *, const char *, va_list); extern int _vsprintf_eEgG (char *, const char *, va_list); extern int _vsprintf_eEgGs (char *, const char *, va_list); extern int _vsprintf_eEs (char *, const char *, va_list); extern int _vsprintf_fF (char *, const char *, va_list); extern int _vsprintf_fFgG (char *, const char *, va_list); extern int _vsprintf_fFgGs (char *, const char *, va_list); extern int _vsprintf_fFs (char *, const char *, va_list); extern int _vsprintf_gG (char *, const char *, va_list); extern int _vsprintf_gGs (char *, const char *, va_list); extern int _vsprintf_s (char *, const char *, va_list); extern int _vsprintf (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopuxX (char *, const char *, va_list); extern int _dvsprintf_eE (char *, const char *, va_list); extern int _dvsprintf_eEfF (char *, const char *, va_list); extern int _dvsprintf_eEfFgG (char *, const char *, va_list); extern int _dvsprintf_eEfFgGs (char *, const char *, va_list); extern int _dvsprintf_eEfFs (char *, const char *, va_list); extern int _dvsprintf_eEgG (char *, const char *, va_list); extern int _dvsprintf_eEgGs (char *, const char *, va_list); extern int _dvsprintf_eEs (char *, const char *, va_list); extern int _dvsprintf_fF (char *, const char *, va_list); extern int _dvsprintf_fFgG (char *, const char *, va_list); extern int _dvsprintf_fFgGs (char *, const char *, va_list); extern int _dvsprintf_fFs (char *, const char *, va_list); extern int _dvsprintf_gG (char *, const char *, va_list); extern int _dvsprintf_gGs (char *, const char *, va_list); extern int _dvsprintf_s (char *, const char *, va_list); extern int _dvsprintf (char *, const char *, va_list);
    extern int vscanf(const char *, va_list ap);
    extern int _vscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEnopuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFnopuxX (const char *, va_list ap); extern int _vscanf_cdgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdgGnopuxX (const char *, va_list ap); extern int _vscanf_cdnopsuxX (const char *, va_list ap); extern int _vscanf_cdnopuxX (const char *, va_list ap); extern int _vscanf_eE (const char *, va_list ap); extern int _vscanf_eEfF (const char *, va_list ap); extern int _vscanf_eEfFgG (const char *, va_list ap); extern int _vscanf_eEfFgGs (const char *, va_list ap); extern int _vscanf_eEfFs (const char *, va_list ap); extern int _vscanf_eEgG (const char *, va_list ap); extern int _vscanf_eEgGs (const char *, va_list ap); extern int _vscanf_eEs (const char *, va_list ap); extern int _vscanf_fF (const char *, va_list ap); extern int _vscanf_fFgG (const char *, va_list ap); extern int _vscanf_fFgGs (const char *, va_list ap); extern int _vscanf_fFs (const char *, va_list ap); extern int _vscanf_gG (const char *, va_list ap); extern int _vscanf_gGs (const char *, va_list ap); extern int _vscanf_s (const char *, va_list ap); extern int _vscanf (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdnopsuxX (const char *, va_list ap); extern int _dvscanf_cdnopuxX (const char *, va_list ap); extern int _dvscanf_eE (const char *, va_list ap); extern int _dvscanf_eEfF (const char *, va_list ap); extern int _dvscanf_eEfFgG (const char *, va_list ap); extern int _dvscanf_eEfFgGs (const char *, va_list ap); extern int _dvscanf_eEfFs (const char *, va_list ap); extern int _dvscanf_eEgG (const char *, va_list ap); extern int _dvscanf_eEgGs (const char *, va_list ap); extern int _dvscanf_eEs (const char *, va_list ap); extern int _dvscanf_fF (const char *, va_list ap); extern int _dvscanf_fFgG (const char *, va_list ap); extern int _dvscanf_fFgGs (const char *, va_list ap); extern int _dvscanf_fFs (const char *, va_list ap); extern int _dvscanf_gG (const char *, va_list ap); extern int _dvscanf_gGs (const char *, va_list ap); extern int _dvscanf_s (const char *, va_list ap); extern int _dvscanf (const char *, va_list ap);
    extern int vsscanf(const char *, const char *, va_list);
    extern int _vsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopuxX (const char *, const char *, va_list); extern int _vsscanf_eE (const char *, const char *, va_list); extern int _vsscanf_eEfF (const char *, const char *, va_list); extern int _vsscanf_eEfFgG (const char *, const char *, va_list); extern int _vsscanf_eEfFgGs (const char *, const char *, va_list); extern int _vsscanf_eEfFs (const char *, const char *, va_list); extern int _vsscanf_eEgG (const char *, const char *, va_list); extern int _vsscanf_eEgGs (const char *, const char *, va_list); extern int _vsscanf_eEs (const char *, const char *, va_list); extern int _vsscanf_fF (const char *, const char *, va_list); extern int _vsscanf_fFgG (const char *, const char *, va_list); extern int _vsscanf_fFgGs (const char *, const char *, va_list); extern int _vsscanf_fFs (const char *, const char *, va_list); extern int _vsscanf_gG (const char *, const char *, va_list); extern int _vsscanf_gGs (const char *, const char *, va_list); extern int _vsscanf_s (const char *, const char *, va_list); extern int _vsscanf (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopuxX (const char *, const char *, va_list); extern int _dvsscanf_eE (const char *, const char *, va_list); extern int _dvsscanf_eEfF (const char *, const char *, va_list); extern int _dvsscanf_eEfFgG (const char *, const char *, va_list); extern int _dvsscanf_eEfFgGs (const char *, const char *, va_list); extern int _dvsscanf_eEfFs (const char *, const char *, va_list); extern int _dvsscanf_eEgG (const char *, const char *, va_list); extern int _dvsscanf_eEgGs (const char *, const char *, va_list); extern int _dvsscanf_eEs (const char *, const char *, va_list); extern int _dvsscanf_fF (const char *, const char *, va_list); extern int _dvsscanf_fFgG (const char *, const char *, va_list); extern int _dvsscanf_fFgGs (const char *, const char *, va_list); extern int _dvsscanf_fFs (const char *, const char *, va_list); extern int _dvsscanf_gG (const char *, const char *, va_list); extern int _dvsscanf_gGs (const char *, const char *, va_list); extern int _dvsscanf_s (const char *, const char *, va_list); extern int _dvsscanf (const char *, const char *, va_list);


    extern int snprintf (char *, size_t, const char *, ...);
    extern int _snprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _snprintf_eE (char *, size_t, const char *, ...); extern int _snprintf_eEfF (char *, size_t, const char *, ...); extern int _snprintf_eEfFgG (char *, size_t, const char *, ...); extern int _snprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _snprintf_eEfFs (char *, size_t, const char *, ...); extern int _snprintf_eEgG (char *, size_t, const char *, ...); extern int _snprintf_eEgGs (char *, size_t, const char *, ...); extern int _snprintf_eEs (char *, size_t, const char *, ...); extern int _snprintf_fF (char *, size_t, const char *, ...); extern int _snprintf_fFgG (char *, size_t, const char *, ...); extern int _snprintf_fFgGs (char *, size_t, const char *, ...); extern int _snprintf_fFs (char *, size_t, const char *, ...); extern int _snprintf_gG (char *, size_t, const char *, ...); extern int _snprintf_gGs (char *, size_t, const char *, ...); extern int _snprintf_s (char *, size_t, const char *, ...); extern int _snprintf (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_eE (char *, size_t, const char *, ...); extern int _dsnprintf_eEfF (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFs (char *, size_t, const char *, ...); extern int _dsnprintf_eEgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEs (char *, size_t, const char *, ...); extern int _dsnprintf_fF (char *, size_t, const char *, ...); extern int _dsnprintf_fFgG (char *, size_t, const char *, ...); extern int _dsnprintf_fFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_fFs (char *, size_t, const char *, ...); extern int _dsnprintf_gG (char *, size_t, const char *, ...); extern int _dsnprintf_gGs (char *, size_t, const char *, ...); extern int _dsnprintf_s (char *, size_t, const char *, ...); extern int _dsnprintf (char *, size_t, const char *, ...);
    extern int vsnprintf (char *, size_t, const char *, __va_list);
    extern int _vsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_eE (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fF (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_gG (char *, size_t, const char *, __va_list); extern int _vsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_s (char *, size_t, const char *, __va_list); extern int _vsnprintf (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eE (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_s (char *, size_t, const char *, __va_list); extern int _dvsnprintf (char *, size_t, const char *, __va_list);
    extern int asprintf (char **, const char *, ...);
    extern int _asprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEnopuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFnopuxX (char **, const char *, ...); extern int _asprintf_cdgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdgGnopuxX (char **, const char *, ...); extern int _asprintf_cdnopsuxX (char **, const char *, ...); extern int _asprintf_cdnopuxX (char **, const char *, ...); extern int _asprintf_eE (char **, const char *, ...); extern int _asprintf_eEfF (char **, const char *, ...); extern int _asprintf_eEfFgG (char **, const char *, ...); extern int _asprintf_eEfFgGs (char **, const char *, ...); extern int _asprintf_eEfFs (char **, const char *, ...); extern int _asprintf_eEgG (char **, const char *, ...); extern int _asprintf_eEgGs (char **, const char *, ...); extern int _asprintf_eEs (char **, const char *, ...); extern int _asprintf_fF (char **, const char *, ...); extern int _asprintf_fFgG (char **, const char *, ...); extern int _asprintf_fFgGs (char **, const char *, ...); extern int _asprintf_fFs (char **, const char *, ...); extern int _asprintf_gG (char **, const char *, ...); extern int _asprintf_gGs (char **, const char *, ...); extern int _asprintf_s (char **, const char *, ...); extern int _asprintf (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdnopsuxX (char **, const char *, ...); extern int _dasprintf_cdnopuxX (char **, const char *, ...); extern int _dasprintf_eE (char **, const char *, ...); extern int _dasprintf_eEfF (char **, const char *, ...); extern int _dasprintf_eEfFgG (char **, const char *, ...); extern int _dasprintf_eEfFgGs (char **, const char *, ...); extern int _dasprintf_eEfFs (char **, const char *, ...); extern int _dasprintf_eEgG (char **, const char *, ...); extern int _dasprintf_eEgGs (char **, const char *, ...); extern int _dasprintf_eEs (char **, const char *, ...); extern int _dasprintf_fF (char **, const char *, ...); extern int _dasprintf_fFgG (char **, const char *, ...); extern int _dasprintf_fFgGs (char **, const char *, ...); extern int _dasprintf_fFs (char **, const char *, ...); extern int _dasprintf_gG (char **, const char *, ...); extern int _dasprintf_gGs (char **, const char *, ...); extern int _dasprintf_s (char **, const char *, ...); extern int _dasprintf (char **, const char *, ...);
    extern int vasprintf (char **, const char *, __va_list);
    extern int _vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopuxX (char **, const char *, __va_list); extern int _vasprintf_eE (char **, const char *, __va_list); extern int _vasprintf_eEfF (char **, const char *, __va_list); extern int _vasprintf_eEfFgG (char **, const char *, __va_list); extern int _vasprintf_eEfFgGs (char **, const char *, __va_list); extern int _vasprintf_eEfFs (char **, const char *, __va_list); extern int _vasprintf_eEgG (char **, const char *, __va_list); extern int _vasprintf_eEgGs (char **, const char *, __va_list); extern int _vasprintf_eEs (char **, const char *, __va_list); extern int _vasprintf_fF (char **, const char *, __va_list); extern int _vasprintf_fFgG (char **, const char *, __va_list); extern int _vasprintf_fFgGs (char **, const char *, __va_list); extern int _vasprintf_fFs (char **, const char *, __va_list); extern int _vasprintf_gG (char **, const char *, __va_list); extern int _vasprintf_gGs (char **, const char *, __va_list); extern int _vasprintf_s (char **, const char *, __va_list); extern int _vasprintf (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopuxX (char **, const char *, __va_list); extern int _dvasprintf_eE (char **, const char *, __va_list); extern int _dvasprintf_eEfF (char **, const char *, __va_list); extern int _dvasprintf_eEfFgG (char **, const char *, __va_list); extern int _dvasprintf_eEfFgGs (char **, const char *, __va_list); extern int _dvasprintf_eEfFs (char **, const char *, __va_list); extern int _dvasprintf_eEgG (char **, const char *, __va_list); extern int _dvasprintf_eEgGs (char **, const char *, __va_list); extern int _dvasprintf_eEs (char **, const char *, __va_list); extern int _dvasprintf_fF (char **, const char *, __va_list); extern int _dvasprintf_fFgG (char **, const char *, __va_list); extern int _dvasprintf_fFgGs (char **, const char *, __va_list); extern int _dvasprintf_fFs (char **, const char *, __va_list); extern int _dvasprintf_gG (char **, const char *, __va_list); extern int _dvasprintf_gGs (char **, const char *, __va_list); extern int _dvasprintf_s (char **, const char *, __va_list); extern int _dvasprintf (char **, const char *, __va_list);
    extern int __vasprintf (char **, const char *, __va_list);
    extern int ___vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdnopuxX (char **, const char *, __va_list); extern int ___vasprintf_eE (char **, const char *, __va_list); extern int ___vasprintf_eEfF (char **, const char *, __va_list); extern int ___vasprintf_eEfFgG (char **, const char *, __va_list); extern int ___vasprintf_eEfFgGs (char **, const char *, __va_list); extern int ___vasprintf_eEfFs (char **, const char *, __va_list); extern int ___vasprintf_eEgG (char **, const char *, __va_list); extern int ___vasprintf_eEgGs (char **, const char *, __va_list); extern int ___vasprintf_eEs (char **, const char *, __va_list); extern int ___vasprintf_fF (char **, const char *, __va_list); extern int ___vasprintf_fFgG (char **, const char *, __va_list); extern int ___vasprintf_fFgGs (char **, const char *, __va_list); extern int ___vasprintf_fFs (char **, const char *, __va_list); extern int ___vasprintf_gG (char **, const char *, __va_list); extern int ___vasprintf_gGs (char **, const char *, __va_list); extern int ___vasprintf_s (char **, const char *, __va_list); extern int ___vasprintf (char **, const char *, __va_list); extern int _d__vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_eE (char **, const char *, __va_list); extern int _d__vasprintf_eEfF (char **, const char *, __va_list); extern int _d__vasprintf_eEfFgG (char **, const char *, __va_list); extern int _d__vasprintf_eEfFgGs (char **, const char *, __va_list); extern int _d__vasprintf_eEfFs (char **, const char *, __va_list); extern int _d__vasprintf_eEgG (char **, const char *, __va_list); extern int _d__vasprintf_eEgGs (char **, const char *, __va_list); extern int _d__vasprintf_eEs (char **, const char *, __va_list); extern int _d__vasprintf_fF (char **, const char *, __va_list); extern int _d__vasprintf_fFgG (char **, const char *, __va_list); extern int _d__vasprintf_fFgGs (char **, const char *, __va_list); extern int _d__vasprintf_fFs (char **, const char *, __va_list); extern int _d__vasprintf_gG (char **, const char *, __va_list); extern int _d__vasprintf_gGs (char **, const char *, __va_list); extern int _d__vasprintf_s (char **, const char *, __va_list); extern int _d__vasprintf (char **, const char *, __va_list);







    extern int sprintf(char *, const char *, ...);
    extern int _sprintf_cdeEfFgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEfFgGnopuxX (char *, const char *, ...); extern int _sprintf_cdeEfFnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEfFnopuxX (char *, const char *, ...); extern int _sprintf_cdeEgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEgGnopuxX (char *, const char *, ...); extern int _sprintf_cdeEnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEnopuxX (char *, const char *, ...); extern int _sprintf_cdfFgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdfFgGnopuxX (char *, const char *, ...); extern int _sprintf_cdfFnopsuxX (char *, const char *, ...); extern int _sprintf_cdfFnopuxX (char *, const char *, ...); extern int _sprintf_cdgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdgGnopuxX (char *, const char *, ...); extern int _sprintf_cdnopsuxX (char *, const char *, ...); extern int _sprintf_cdnopuxX (char *, const char *, ...); extern int _sprintf_eE (char *, const char *, ...); extern int _sprintf_eEfF (char *, const char *, ...); extern int _sprintf_eEfFgG (char *, const char *, ...); extern int _sprintf_eEfFgGs (char *, const char *, ...); extern int _sprintf_eEfFs (char *, const char *, ...); extern int _sprintf_eEgG (char *, const char *, ...); extern int _sprintf_eEgGs (char *, const char *, ...); extern int _sprintf_eEs (char *, const char *, ...); extern int _sprintf_fF (char *, const char *, ...); extern int _sprintf_fFgG (char *, const char *, ...); extern int _sprintf_fFgGs (char *, const char *, ...); extern int _sprintf_fFs (char *, const char *, ...); extern int _sprintf_gG (char *, const char *, ...); extern int _sprintf_gGs (char *, const char *, ...); extern int _sprintf_s (char *, const char *, ...); extern int _sprintf (char *, const char *, ...); extern int _dsprintf_cdeEfFgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEnopuxX (char *, const char *, ...); extern int _dsprintf_cdfFgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdfFgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdfFnopsuxX (char *, const char *, ...); extern int _dsprintf_cdfFnopuxX (char *, const char *, ...); extern int _dsprintf_cdgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdnopsuxX (char *, const char *, ...); extern int _dsprintf_cdnopuxX (char *, const char *, ...); extern int _dsprintf_eE (char *, const char *, ...); extern int _dsprintf_eEfF (char *, const char *, ...); extern int _dsprintf_eEfFgG (char *, const char *, ...); extern int _dsprintf_eEfFgGs (char *, const char *, ...); extern int _dsprintf_eEfFs (char *, const char *, ...); extern int _dsprintf_eEgG (char *, const char *, ...); extern int _dsprintf_eEgGs (char *, const char *, ...); extern int _dsprintf_eEs (char *, const char *, ...); extern int _dsprintf_fF (char *, const char *, ...); extern int _dsprintf_fFgG (char *, const char *, ...); extern int _dsprintf_fFgGs (char *, const char *, ...); extern int _dsprintf_fFs (char *, const char *, ...); extern int _dsprintf_gG (char *, const char *, ...); extern int _dsprintf_gGs (char *, const char *, ...); extern int _dsprintf_s (char *, const char *, ...); extern int _dsprintf (char *, const char *, ...);
    extern int printf(const char *, ...);
    extern int _printf_cdeEfFgGnopsuxX (const char *, ...); extern int _printf_cdeEfFgGnopuxX (const char *, ...); extern int _printf_cdeEfFnopsuxX (const char *, ...); extern int _printf_cdeEfFnopuxX (const char *, ...); extern int _printf_cdeEgGnopsuxX (const char *, ...); extern int _printf_cdeEgGnopuxX (const char *, ...); extern int _printf_cdeEnopsuxX (const char *, ...); extern int _printf_cdeEnopuxX (const char *, ...); extern int _printf_cdfFgGnopsuxX (const char *, ...); extern int _printf_cdfFgGnopuxX (const char *, ...); extern int _printf_cdfFnopsuxX (const char *, ...); extern int _printf_cdfFnopuxX (const char *, ...); extern int _printf_cdgGnopsuxX (const char *, ...); extern int _printf_cdgGnopuxX (const char *, ...); extern int _printf_cdnopsuxX (const char *, ...); extern int _printf_cdnopuxX (const char *, ...); extern int _printf_eE (const char *, ...); extern int _printf_eEfF (const char *, ...); extern int _printf_eEfFgG (const char *, ...); extern int _printf_eEfFgGs (const char *, ...); extern int _printf_eEfFs (const char *, ...); extern int _printf_eEgG (const char *, ...); extern int _printf_eEgGs (const char *, ...); extern int _printf_eEs (const char *, ...); extern int _printf_fF (const char *, ...); extern int _printf_fFgG (const char *, ...); extern int _printf_fFgGs (const char *, ...); extern int _printf_fFs (const char *, ...); extern int _printf_gG (const char *, ...); extern int _printf_gGs (const char *, ...); extern int _printf_s (const char *, ...); extern int _printf (const char *, ...); extern int _dprintf_cdeEfFgGnopsuxX (const char *, ...); extern int _dprintf_cdeEfFgGnopuxX (const char *, ...); extern int _dprintf_cdeEfFnopsuxX (const char *, ...); extern int _dprintf_cdeEfFnopuxX (const char *, ...); extern int _dprintf_cdeEgGnopsuxX (const char *, ...); extern int _dprintf_cdeEgGnopuxX (const char *, ...); extern int _dprintf_cdeEnopsuxX (const char *, ...); extern int _dprintf_cdeEnopuxX (const char *, ...); extern int _dprintf_cdfFgGnopsuxX (const char *, ...); extern int _dprintf_cdfFgGnopuxX (const char *, ...); extern int _dprintf_cdfFnopsuxX (const char *, ...); extern int _dprintf_cdfFnopuxX (const char *, ...); extern int _dprintf_cdgGnopsuxX (const char *, ...); extern int _dprintf_cdgGnopuxX (const char *, ...); extern int _dprintf_cdnopsuxX (const char *, ...); extern int _dprintf_cdnopuxX (const char *, ...); extern int _dprintf_eE (const char *, ...); extern int _dprintf_eEfF (const char *, ...); extern int _dprintf_eEfFgG (const char *, ...); extern int _dprintf_eEfFgGs (const char *, ...); extern int _dprintf_eEfFs (const char *, ...); extern int _dprintf_eEgG (const char *, ...); extern int _dprintf_eEgGs (const char *, ...); extern int _dprintf_eEs (const char *, ...); extern int _dprintf_fF (const char *, ...); extern int _dprintf_fFgG (const char *, ...); extern int _dprintf_fFgGs (const char *, ...); extern int _dprintf_fFs (const char *, ...); extern int _dprintf_gG (const char *, ...); extern int _dprintf_gGs (const char *, ...); extern int _dprintf_s (const char *, ...); extern int _dprintf (const char *, ...);
# 28 "../../py/pystack.c" 2

# 1 "../../py/runtime.h" 1
# 29 "../../py/runtime.h"
# 1 "../../py/mpstate.h" 1
# 29 "../../py/mpstate.h"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 1 3
# 42 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_types.h" 1 3
# 46 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_types.h" 3
typedef __signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short int __int16_t;
typedef unsigned short int __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 60 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_types.h" 3
__extension__
typedef long long int __int64_t;

__extension__
typedef unsigned long long int __uint64_t;
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_types.h" 3
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 43 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 2 3


typedef __int8_t int8_t;




typedef __uint8_t uint8_t;




typedef __int16_t int16_t;




typedef __uint16_t uint16_t;




typedef __int32_t int32_t;




typedef __uint32_t uint32_t;




typedef __int64_t int64_t;




typedef __uint64_t uint64_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;



# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 1 3
# 48 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 3
__extension__
typedef __signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int int_least16_t;
typedef unsigned short int uint_least16_t;
typedef int int_least24_t;
typedef unsigned int uint_least24_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
# 65 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 3
__extension__
typedef long long int int_least64_t;

__extension__
typedef unsigned long long int uint_least64_t;



typedef int int_fast8_t;
typedef unsigned int uint_fast8_t;
typedef int int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef int int_fast24_t;
typedef unsigned int uint_fast24_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
# 89 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 3
__extension__
typedef long long int int_fast64_t;

__extension__
typedef unsigned long long int uint_fast64_t;
# 106 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 3
__extension__
typedef long long int intmax_t;

__extension__
typedef unsigned long long int uintmax_t;
# 95 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 2 3


# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_limits.h" 1 3
# 98 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 2 3



# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_const.h" 1 3
# 102 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 2 3
# 30 "../../py/mpstate.h" 2

# 1 "../../py/mpconfig.h" 1
# 45 "../../py/mpconfig.h"
# 1 "./mpconfigport.h" 1
# 59 "./mpconfigport.h"
typedef __int32_t mp_int_t;
typedef __uint32_t mp_uint_t;
typedef long mp_off_t;
# 72 "./mpconfigport.h"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/alloca.h" 1 3
# 73 "./mpconfigport.h" 2

extern const struct _mp_obj_module_t mp_module_pybadge;
# 46 "../../py/mpconfig.h" 2
# 32 "../../py/mpstate.h" 2
# 1 "../../py/mpthread.h" 1
# 33 "../../py/mpstate.h" 2
# 1 "../../py/misc.h" 1
# 33 "../../py/misc.h"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/include/stdbool.h" 1 3 4
# 34 "../../py/misc.h" 2



typedef unsigned char byte;
typedef unsigned int uint_PEB;
# 87 "../../py/misc.h"
void *m_malloc(size_t num_bytes);
void *m_malloc_maybe(size_t num_bytes);
void *m_malloc_with_finaliser(size_t num_bytes);
void *m_malloc0(size_t num_bytes);





void *m_realloc(void *ptr, size_t new_num_bytes);
void *m_realloc_maybe(void *ptr, size_t new_num_bytes, _Bool allow_move);
void m_free(void *ptr);

__attribute__((noreturn)) void m_malloc_fail(size_t num_bytes);
# 124 "../../py/misc.h"
typedef uint_PEB unichar;







static inline unichar utf8_get_char(const byte *s) { return *s; }
static inline const byte *utf8_next_char(const byte *s) { return s + 1; }
static inline size_t utf8_charlen(const byte *str, size_t len) { (void)str; return len; }


_Bool unichar_isspace(unichar c);
_Bool unichar_isalpha(unichar c);
_Bool unichar_isprint(unichar c);
_Bool unichar_isdigit(unichar c);
_Bool unichar_isxdigit(unichar c);
_Bool unichar_isident(unichar c);
_Bool unichar_isupper(unichar c);
_Bool unichar_islower(unichar c);
unichar unichar_tolower(unichar c);
unichar unichar_toupper(unichar c);
mp_uint_t unichar_xdigit_value(unichar c);





typedef struct _vstr_t {
    size_t alloc;
    size_t len;
    char *buf;
    _Bool fixed_buf : 1;
} vstr_t;




void vstr_init(vstr_t *vstr, size_t alloc);
void vstr_init_len(vstr_t *vstr, size_t len);
void vstr_init_fixed_buf(vstr_t *vstr, size_t alloc, char *buf);
struct _mp_print_t;
void vstr_init_print(vstr_t *vstr, size_t alloc, struct _mp_print_t *print);
void vstr_clear(vstr_t *vstr);
vstr_t *vstr_new(size_t alloc);
void vstr_free(vstr_t *vstr);
static inline void vstr_reset(vstr_t *vstr) { vstr->len = 0; }
static inline char *vstr_str(vstr_t *vstr) { return vstr->buf; }
static inline size_t vstr_len(vstr_t *vstr) { return vstr->len; }
void vstr_hint_size(vstr_t *vstr, size_t size);
char *vstr_extend(vstr_t *vstr, size_t size);
char *vstr_add_len(vstr_t *vstr, size_t len);
char *vstr_null_terminated_str(vstr_t *vstr);
void vstr_add_byte(vstr_t *vstr, byte v);
void vstr_add_char(vstr_t *vstr, unichar chr);
void vstr_add_str(vstr_t *vstr, const char *str);
void vstr_add_strn(vstr_t *vstr, const char *str, size_t len);
void vstr_ins_byte(vstr_t *vstr, size_t byte_pos, byte b);
void vstr_ins_char(vstr_t *vstr, size_t char_pos, unichar chr);
void vstr_cut_head_bytes(vstr_t *vstr, size_t bytes_to_cut);
void vstr_cut_tail_bytes(vstr_t *vstr, size_t bytes_to_cut);
void vstr_cut_out_bytes(vstr_t *vstr, size_t byte_pos, size_t bytes_to_cut);
void vstr_printf(vstr_t *vstr, const char *fmt, ...);
# 202 "../../py/misc.h"
void vstr_vprintf(vstr_t *vstr, const char *fmt, va_list ap);



int DEBUG_printf(const char *fmt, ...);

extern mp_uint_t mp_verbose_flag;
# 34 "../../py/mpstate.h" 2
# 1 "../../py/nlr.h" 1
# 32 "../../py/nlr.h"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/include-fixed/limits.h" 1 3 4
# 33 "../../py/nlr.h" 2
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/assert.h" 1 3
# 35 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/assert.h" 3
extern void __attribute__((noreturn)) _fassert(int, const char *, const char *, const char*);
# 34 "../../py/nlr.h" 2
# 68 "../../py/nlr.h"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/setjmp.h" 1 3
# 94 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/setjmp.h" 3
typedef long long jmp_buf[24];
typedef long long sigjmp_buf[24 + 1];


int setjmp (jmp_buf);
void longjmp (jmp_buf, int);
int sigsetjmp (sigjmp_buf, int);
void siglongjmp (sigjmp_buf, int);

int _setjmp (jmp_buf);
void _longjmp (jmp_buf, int);
# 69 "../../py/nlr.h" 2


typedef struct _nlr_buf_t nlr_buf_t;
struct _nlr_buf_t {

    nlr_buf_t *prev;
    void *ret_val;


    jmp_buf jmpbuf;







};
# 117 "../../py/nlr.h"
unsigned int nlr_push_tail(nlr_buf_t *top);
void nlr_pop(void);
__attribute__((noreturn)) void nlr_jump(void *val);




__attribute__((noreturn)) void nlr_jump_fail(void *val);
# 35 "../../py/mpstate.h" 2
# 1 "../../py/obj.h" 1
# 31 "../../py/obj.h"
# 1 "../../py/qstr.h" 1
# 39 "../../py/qstr.h"
enum {


# 1 "build/genhdr/qstrdefs.generated.h" 1


MP_QSTR_NULL,
MP_QSTR_,
MP_QSTR___add__,
MP_QSTR___bool__,
MP_QSTR___build_class__,
MP_QSTR___call__,
MP_QSTR___class__,
MP_QSTR___contains__,
MP_QSTR___delitem__,
MP_QSTR___enter__,
MP_QSTR___eq__,
MP_QSTR___exit__,
MP_QSTR___ge__,
MP_QSTR___getattr__,
MP_QSTR___getitem__,
MP_QSTR___gt__,
MP_QSTR___hash__,
MP_QSTR___iadd__,
MP_QSTR___import__,
MP_QSTR___init__,
MP_QSTR___isub__,
MP_QSTR___iter__,
MP_QSTR___le__,
MP_QSTR___len__,
MP_QSTR___lt__,
MP_QSTR___main__,
MP_QSTR___module__,
MP_QSTR___name__,
MP_QSTR___new__,
MP_QSTR___next__,
MP_QSTR___path__,
MP_QSTR___qualname__,
MP_QSTR___repl_print__,
MP_QSTR___repr__,
MP_QSTR___setitem__,
MP_QSTR___str__,
MP_QSTR___sub__,
MP_QSTR___traceback__,
MP_QSTR__star_,
MP_QSTR__,
MP_QSTR__slash_,
MP_QSTR__brace_open__colon__hash_o_brace_close_,
MP_QSTR__brace_open__colon__hash_x_brace_close_,
MP_QSTR__brace_open__colon__hash_b_brace_close_,
MP_QSTR__space_,
MP_QSTR__0x0a_,
MP_QSTR_maximum_space_recursion_space_depth_space_exceeded,
MP_QSTR__lt_module_gt_,
MP_QSTR__lt_lambda_gt_,
MP_QSTR__lt_listcomp_gt_,
MP_QSTR__lt_dictcomp_gt_,
MP_QSTR__lt_setcomp_gt_,
MP_QSTR__lt_genexpr_gt_,
MP_QSTR__lt_string_gt_,
MP_QSTR__lt_stdin_gt_,
MP_QSTR_utf_hyphen_8,
MP_QSTR_red,
MP_QSTR_green,
MP_QSTR_blue,
MP_QSTR_FbMoveX,
MP_QSTR_FbMoveY,
MP_QSTR_FbMove,
MP_QSTR_FbMoveRelative,
MP_QSTR_FbClear,
MP_QSTR_FbColor,
MP_QSTR_FbCharacter,
MP_QSTR_FbPoint,
MP_QSTR_FbWriteLine,
MP_QSTR_FbWriteString,
MP_QSTR_FbSwapBuffers,
MP_QSTR_FbLine,
MP_QSTR_ArithmeticError,
MP_QSTR_AssertionError,
MP_QSTR_AttributeError,
MP_QSTR_BaseException,
MP_QSTR_EOFError,
MP_QSTR_Ellipsis,
MP_QSTR_Exception,
MP_QSTR_GeneratorExit,
MP_QSTR_ImportError,
MP_QSTR_IndentationError,
MP_QSTR_IndexError,
MP_QSTR_KeyError,
MP_QSTR_KeyboardInterrupt,
MP_QSTR_LookupError,
MP_QSTR_MemoryError,
MP_QSTR_NameError,
MP_QSTR_NoneType,
MP_QSTR_NotImplementedError,
MP_QSTR_OSError,
MP_QSTR_OverflowError,
MP_QSTR_RuntimeError,
MP_QSTR_StopIteration,
MP_QSTR_SyntaxError,
MP_QSTR_SystemExit,
MP_QSTR_TypeError,
MP_QSTR_ValueError,
MP_QSTR_ZeroDivisionError,
MP_QSTR_abs,
MP_QSTR_all,
MP_QSTR_any,
MP_QSTR_append,
MP_QSTR_args,
MP_QSTR_bin,
MP_QSTR_bool,
MP_QSTR_bound_method,
MP_QSTR_builtins,
MP_QSTR_bytecode,
MP_QSTR_bytes,
MP_QSTR_callable,
MP_QSTR_chr,
MP_QSTR_classmethod,
MP_QSTR_clear,
MP_QSTR_close,
MP_QSTR_closure,
MP_QSTR_const,
MP_QSTR_copy,
MP_QSTR_count,
MP_QSTR_default,
MP_QSTR_dict,
MP_QSTR_dict_view,
MP_QSTR_dir,
MP_QSTR_divmod,
MP_QSTR_end,
MP_QSTR_endswith,
MP_QSTR_eval,
MP_QSTR_exec,
MP_QSTR_extend,
MP_QSTR_filter,
MP_QSTR_find,
MP_QSTR_format,
MP_QSTR_from_bytes,
MP_QSTR_fromkeys,
MP_QSTR_function,
MP_QSTR_generator,
MP_QSTR_get,
MP_QSTR_getattr,
MP_QSTR_globals,
MP_QSTR_hasattr,
MP_QSTR_hash,
MP_QSTR_hex,
MP_QSTR_id,
MP_QSTR_index,
MP_QSTR_insert,
MP_QSTR_int,
MP_QSTR_isalpha,
MP_QSTR_isdigit,
MP_QSTR_isinstance,
MP_QSTR_islower,
MP_QSTR_isspace,
MP_QSTR_issubclass,
MP_QSTR_isupper,
MP_QSTR_items,
MP_QSTR_iter,
MP_QSTR_iterator,
MP_QSTR_join,
MP_QSTR_key,
MP_QSTR_keys,
MP_QSTR_lcd_python,
MP_QSTR_len,
MP_QSTR_list,
MP_QSTR_little,
MP_QSTR_locals,
MP_QSTR_lower,
MP_QSTR_lstrip,
MP_QSTR_map,
MP_QSTR_max,
MP_QSTR_micropython,
MP_QSTR_min,
MP_QSTR_module,
MP_QSTR_next,
MP_QSTR_object,
MP_QSTR_oct,
MP_QSTR_open,
MP_QSTR_opt_level,
MP_QSTR_ord,
MP_QSTR_pend_throw,
MP_QSTR_pop,
MP_QSTR_popitem,
MP_QSTR_pow,
MP_QSTR_print,
MP_QSTR_pybadge,
MP_QSTR_range,
MP_QSTR_remove,
MP_QSTR_replace,
MP_QSTR_repr,
MP_QSTR_reverse,
MP_QSTR_rfind,
MP_QSTR_rindex,
MP_QSTR_round,
MP_QSTR_rsplit,
MP_QSTR_rstrip,
MP_QSTR_send,
MP_QSTR_sep,
MP_QSTR_setattr,
MP_QSTR_setdefault,
MP_QSTR_sort,
MP_QSTR_sorted,
MP_QSTR_split,
MP_QSTR_start,
MP_QSTR_startswith,
MP_QSTR_staticmethod,
MP_QSTR_step,
MP_QSTR_stop,
MP_QSTR_str,
MP_QSTR_strip,
MP_QSTR_sum,
MP_QSTR_super,
MP_QSTR_throw,
MP_QSTR_to_bytes,
MP_QSTR_tuple,
MP_QSTR_type,
MP_QSTR_update,
MP_QSTR_upper,
MP_QSTR_value,
MP_QSTR_values,
MP_QSTR_zip,
# 43 "../../py/qstr.h" 2


    MP_QSTRnumber_of,
};

typedef size_t qstr;

typedef struct _qstr_pool_t {
    struct _qstr_pool_t *prev;
    size_t total_prev_len;
    size_t alloc;
    size_t len;
    const byte *qstrs[];
} qstr_pool_t;




void qstr_init(void);

mp_uint_t qstr_compute_hash(const byte *data, size_t len);
qstr qstr_find_strn(const char *str, size_t str_len);

qstr qstr_from_str(const char *str);
qstr qstr_from_strn(const char *str, size_t len);

mp_uint_t qstr_hash(qstr q);
const char *qstr_str(qstr q);
size_t qstr_len(qstr q);
const byte *qstr_data(qstr q, size_t *len);

void qstr_pool_info(size_t *n_pool, size_t *n_qstr, size_t *n_str_data_bytes, size_t *n_total_bytes);
void qstr_dump_data(void);
# 32 "../../py/obj.h" 2
# 1 "../../py/mpprint.h" 1
# 48 "../../py/mpprint.h"
typedef void (*mp_print_strn_t)(void *data, const char *str, size_t len);

typedef struct _mp_print_t {
    void *data;
    mp_print_strn_t print_strn;
} mp_print_t;



extern const mp_print_t mp_plat_print;





int mp_print_str(const mp_print_t *print, const char *str);
int mp_print_strn(const mp_print_t *print, const char *str, size_t len, int flags, char fill, int width);




int mp_printf(const mp_print_t *print, const char *fmt, ...);

int mp_vprintf(const mp_print_t *print, const char *fmt, va_list args);
# 33 "../../py/obj.h" 2
# 1 "../../py/runtime0.h" 1
# 49 "../../py/runtime0.h"
typedef enum {


    MP_UNARY_OP_POSITIVE,
    MP_UNARY_OP_NEGATIVE,
    MP_UNARY_OP_INVERT,
    MP_UNARY_OP_NOT,


    MP_UNARY_OP_NUM_BYTECODE,

    MP_UNARY_OP_BOOL = MP_UNARY_OP_NUM_BYTECODE,
    MP_UNARY_OP_LEN,
    MP_UNARY_OP_HASH,
    MP_UNARY_OP_ABS,
    MP_UNARY_OP_SIZEOF,

    MP_UNARY_OP_NUM_RUNTIME,
} mp_unary_op_t;



typedef enum {

    MP_BINARY_OP_LESS,
    MP_BINARY_OP_MORE,
    MP_BINARY_OP_EQUAL,
    MP_BINARY_OP_LESS_EQUAL,
    MP_BINARY_OP_MORE_EQUAL,
    MP_BINARY_OP_NOT_EQUAL,
    MP_BINARY_OP_IN,
    MP_BINARY_OP_IS,
    MP_BINARY_OP_EXCEPTION_MATCH,


    MP_BINARY_OP_INPLACE_OR,
    MP_BINARY_OP_INPLACE_XOR,
    MP_BINARY_OP_INPLACE_AND,
    MP_BINARY_OP_INPLACE_LSHIFT,
    MP_BINARY_OP_INPLACE_RSHIFT,
    MP_BINARY_OP_INPLACE_ADD,
    MP_BINARY_OP_INPLACE_SUBTRACT,
    MP_BINARY_OP_INPLACE_MULTIPLY,
    MP_BINARY_OP_INPLACE_FLOOR_DIVIDE,
    MP_BINARY_OP_INPLACE_TRUE_DIVIDE,
    MP_BINARY_OP_INPLACE_MODULO,
    MP_BINARY_OP_INPLACE_POWER,


    MP_BINARY_OP_OR,
    MP_BINARY_OP_XOR,
    MP_BINARY_OP_AND,
    MP_BINARY_OP_LSHIFT,
    MP_BINARY_OP_RSHIFT,
    MP_BINARY_OP_ADD,
    MP_BINARY_OP_SUBTRACT,
    MP_BINARY_OP_MULTIPLY,
    MP_BINARY_OP_FLOOR_DIVIDE,
    MP_BINARY_OP_TRUE_DIVIDE,
    MP_BINARY_OP_MODULO,
    MP_BINARY_OP_POWER,



    MP_BINARY_OP_NUM_BYTECODE,
# 132 "../../py/runtime0.h"
    MP_BINARY_OP_DIVMOD

        = MP_BINARY_OP_NUM_BYTECODE

    ,



    MP_BINARY_OP_CONTAINS,

    MP_BINARY_OP_NUM_RUNTIME,


    MP_BINARY_OP_NOT_IN,
    MP_BINARY_OP_IS_NOT,
} mp_binary_op_t;

typedef enum {
    MP_F_CONVERT_OBJ_TO_NATIVE = 0,
    MP_F_CONVERT_NATIVE_TO_OBJ,
    MP_F_NATIVE_SWAP_GLOBALS,
    MP_F_LOAD_NAME,
    MP_F_LOAD_GLOBAL,
    MP_F_LOAD_BUILD_CLASS,
    MP_F_LOAD_ATTR,
    MP_F_LOAD_METHOD,
    MP_F_LOAD_SUPER_METHOD,
    MP_F_STORE_NAME,
    MP_F_STORE_GLOBAL,
    MP_F_STORE_ATTR,
    MP_F_OBJ_SUBSCR,
    MP_F_OBJ_IS_TRUE,
    MP_F_UNARY_OP,
    MP_F_BINARY_OP,
    MP_F_BUILD_TUPLE,
    MP_F_BUILD_LIST,
    MP_F_LIST_APPEND,
    MP_F_BUILD_MAP,
    MP_F_STORE_MAP,




    MP_F_MAKE_FUNCTION_FROM_RAW_CODE,
    MP_F_NATIVE_CALL_FUNCTION_N_KW,
    MP_F_CALL_METHOD_N_KW,
    MP_F_CALL_METHOD_N_KW_VAR,
    MP_F_NATIVE_GETITER,
    MP_F_NATIVE_ITERNEXT,
    MP_F_NLR_PUSH,
    MP_F_NLR_POP,
    MP_F_NATIVE_RAISE,
    MP_F_IMPORT_NAME,
    MP_F_IMPORT_FROM,
    MP_F_IMPORT_ALL,



    MP_F_UNPACK_SEQUENCE,
    MP_F_UNPACK_EX,
    MP_F_DELETE_NAME,
    MP_F_DELETE_GLOBAL,
    MP_F_NEW_CELL,
    MP_F_MAKE_CLOSURE_FROM_RAW_CODE,
    MP_F_ARG_CHECK_NUM_SIG,
    MP_F_SETUP_CODE_STATE,
    MP_F_SMALL_INT_FLOOR_DIVIDE,
    MP_F_SMALL_INT_MODULO,
    MP_F_NUMBER_OF,
} mp_fun_kind_t;

extern void *const mp_fun_table[MP_F_NUMBER_OF];
# 34 "../../py/obj.h" 2
# 42 "../../py/obj.h"
typedef void *mp_obj_t;
typedef const void *mp_const_obj_t;




typedef struct _mp_obj_type_t mp_obj_type_t;



struct _mp_obj_base_t {
    const mp_obj_type_t *type ;
};
typedef struct _mp_obj_base_t mp_obj_base_t;
# 84 "../../py/obj.h"
static inline _Bool MP_OBJ_IS_SMALL_INT(mp_const_obj_t o)
    { return ((((mp_int_t)(o)) & 1) != 0); }



static inline _Bool MP_OBJ_IS_QSTR(mp_const_obj_t o)
    { return ((((mp_int_t)(o)) & 3) == 2); }
# 105 "../../py/obj.h"
static inline _Bool MP_OBJ_IS_OBJ(mp_const_obj_t o)
    { return ((((mp_int_t)(o)) & 3) == 0); }
# 246 "../../py/obj.h"
typedef mp_const_obj_t mp_rom_obj_t;
# 342 "../../py/obj.h"
typedef struct _mp_map_elem_t {
    mp_obj_t key;
    mp_obj_t value;
} mp_map_elem_t;

typedef struct _mp_rom_map_elem_t {
    mp_rom_obj_t key;
    mp_rom_obj_t value;
} mp_rom_map_elem_t;






typedef struct _mp_map_t {
    size_t all_keys_are_qstrs : 1;
    size_t is_fixed : 1;
    size_t is_ordered : 1;
    size_t used : (8 * sizeof(size_t) - 3);
    size_t alloc;
    mp_map_elem_t *table;
} mp_map_t;


typedef enum _mp_map_lookup_kind_t {
    MP_MAP_LOOKUP = 0,
    MP_MAP_LOOKUP_ADD_IF_NOT_FOUND = 1,
    MP_MAP_LOOKUP_REMOVE_IF_FOUND = 2,
    MP_MAP_LOOKUP_ADD_IF_NOT_FOUND_OR_REMOVE_IF_FOUND = 3,
} mp_map_lookup_kind_t;

extern const mp_map_t mp_const_empty_map;

static inline _Bool MP_MAP_SLOT_IS_FILLED(const mp_map_t *map, size_t pos) { return ((map)->table[pos].key != (((mp_obj_t)(void*)0)) && (map)->table[pos].key != (((mp_obj_t)(void*)8))); }

void mp_map_init(mp_map_t *map, size_t n);
void mp_map_init_fixed_table(mp_map_t *map, size_t n, const mp_obj_t *table);
mp_map_t *mp_map_new(size_t n);
void mp_map_deinit(mp_map_t *map);
void mp_map_free(mp_map_t *map);
mp_map_elem_t *mp_map_lookup(mp_map_t *map, mp_obj_t index, mp_map_lookup_kind_t lookup_kind);
void mp_map_clear(mp_map_t *map);
void mp_map_dump(mp_map_t *map);



typedef struct _mp_set_t {
    size_t alloc;
    size_t used;
    mp_obj_t *table;
} mp_set_t;

static inline _Bool MP_SET_SLOT_IS_FILLED(const mp_set_t *set, size_t pos) { return ((set)->table[pos] != (((mp_obj_t)(void*)0)) && (set)->table[pos] != (((mp_obj_t)(void*)8))); }

void mp_set_init(mp_set_t *set, size_t n);
mp_obj_t mp_set_lookup(mp_set_t *set, mp_obj_t index, mp_map_lookup_kind_t lookup_kind);
mp_obj_t mp_set_remove_first(mp_set_t *set);
void mp_set_clear(mp_set_t *set);



typedef mp_obj_t (*mp_fun_0_t)(void);
typedef mp_obj_t (*mp_fun_1_t)(mp_obj_t);
typedef mp_obj_t (*mp_fun_2_t)(mp_obj_t, mp_obj_t);
typedef mp_obj_t (*mp_fun_3_t)(mp_obj_t, mp_obj_t, mp_obj_t);
typedef mp_obj_t (*mp_fun_var_t)(size_t n, const mp_obj_t *);


typedef mp_obj_t (*mp_fun_kw_t)(size_t n, const mp_obj_t *, mp_map_t *);

typedef enum {
    PRINT_STR = 0,
    PRINT_REPR = 1,
    PRINT_EXC = 2,
    PRINT_JSON = 3,
    PRINT_RAW = 4,
    PRINT_EXC_SUBCLASS = 0x80,
} mp_print_kind_t;

typedef struct _mp_obj_iter_buf_t {
    mp_obj_base_t base;
    mp_obj_t buf[3];
} mp_obj_iter_buf_t;





typedef void (*mp_print_fun_t)(const mp_print_t *print, mp_obj_t o, mp_print_kind_t kind);
typedef mp_obj_t (*mp_make_new_fun_t)(const mp_obj_type_t *type, size_t n_args, size_t n_kw, const mp_obj_t *args);
typedef mp_obj_t (*mp_call_fun_t)(mp_obj_t fun, size_t n_args, size_t n_kw, const mp_obj_t *args);
typedef mp_obj_t (*mp_unary_op_fun_t)(mp_unary_op_t op, mp_obj_t);
typedef mp_obj_t (*mp_binary_op_fun_t)(mp_binary_op_t op, mp_obj_t, mp_obj_t);
typedef void (*mp_attr_fun_t)(mp_obj_t self_in, qstr attr, mp_obj_t *dest);
typedef mp_obj_t (*mp_subscr_fun_t)(mp_obj_t self_in, mp_obj_t index, mp_obj_t value);
typedef mp_obj_t (*mp_getiter_fun_t)(mp_obj_t self_in, mp_obj_iter_buf_t *iter_buf);


typedef struct _mp_buffer_info_t {





    void *buf;
    size_t len;
    int typecode;




} mp_buffer_info_t;



typedef struct _mp_buffer_p_t {
    mp_int_t (*get_buffer)(mp_obj_t obj, mp_buffer_info_t *bufinfo, mp_uint_t flags);
} mp_buffer_p_t;
_Bool mp_get_buffer(mp_obj_t obj, mp_buffer_info_t *bufinfo, mp_uint_t flags);
void mp_get_buffer_raise(mp_obj_t obj, mp_buffer_info_t *bufinfo, mp_uint_t flags);

struct _mp_obj_type_t {

    mp_obj_base_t base;


    __uint16_t flags;


    __uint16_t name;


    mp_print_fun_t print;


    mp_make_new_fun_t make_new;


    mp_call_fun_t call;



    mp_unary_op_fun_t unary_op;
    mp_binary_op_fun_t binary_op;
# 499 "../../py/obj.h"
    mp_attr_fun_t attr;






    mp_subscr_fun_t subscr;




    mp_getiter_fun_t getiter;



    mp_fun_1_t iternext;


    mp_buffer_p_t buffer_p;


    const void *protocol;





    const void *parent;


    struct _mp_obj_dict_t *locals_dict;
};


extern const mp_obj_type_t mp_type_type;
extern const mp_obj_type_t mp_type_object;
extern const mp_obj_type_t mp_type_NoneType;
extern const mp_obj_type_t mp_type_bool;
extern const mp_obj_type_t mp_type_int;
extern const mp_obj_type_t mp_type_str;
extern const mp_obj_type_t mp_type_bytes;
extern const mp_obj_type_t mp_type_bytearray;
extern const mp_obj_type_t mp_type_memoryview;
extern const mp_obj_type_t mp_type_float;
extern const mp_obj_type_t mp_type_complex;
extern const mp_obj_type_t mp_type_tuple;
extern const mp_obj_type_t mp_type_list;
extern const mp_obj_type_t mp_type_map;
extern const mp_obj_type_t mp_type_enumerate;
extern const mp_obj_type_t mp_type_filter;
extern const mp_obj_type_t mp_type_deque;
extern const mp_obj_type_t mp_type_dict;
extern const mp_obj_type_t mp_type_ordereddict;
extern const mp_obj_type_t mp_type_range;
extern const mp_obj_type_t mp_type_set;
extern const mp_obj_type_t mp_type_frozenset;
extern const mp_obj_type_t mp_type_slice;
extern const mp_obj_type_t mp_type_zip;
extern const mp_obj_type_t mp_type_array;
extern const mp_obj_type_t mp_type_super;
extern const mp_obj_type_t mp_type_gen_wrap;
extern const mp_obj_type_t mp_type_gen_instance;
extern const mp_obj_type_t mp_type_fun_builtin_0;
extern const mp_obj_type_t mp_type_fun_builtin_1;
extern const mp_obj_type_t mp_type_fun_builtin_2;
extern const mp_obj_type_t mp_type_fun_builtin_3;
extern const mp_obj_type_t mp_type_fun_builtin_var;
extern const mp_obj_type_t mp_type_fun_bc;
extern const mp_obj_type_t mp_type_module;
extern const mp_obj_type_t mp_type_staticmethod;
extern const mp_obj_type_t mp_type_classmethod;
extern const mp_obj_type_t mp_type_property;
extern const mp_obj_type_t mp_type_stringio;
extern const mp_obj_type_t mp_type_bytesio;
extern const mp_obj_type_t mp_type_reversed;
extern const mp_obj_type_t mp_type_polymorph_iter;


extern const mp_obj_type_t mp_type_BaseException;
extern const mp_obj_type_t mp_type_ArithmeticError;
extern const mp_obj_type_t mp_type_AssertionError;
extern const mp_obj_type_t mp_type_AttributeError;
extern const mp_obj_type_t mp_type_EOFError;
extern const mp_obj_type_t mp_type_Exception;
extern const mp_obj_type_t mp_type_GeneratorExit;
extern const mp_obj_type_t mp_type_ImportError;
extern const mp_obj_type_t mp_type_IndentationError;
extern const mp_obj_type_t mp_type_IndexError;
extern const mp_obj_type_t mp_type_KeyboardInterrupt;
extern const mp_obj_type_t mp_type_KeyError;
extern const mp_obj_type_t mp_type_LookupError;
extern const mp_obj_type_t mp_type_MemoryError;
extern const mp_obj_type_t mp_type_NameError;
extern const mp_obj_type_t mp_type_NotImplementedError;
extern const mp_obj_type_t mp_type_OSError;
extern const mp_obj_type_t mp_type_TimeoutError;
extern const mp_obj_type_t mp_type_OverflowError;
extern const mp_obj_type_t mp_type_RuntimeError;
extern const mp_obj_type_t mp_type_StopAsyncIteration;
extern const mp_obj_type_t mp_type_StopIteration;
extern const mp_obj_type_t mp_type_SyntaxError;
extern const mp_obj_type_t mp_type_SystemExit;
extern const mp_obj_type_t mp_type_TypeError;
extern const mp_obj_type_t mp_type_UnicodeError;
extern const mp_obj_type_t mp_type_ValueError;
extern const mp_obj_type_t mp_type_ViperTypeError;
extern const mp_obj_type_t mp_type_ZeroDivisionError;
# 616 "../../py/obj.h"
extern const struct _mp_obj_none_t mp_const_none_obj;
extern const struct _mp_obj_bool_t mp_const_false_obj;
extern const struct _mp_obj_bool_t mp_const_true_obj;
extern const struct _mp_obj_str_t mp_const_empty_bytes_obj;
extern const struct _mp_obj_tuple_t mp_const_empty_tuple_obj;
extern const struct _mp_obj_singleton_t mp_const_ellipsis_obj;
extern const struct _mp_obj_singleton_t mp_const_notimplemented_obj;
extern const struct _mp_obj_exception_t mp_const_GeneratorExit_obj;



mp_obj_t mp_obj_new_type(qstr name, mp_obj_t bases_tuple, mp_obj_t locals_dict);
static inline mp_obj_t mp_obj_new_bool(mp_int_t x) { return x ? (((mp_obj_t)&mp_const_true_obj)) : (((mp_obj_t)&mp_const_false_obj)); }
mp_obj_t mp_obj_new_cell(mp_obj_t obj);
mp_obj_t mp_obj_new_int(mp_int_t value);
mp_obj_t mp_obj_new_int_from_uint(mp_uint_t value);
mp_obj_t mp_obj_new_int_from_str_len(const char **str, size_t len, _Bool neg, unsigned int base);
mp_obj_t mp_obj_new_int_from_ll(long long val);
mp_obj_t mp_obj_new_int_from_ull(unsigned long long val);
mp_obj_t mp_obj_new_str(const char* data, size_t len);
mp_obj_t mp_obj_new_str_via_qstr(const char* data, size_t len);
mp_obj_t mp_obj_new_str_from_vstr(const mp_obj_type_t *type, vstr_t *vstr);
mp_obj_t mp_obj_new_bytes(const byte* data, size_t len);
mp_obj_t mp_obj_new_bytearray(size_t n, void *items);
mp_obj_t mp_obj_new_bytearray_by_ref(size_t n, void *items);




mp_obj_t mp_obj_new_exception(const mp_obj_type_t *exc_type);
mp_obj_t mp_obj_new_exception_arg1(const mp_obj_type_t *exc_type, mp_obj_t arg);
mp_obj_t mp_obj_new_exception_args(const mp_obj_type_t *exc_type, size_t n_args, const mp_obj_t *args);
mp_obj_t mp_obj_new_exception_msg(const mp_obj_type_t *exc_type, const char *msg);
mp_obj_t mp_obj_new_exception_msg_varg(const mp_obj_type_t *exc_type, const char *fmt, ...);
mp_obj_t mp_obj_new_fun_bc(mp_obj_t def_args, mp_obj_t def_kw_args, const byte *code, const mp_uint_t *const_table);
mp_obj_t mp_obj_new_fun_native(mp_obj_t def_args_in, mp_obj_t def_kw_args, const void *fun_data, const mp_uint_t *const_table);
mp_obj_t mp_obj_new_fun_viper(size_t n_args, void *fun_data, mp_uint_t type_sig);
mp_obj_t mp_obj_new_fun_asm(size_t n_args, void *fun_data, mp_uint_t type_sig);
mp_obj_t mp_obj_new_gen_wrap(mp_obj_t fun);
mp_obj_t mp_obj_new_closure(mp_obj_t fun, size_t n_closed, const mp_obj_t *closed);
mp_obj_t mp_obj_new_tuple(size_t n, const mp_obj_t *items);
mp_obj_t mp_obj_new_list(size_t n, mp_obj_t *items);
mp_obj_t mp_obj_new_dict(size_t n_args);
mp_obj_t mp_obj_new_set(size_t n_args, mp_obj_t *items);
mp_obj_t mp_obj_new_slice(mp_obj_t start, mp_obj_t stop, mp_obj_t step);
mp_obj_t mp_obj_new_bound_meth(mp_obj_t meth, mp_obj_t self);
mp_obj_t mp_obj_new_getitem_iter(mp_obj_t *args, mp_obj_iter_buf_t *iter_buf);
mp_obj_t mp_obj_new_module(qstr module_name);
mp_obj_t mp_obj_new_memoryview(byte typecode, size_t nitems, void *items);

mp_obj_type_t *mp_obj_get_type(mp_const_obj_t o_in);
const char *mp_obj_get_type_str(mp_const_obj_t o_in);
_Bool mp_obj_is_subclass_fast(mp_const_obj_t object, mp_const_obj_t classinfo);
mp_obj_t mp_instance_cast_to_native_base(mp_const_obj_t self_in, mp_const_obj_t native_type);

void mp_obj_print_helper(const mp_print_t *print, mp_obj_t o_in, mp_print_kind_t kind);
void mp_obj_print(mp_obj_t o, mp_print_kind_t kind);
void mp_obj_print_exception(const mp_print_t *print, mp_obj_t exc);

_Bool mp_obj_is_true(mp_obj_t arg);
_Bool mp_obj_is_callable(mp_obj_t o_in);
_Bool mp_obj_equal(mp_obj_t o1, mp_obj_t o2);

static inline _Bool mp_obj_is_integer(mp_const_obj_t o) { return (MP_OBJ_IS_SMALL_INT(o) || (MP_OBJ_IS_OBJ(o) && (((mp_obj_base_t*)((void*)o))->type == (&mp_type_int)))) || (MP_OBJ_IS_OBJ(o) && (((mp_obj_base_t*)((void*)o))->type == (&mp_type_bool))); }
mp_int_t mp_obj_get_int(mp_const_obj_t arg);
mp_int_t mp_obj_get_int_truncated(mp_const_obj_t arg);
_Bool mp_obj_get_int_maybe(mp_const_obj_t arg, mp_int_t *value);






void mp_obj_get_array(mp_obj_t o, size_t *len, mp_obj_t **items);
void mp_obj_get_array_fixed_n(mp_obj_t o, size_t len, mp_obj_t **items);
size_t mp_get_index(const mp_obj_type_t *type, size_t len, mp_obj_t index, _Bool is_slice);
mp_obj_t mp_obj_id(mp_obj_t o_in);
mp_obj_t mp_obj_len(mp_obj_t o_in);
mp_obj_t mp_obj_len_maybe(mp_obj_t o_in);
mp_obj_t mp_obj_subscr(mp_obj_t base, mp_obj_t index, mp_obj_t val);
mp_obj_t mp_generic_unary_op(mp_unary_op_t op, mp_obj_t o_in);


mp_obj_t mp_obj_cell_get(mp_obj_t self_in);
void mp_obj_cell_set(mp_obj_t self_in, mp_obj_t obj);



mp_int_t mp_obj_int_get_truncated(mp_const_obj_t self_in);

mp_int_t mp_obj_int_get_checked(mp_const_obj_t self_in);



_Bool mp_obj_is_exception_type(mp_obj_t self_in);
_Bool mp_obj_is_exception_instance(mp_obj_t self_in);
_Bool mp_obj_exception_match(mp_obj_t exc, mp_const_obj_t exc_type);
void mp_obj_exception_clear_traceback(mp_obj_t self_in);
void mp_obj_exception_add_traceback(mp_obj_t self_in, qstr file, size_t line, qstr block);
void mp_obj_exception_get_traceback(mp_obj_t self_in, size_t *n, size_t **values);
mp_obj_t mp_obj_exception_get_value(mp_obj_t self_in);
mp_obj_t mp_obj_exception_make_new(const mp_obj_type_t *type_in, size_t n_args, size_t n_kw, const mp_obj_t *args);
mp_obj_t mp_alloc_emergency_exception_buf(mp_obj_t size_in);
void mp_init_emergency_exception_buf(void);


_Bool mp_obj_str_equal(mp_obj_t s1, mp_obj_t s2);
qstr mp_obj_str_get_qstr(mp_obj_t self_in);
const char *mp_obj_str_get_str(mp_obj_t self_in);
const char *mp_obj_str_get_data(mp_obj_t self_in, size_t *len);
mp_obj_t mp_obj_str_intern(mp_obj_t str);
mp_obj_t mp_obj_str_intern_checked(mp_obj_t obj);
void mp_str_print_quoted(const mp_print_t *print, const byte *str_data, size_t str_len, _Bool is_bytes);
# 747 "../../py/obj.h"
void mp_obj_tuple_get(mp_obj_t self_in, size_t *len, mp_obj_t **items);
void mp_obj_tuple_del(mp_obj_t self_in);
mp_int_t mp_obj_tuple_hash(mp_obj_t self_in);


mp_obj_t mp_obj_list_append(mp_obj_t self_in, mp_obj_t arg);
mp_obj_t mp_obj_list_remove(mp_obj_t self_in, mp_obj_t value);
void mp_obj_list_get(mp_obj_t self_in, size_t *len, mp_obj_t **items);
void mp_obj_list_set_len(mp_obj_t self_in, size_t len);
void mp_obj_list_store(mp_obj_t self_in, mp_obj_t index, mp_obj_t value);
mp_obj_t mp_obj_list_sort(size_t n_args, const mp_obj_t *args, mp_map_t *kwargs);


typedef struct _mp_obj_dict_t {
    mp_obj_base_t base;
    mp_map_t map;
} mp_obj_dict_t;
void mp_obj_dict_init(mp_obj_dict_t *dict, size_t n_args);
size_t mp_obj_dict_len(mp_obj_t self_in);
mp_obj_t mp_obj_dict_get(mp_obj_t self_in, mp_obj_t index);
mp_obj_t mp_obj_dict_store(mp_obj_t self_in, mp_obj_t key, mp_obj_t value);
mp_obj_t mp_obj_dict_delete(mp_obj_t self_in, mp_obj_t key);
static inline mp_map_t *mp_obj_dict_get_map(mp_obj_t dict) {
    return &((mp_obj_dict_t*)((void*)dict))->map;
}


void mp_obj_set_store(mp_obj_t self_in, mp_obj_t item);


void mp_obj_slice_get(mp_obj_t self_in, mp_obj_t *start, mp_obj_t *stop, mp_obj_t *step);



typedef struct _mp_obj_fun_builtin_fixed_t {
    mp_obj_base_t base;
    union {
        mp_fun_0_t _0;
        mp_fun_1_t _1;
        mp_fun_2_t _2;
        mp_fun_3_t _3;
    } fun;
} mp_obj_fun_builtin_fixed_t;

typedef struct _mp_obj_fun_builtin_var_t {
    mp_obj_base_t base;
    __uint32_t sig;
    union {
        mp_fun_var_t var;
        mp_fun_kw_t kw;
    } fun;
} mp_obj_fun_builtin_var_t;

qstr mp_obj_fun_get_name(mp_const_obj_t fun);
qstr mp_obj_code_get_name(const byte *code_info);

mp_obj_t mp_identity(mp_obj_t self);
extern const mp_obj_fun_builtin_fixed_t mp_identity_obj;
mp_obj_t mp_identity_getiter(mp_obj_t self, mp_obj_iter_buf_t *iter_buf);


typedef struct _mp_obj_module_t {
    mp_obj_base_t base;
    mp_obj_dict_t *globals;
} mp_obj_module_t;
static inline mp_obj_dict_t *mp_obj_module_get_globals(mp_obj_t module) {
    return ((mp_obj_module_t*)((void*)module))->globals;
}

_Bool mp_obj_is_package(mp_obj_t module);



typedef struct _mp_obj_static_class_method_t {
    mp_obj_base_t base;
    mp_obj_t fun;
} mp_obj_static_class_method_t;
typedef struct _mp_rom_obj_static_class_method_t {
    mp_obj_base_t base;
    mp_rom_obj_t fun;
} mp_rom_obj_static_class_method_t;


const mp_obj_t *mp_obj_property_get(mp_obj_t self_in);




typedef struct {
    mp_uint_t start;
    mp_uint_t stop;
    mp_int_t step;
} mp_bound_slice_t;

void mp_seq_multiply(const void *items, size_t item_sz, size_t len, size_t times, void *dest);





_Bool mp_seq_cmp_bytes(mp_uint_t op, const byte *data1, size_t len1, const byte *data2, size_t len2);
_Bool mp_seq_cmp_objs(mp_uint_t op, const mp_obj_t *items1, size_t len1, const mp_obj_t *items2, size_t len2);
mp_obj_t mp_seq_index_obj(const mp_obj_t *items, size_t len, size_t n_args, const mp_obj_t *args);
mp_obj_t mp_seq_count_obj(const mp_obj_t *items, size_t len, mp_obj_t value);
mp_obj_t mp_seq_extract_slice(size_t len, const mp_obj_t *seq, mp_bound_slice_t *indexes);
# 36 "../../py/mpstate.h" 2
# 1 "../../py/objlist.h" 1
# 31 "../../py/objlist.h"
typedef struct _mp_obj_list_t {
    mp_obj_base_t base;
    size_t alloc;
    size_t len;
    mp_obj_t *items;
} mp_obj_list_t;

void mp_obj_list_init(mp_obj_list_t *o, size_t n);
# 37 "../../py/mpstate.h" 2
# 1 "../../py/objexcept.h" 1
# 30 "../../py/objexcept.h"
# 1 "../../py/objtuple.h" 1
# 31 "../../py/objtuple.h"
typedef struct _mp_obj_tuple_t {
    mp_obj_base_t base;
    size_t len;
    mp_obj_t items[];
} mp_obj_tuple_t;

typedef struct _mp_rom_obj_tuple_t {
    mp_obj_base_t base;
    size_t len;
    mp_rom_obj_t items[];
} mp_rom_obj_tuple_t;

void mp_obj_tuple_print(const mp_print_t *print, mp_obj_t o_in, mp_print_kind_t kind);
mp_obj_t mp_obj_tuple_unary_op(mp_unary_op_t op, mp_obj_t self_in);
mp_obj_t mp_obj_tuple_binary_op(mp_binary_op_t op, mp_obj_t lhs, mp_obj_t rhs);
mp_obj_t mp_obj_tuple_subscr(mp_obj_t base, mp_obj_t index, mp_obj_t value);
mp_obj_t mp_obj_tuple_getiter(mp_obj_t o_in, mp_obj_iter_buf_t *iter_buf);

extern const mp_obj_type_t mp_type_attrtuple;
# 62 "../../py/objtuple.h"
mp_obj_t mp_obj_new_attrtuple(const qstr *fields, size_t n, const mp_obj_t *items);
# 31 "../../py/objexcept.h" 2

typedef struct _mp_obj_exception_t {
    mp_obj_base_t base;
    size_t traceback_alloc : (8 * sizeof(size_t) / 2);
    size_t traceback_len : (8 * sizeof(size_t) / 2);
    size_t *traceback_data;
    mp_obj_tuple_t *args;
} mp_obj_exception_t;

void mp_obj_exception_print(const mp_print_t *print, mp_obj_t o_in, mp_print_kind_t kind);
void mp_obj_exception_attr(mp_obj_t self_in, qstr attr, mp_obj_t *dest);
# 38 "../../py/mpstate.h" 2
# 58 "../../py/mpstate.h"
typedef struct _mp_sched_item_t {
    mp_obj_t func;
    mp_obj_t arg;
} mp_sched_item_t;


typedef struct _mp_state_mem_t {






    byte *gc_alloc_table_start;
    size_t gc_alloc_table_byte_len;



    byte *gc_pool_start;
    byte *gc_pool_end;

    int gc_stack_overflow;
    size_t gc_stack[(64)];
    __uint16_t gc_lock_depth;




    __uint16_t gc_auto_collect_enabled;


    size_t gc_alloc_amount;
    size_t gc_alloc_threshold;


    size_t gc_last_free_atb_index;
# 103 "../../py/mpstate.h"
} mp_state_mem_t;



typedef struct _mp_state_vm_t {







    qstr_pool_t *last_pool;


    mp_obj_exception_t mp_emergency_exception_obj;
# 137 "../../py/mpstate.h"
    mp_obj_dict_t mp_loaded_modules_dict;


    volatile mp_obj_t mp_pending_exception;
# 152 "../../py/mpstate.h"
    mp_obj_dict_t dict_main;


    mp_obj_list_t mp_sys_path_obj;
    mp_obj_list_t mp_sys_argv_obj;







   
# 191 "../../py/mpstate.h"
    byte *qstr_last_chunk;
    size_t qstr_last_alloc;
    size_t qstr_last_used;







    mp_uint_t mp_optimise_value;
# 218 "../../py/mpstate.h"
} mp_state_vm_t;



typedef struct _mp_state_thread_t {

    char *stack_top;
# 242 "../../py/mpstate.h"
    mp_obj_dict_t *dict_locals;
    mp_obj_dict_t *dict_globals;

    nlr_buf_t *nlr_top;
} mp_state_thread_t;



typedef struct _mp_state_ctx_t {
    mp_state_thread_t thread;
    mp_state_vm_t vm;
    mp_state_mem_t mem;
} mp_state_ctx_t;

extern mp_state_ctx_t mp_state_ctx;
# 30 "../../py/runtime.h" 2
# 1 "../../py/pystack.h" 1
# 80 "../../py/pystack.h"
static inline void mp_local_free(void *ptr) {
    (void)ptr;
}

static inline void *mp_nonlocal_alloc(size_t n_bytes) {
    return ((__uint8_t*)(m_malloc(sizeof(__uint8_t) * (n_bytes))));
}

static inline void *mp_nonlocal_realloc(void *ptr, size_t old_n_bytes, size_t new_n_bytes) {
    return ((__uint8_t*)(m_realloc((ptr), sizeof(__uint8_t) * (new_n_bytes))));
}

static inline void mp_nonlocal_free(void *ptr, size_t n_bytes) {
    ((void)(n_bytes), m_free(ptr));
}
# 31 "../../py/runtime.h" 2

typedef enum {
    MP_VM_RETURN_NORMAL,
    MP_VM_RETURN_YIELD,
    MP_VM_RETURN_EXCEPTION,
} mp_vm_return_kind_t;

typedef enum {
    MP_ARG_BOOL = 0x001,
    MP_ARG_INT = 0x002,
    MP_ARG_OBJ = 0x003,
    MP_ARG_KIND_MASK = 0x0ff,
    MP_ARG_REQUIRED = 0x100,
    MP_ARG_KW_ONLY = 0x200,
} mp_arg_flag_t;

typedef union _mp_arg_val_t {
    _Bool u_bool;
    mp_int_t u_int;
    mp_obj_t u_obj;
    mp_rom_obj_t u_rom_obj;
} mp_arg_val_t;

typedef struct _mp_arg_t {
    __uint16_t qst;
    __uint16_t flags;
    mp_arg_val_t defval;
} mp_arg_t;


extern const byte mp_unary_op_method_name[];
extern const byte mp_binary_op_method_name[];

void mp_init(void);
void mp_deinit(void);

void mp_handle_pending(void);
void mp_handle_pending_tail(mp_uint_t atomic_state);
# 78 "../../py/runtime.h"
int mp_print_mp_int(const mp_print_t *print, mp_obj_t x, int base, int base_char, int flags, char fill, int width, int prec);

void mp_arg_check_num_sig(size_t n_args, size_t n_kw, __uint32_t sig);
static inline void mp_arg_check_num(size_t n_args, size_t n_kw, size_t n_args_min, size_t n_args_max, _Bool takes_kw) {
    mp_arg_check_num_sig(n_args, n_kw, (__uint32_t)(((n_args_min) << 17) | ((n_args_max) << 1) | ((takes_kw) ? 1 : 0)));
}
void mp_arg_parse_all(size_t n_pos, const mp_obj_t *pos, mp_map_t *kws, size_t n_allowed, const mp_arg_t *allowed, mp_arg_val_t *out_vals);
void mp_arg_parse_all_kw_array(size_t n_pos, size_t n_kw, const mp_obj_t *args, size_t n_allowed, const mp_arg_t *allowed, mp_arg_val_t *out_vals);
__attribute__((noreturn)) void mp_arg_error_terse_mismatch(void);
__attribute__((noreturn)) void mp_arg_error_unimpl_kw(void);

static inline mp_obj_dict_t *mp_locals_get(void) { return (mp_state_ctx.thread.dict_locals); }
static inline void mp_locals_set(mp_obj_dict_t *d) { (mp_state_ctx.thread.dict_locals) = d; }
static inline mp_obj_dict_t *mp_globals_get(void) { return (mp_state_ctx.thread.dict_globals); }
static inline void mp_globals_set(mp_obj_dict_t *d) { (mp_state_ctx.thread.dict_globals) = d; }

mp_obj_t mp_load_name(qstr qst);
mp_obj_t mp_load_global(qstr qst);
mp_obj_t mp_load_build_class(void);
void mp_store_name(qstr qst, mp_obj_t obj);
void mp_store_global(qstr qst, mp_obj_t obj);
void mp_delete_name(qstr qst);
void mp_delete_global(qstr qst);

mp_obj_t mp_unary_op(mp_unary_op_t op, mp_obj_t arg);
mp_obj_t mp_binary_op(mp_binary_op_t op, mp_obj_t lhs, mp_obj_t rhs);

mp_obj_t mp_call_function_0(mp_obj_t fun);
mp_obj_t mp_call_function_1(mp_obj_t fun, mp_obj_t arg);
mp_obj_t mp_call_function_2(mp_obj_t fun, mp_obj_t arg1, mp_obj_t arg2);
mp_obj_t mp_call_function_n_kw(mp_obj_t fun, size_t n_args, size_t n_kw, const mp_obj_t *args);
mp_obj_t mp_call_method_n_kw(size_t n_args, size_t n_kw, const mp_obj_t *args);
mp_obj_t mp_call_method_n_kw_var(_Bool have_self, size_t n_args_n_kw, const mp_obj_t *args);
mp_obj_t mp_call_method_self_n_kw(mp_obj_t meth, mp_obj_t self, size_t n_args, size_t n_kw, const mp_obj_t *args);


mp_obj_t mp_call_function_1_protected(mp_obj_t fun, mp_obj_t arg);
mp_obj_t mp_call_function_2_protected(mp_obj_t fun, mp_obj_t arg1, mp_obj_t arg2);

typedef struct _mp_call_args_t {
    mp_obj_t fun;
    size_t n_args, n_kw, n_alloc;
    mp_obj_t *args;
} mp_call_args_t;
# 131 "../../py/runtime.h"
void mp_unpack_sequence(mp_obj_t seq, size_t num, mp_obj_t *items);
void mp_unpack_ex(mp_obj_t seq, size_t num, mp_obj_t *items);
mp_obj_t mp_store_map(mp_obj_t map, mp_obj_t key, mp_obj_t value);
mp_obj_t mp_load_attr(mp_obj_t base, qstr attr);
void mp_convert_member_lookup(mp_obj_t obj, const mp_obj_type_t *type, mp_obj_t member, mp_obj_t *dest);
void mp_load_method(mp_obj_t base, qstr attr, mp_obj_t *dest);
void mp_load_method_maybe(mp_obj_t base, qstr attr, mp_obj_t *dest);
void mp_load_method_protected(mp_obj_t obj, qstr attr, mp_obj_t *dest, _Bool catch_all_exc);
void mp_load_super_method(qstr attr, mp_obj_t *dest);
void mp_store_attr(mp_obj_t base, qstr attr, mp_obj_t val);

mp_obj_t mp_getiter(mp_obj_t o, mp_obj_iter_buf_t *iter_buf);
mp_obj_t mp_iternext_allow_raise(mp_obj_t o);
mp_obj_t mp_iternext(mp_obj_t o);
mp_vm_return_kind_t mp_resume(mp_obj_t self_in, mp_obj_t send_value, mp_obj_t throw_value, mp_obj_t *ret_val);

mp_obj_t mp_make_raise_obj(mp_obj_t o);

mp_obj_t mp_import_name(qstr name, mp_obj_t fromlist, mp_obj_t level);
mp_obj_t mp_import_from(mp_obj_t module, qstr name);
void mp_import_all(mp_obj_t module);

__attribute__((noreturn)) void mp_raise_msg(const mp_obj_type_t *exc_type, const char *msg);

__attribute__((noreturn)) void mp_raise_ValueError(const char *msg);
__attribute__((noreturn)) void mp_raise_TypeError(const char *msg);
__attribute__((noreturn)) void mp_raise_NotImplementedError(const char *msg);
__attribute__((noreturn)) void mp_raise_OSError(int errno_);
__attribute__((noreturn)) void mp_raise_recursion_depth(void);
# 172 "../../py/runtime.h"
mp_uint_t mp_convert_obj_to_native(mp_obj_t obj, mp_uint_t type);
mp_obj_t mp_convert_native_to_obj(mp_uint_t val, mp_uint_t type);
mp_obj_dict_t *mp_native_swap_globals(mp_obj_dict_t *new_globals);
mp_obj_t mp_native_call_function_n_kw(mp_obj_t fun_in, size_t n_args_kw, const mp_obj_t *args);
void mp_native_raise(mp_obj_t o);
# 30 "../../py/pystack.c" 2
