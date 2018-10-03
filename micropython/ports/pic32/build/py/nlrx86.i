# 1 "../../py/nlrx86.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../py/nlrx86.c"
# 27 "../../py/nlrx86.c"
# 1 "../../py/mpstate.h" 1
# 29 "../../py/mpstate.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdint.h" 1
# 46 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdint.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_types.h" 1
# 46 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_types.h"
typedef __signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short int __int16_t;
typedef unsigned short int __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 60 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_types.h"
__extension__
typedef long long int __int64_t;

__extension__
typedef unsigned long long int __uint64_t;
# 75 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_types.h"
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 47 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdint.h" 2


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



# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_mwgwtypes.h" 1
# 48 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_mwgwtypes.h"
__extension__
typedef __signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int int_least16_t;
typedef unsigned short int uint_least16_t;
typedef int int_least24_t;
typedef unsigned int uint_least24_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
# 65 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_mwgwtypes.h"
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
# 89 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_mwgwtypes.h"
__extension__
typedef long long int int_fast64_t;

__extension__
typedef unsigned long long int uint_fast64_t;
# 106 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_mwgwtypes.h"
__extension__
typedef long long int intmax_t;

__extension__
typedef unsigned long long int uintmax_t;
# 99 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdint.h" 2


# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_limits.h" 1
# 102 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdint.h" 2



# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_const.h" 1
# 106 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdint.h" 2
# 30 "../../py/mpstate.h" 2

# 1 "../../py/mpconfig.h" 1
# 45 "../../py/mpconfig.h"
# 1 "./mpconfigport.h" 1
# 59 "./mpconfigport.h"
typedef __int32_t mp_int_t;
typedef __uint32_t mp_uint_t;
typedef long mp_off_t;
# 72 "./mpconfigport.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/alloca.h" 1
# 72 "./mpconfigport.h" 2
# 46 "../../py/mpconfig.h" 2
# 32 "../../py/mpstate.h" 2
# 1 "../../py/mpthread.h" 1
# 33 "../../py/mpstate.h" 2
# 1 "../../py/misc.h" 1
# 33 "../../py/misc.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdbool.h" 1
# 34 "../../py/misc.h" 2

# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stddef.h" 1
# 79 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stddef.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/ansi.h" 1
# 80 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stddef.h" 2


typedef long unsigned int size_t;




typedef long int ptrdiff_t;







typedef int wchar_t;




typedef unsigned int wint_t;
# 36 "../../py/misc.h" 2

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
# 206 "../../py/misc.h"
int DEBUG_printf(const char *fmt, ...);

extern mp_uint_t mp_verbose_flag;
# 34 "../../py/mpstate.h" 2
# 1 "../../py/nlr.h" 1
# 32 "../../py/nlr.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/limits.h" 1
# 171 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/limits.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/limits.h" 1
# 172 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/limits.h" 2
# 33 "../../py/nlr.h" 2
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/assert.h" 1
# 74 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/assert.h"
extern void __assfail(const char *fmt,...) __attribute__ ((noreturn));
# 34 "../../py/nlr.h" 2
# 68 "../../py/nlr.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/setjmp.h" 1
# 98 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/setjmp.h"
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
# 28 "../../py/nlrx86.c" 2
