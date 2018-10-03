# 1 "../../py/pystack.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../py/pystack.c"
# 27 "../../py/pystack.c"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h" 1
# 70 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/posix.h" 1
# 111 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/posix.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread/unistd.h" 1
# 112 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/posix.h" 2
# 71 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h" 2



# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdarg.h" 1
# 75 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdarg.h"
typedef __builtin_va_list __va_list;





typedef __builtin_va_list __gnuc_va_list;
# 75 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h" 2


# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stddef.h" 1
# 79 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stddef.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/ansi.h" 1
# 80 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stddef.h" 2


typedef long unsigned int size_t;




typedef long int ptrdiff_t;







typedef int wchar_t;




typedef unsigned int wint_t;
# 78 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h" 2


# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/types.h" 1
# 67 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/types.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/types.h" 1
# 64 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/types.h"
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
# 65 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/types.h" 2



typedef __int8_t int8_t;



typedef __int8_t uint8_t;



typedef __int8_t u_int8_t;



typedef __int16_t int16_t;



typedef __int16_t uint16_t;



typedef __int16_t u_int16_t;



typedef __int32_t int32_t;



typedef __int32_t uint32_t;



typedef __int32_t u_int32_t;




typedef __int64_t int64_t;



typedef __int64_t uint64_t;



typedef __int64_t u_int64_t;
# 122 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/types.h"
typedef __int32_t register_t;
# 68 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/types.h" 2
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/endian.h" 1
# 135 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/endian.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/endian.h" 1
# 46 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/endian.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/cdefs.h" 1
# 53 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/cdefs.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/cdefs.h" 1
# 54 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/cdefs.h" 2
# 47 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/endian.h" 2


# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/types.h" 1
# 50 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/endian.h" 2






# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/swap.h" 1
# 57 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/endian.h" 2
# 100 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/endian.h"

__uint32_t htobe32 (__uint32_t);
__uint16_t htobe16 (__uint16_t);
__uint32_t betoh32 (__uint32_t);
__uint16_t betoh16 (__uint16_t);

__uint32_t htole32 (__uint32_t);
__uint16_t htole16 (__uint16_t);
__uint32_t letoh32 (__uint32_t);
__uint16_t letoh16 (__uint16_t);

__uint32_t (ntohl) (__uint32_t);
__uint32_t (htonl) (__uint32_t);
__uint16_t (ntohs) (__uint16_t);
__uint16_t (htons) (__uint16_t);

# 135 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/endian.h" 2
# 69 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/types.h" 2



typedef long time_t;
# 82 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/types.h"
typedef long ssize_t;




typedef __int64_t off_t;




typedef int clockid_t;




typedef void * timer_t;




typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef unsigned char unchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __uint64_t u_quad_t;
typedef __int64_t quad_t;
typedef quad_t * qaddr_t;

typedef char * caddr_t;
typedef __int32_t daddr_t;
typedef __uint16_t dev_t;
typedef __uint32_t fixpt_t;
typedef __uint16_t gid_t;
typedef __uint16_t ino_t;
typedef long key_t;
typedef __uint16_t mode_t;
typedef __uint16_t nlink_t;
typedef __int16_t pid_t;
typedef __uint16_t uid_t;
typedef quad_t rlim_t;
typedef __uint32_t useconds_t;
typedef __int32_t suseconds_t;
# 140 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/types.h"
typedef __uint32_t in_addr_t;
typedef __uint16_t in_port_t;
typedef __uint8_t sa_family_t;
typedef __uint32_t socklen_t;
# 164 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/types.h"
typedef __int32_t fd_mask;






typedef struct fd_set {
 fd_mask fds_bits[(((64) + (((sizeof(fd_mask) * 8)) - 1)) / ((sizeof(fd_mask) * 8)))];
} fd_set;
# 81 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h" 2
# 102 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/libc_thread.h" 1
# 61 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/libc_thread.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h" 1
# 62 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/signal.h" 1
# 65 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/signal.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/signal.h" 1
# 137 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/signal.h"
__extension__ typedef unsigned long long sigset_t;


typedef int sig_atomic_t;
# 182 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/signal.h"
struct siginfo;

struct sigaction {
  union {
    void (*usa_handler)(int);
    void (*usa_sigaction)(int,struct siginfo *,void *);
  } sa_u;


  sigset_t sa_mask;
  int sa_flags;
};






struct sigvec {
        void (*sv_handler) (int);
     int sv_mask;
        int sv_flags;
};
# 227 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/signal.h"
void (*signal (int,void (*)(int))) (int);
int raise (int);


int kill (pid_t, int);
int sigaction (int, const struct sigaction *, struct sigaction *);
int sigpending (sigset_t *);
int sigprocmask (int, const sigset_t *, sigset_t *);
int sigsuspend (const sigset_t *);
# 66 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/signal.h" 2
# 76 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/signal.h"
extern const char *const sys_signame[65];
extern const char *const sys_siglist[65];
# 63 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h" 2
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/time.h" 1
# 66 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/time.h"
struct timeval {
 long tv_sec;
 long tv_usec;
};


struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};
# 113 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/time.h"
struct xcptcontext;

struct itimerval {
    struct timeval it_interval;
    struct timeval it_value;
    void (*it_func)(struct timeval *, struct xcptcontext *);
};

int setitimer (unsigned int, struct itimerval *, struct itimerval *);
int getitimer (unsigned int, struct itimerval *);
int gettimeofday (struct timeval *, void *);
int settimeofday (const struct timeval *, void *);



struct timespec {
    long tv_sec;
    long tv_nsec;
};

struct itimerspec {
    struct timespec it_value;
    struct timespec it_interval;
};
# 174 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/time.h"
int clock_getres (clockid_t, struct timespec *);
int clock_gettime (clockid_t, struct timespec *);
int clock_settime (clockid_t, const struct timespec *);
int nanosleep (const struct timespec *, struct timespec *);

struct sigevent;
# 188 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sys/time.h"
int timer_create (clockid_t, struct sigevent *, timer_t *);
int timer_delete (timer_t);
int timer_getoverrun (timer_t);
int timer_gettime (timer_t, struct itimerspec *);
int timer_settime (timer_t, int, const struct itimerspec *,
         struct itimerspec *);
# 64 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h" 2
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sched.h" 1
# 73 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/sched.h"
struct sched_param {
    int sched_priority;
};

struct timespec;
int sched_get_priority_min (int);
int sched_get_priority_max (int);
int sched_rr_get_interval (pid_t, struct timespec *);
int sched_rr_set_interval (pid_t, const struct timespec *);
int sched_getscheduler (pid_t, struct sched_param *);
int sched_setscheduler (pid_t, const struct sched_param *);
int sched_getparam (pid_t, struct sched_param *);
int sched_setparam (pid_t, const struct sched_param *);
int sched_yield (void);
# 65 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h" 2


# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread/impl.h" 1
# 71 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread/impl.h"
struct _rtpx_thread;
typedef struct _rtpx_thread * pthread_t;


typedef struct _rtpx_waitq {
    struct _rtpx_thread * wq_first;
} _pthread_waitq_t;
# 68 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h" 2

# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread/limits.h" 1
# 70 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h" 2
# 107 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h"
enum {
    PTHREAD_CREATE_JOINABLE,

    PTHREAD_CREATE_DETACHED,

    PTHREAD_CREATE_DAEMON_NP

};


enum {
    PTHREAD_SCOPE_PROCESS,

    PTHREAD_SCOPE_SYSTEM

};


enum {
    PTHREAD_INHERIT_SCHED,

    PTHREAD_EXPLICIT_SCHED

};


typedef struct {
    void * tha_stackaddr;
    unsigned int tha_stacksize;
    unsigned int tha_guardsize;
    unsigned char tha_detachstate;
    unsigned char tha_scope;
    unsigned char tha_inheritsched;
    unsigned char tha_schedpolicy;
    struct sched_param tha_schedparam;
    const char * tha_name;
} pthread_attr_t;



enum {
    PTHREAD_PRIO_NONE,

    PTHREAD_PRIO_INHERIT,

    PTHREAD_PRIO_PROTECT

};


enum {
    PTHREAD_PROCESS_PRIVATE,

    PTHREAD_PROCESS_SHARED

};



enum
{
  PTHREAD_MUTEX_DEFAULT_NP,
  PTHREAD_MUTEX_FAST_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP







};


typedef struct {
    unsigned char mxa_type;
    unsigned char mxa_pshared;
    unsigned char mxa_protocol;
    unsigned char mxa_prioceiling;
    const char * mxa_name;
} pthread_mutexattr_t;


typedef struct {
    unsigned char cda_pshared;
    unsigned char cda_interruptible;
    const char * cda_name;
} pthread_condattr_t;


typedef struct {
    unsigned char rwa_pshared;
    const char * rwa_name;
} pthread_rwlockattr_t;





int pthread_attr_init (pthread_attr_t *);
int pthread_attr_destroy (pthread_attr_t *);
int pthread_attr_setscope (pthread_attr_t *, int);
int pthread_attr_getscope (const pthread_attr_t *, int *);
int pthread_attr_setinheritsched (pthread_attr_t *, int);
int pthread_attr_getinheritsched (const pthread_attr_t *, int *);
int pthread_attr_setschedpolicy (pthread_attr_t *, int);
int pthread_attr_getschedpolicy (const pthread_attr_t *, int *);
int pthread_attr_setschedparam (pthread_attr_t *, const struct sched_param *);
int pthread_attr_getschedparam (const pthread_attr_t *, struct sched_param *);
int pthread_attr_setcontentionscope (pthread_attr_t *, int);
int pthread_attr_getcontentionscope (const pthread_attr_t *, int *);
int pthread_attr_setstacksize (pthread_attr_t *, size_t);
int pthread_attr_getstacksize (const pthread_attr_t *, size_t *);
int pthread_attr_setstackaddr (pthread_attr_t *, void *);
int pthread_attr_getstackaddr (const pthread_attr_t *, void **);
int pthread_attr_setguardsize_np (pthread_attr_t *, size_t);
int pthread_attr_getguardsize_np (const pthread_attr_t *, size_t *);




int pthread_attr_setdetachstate (pthread_attr_t *, int);
int pthread_attr_getdetachstate (const pthread_attr_t *, int *);
int pthread_attr_setprio (pthread_attr_t *, int);
int pthread_attr_getprio (const pthread_attr_t *, int *);

int pthread_attr_setname_np (pthread_attr_t *, const char *);
int pthread_attr_getname_np (const pthread_attr_t *, const char **);






int pthread_mutexattr_init (pthread_mutexattr_t *);
int pthread_mutexattr_destroy (pthread_mutexattr_t *);
int pthread_mutexattr_setpshared (pthread_mutexattr_t *, int);
int pthread_mutexattr_getpshared (const pthread_mutexattr_t *, int *);


int pthread_mutexattr_setprotocol(pthread_mutexattr_t *, int);
int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *, int *);


int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *, int);
int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *, int *);


int pthread_mutexattr_setname_np (pthread_mutexattr_t *, const char *);
int pthread_mutexattr_getname_np (const pthread_mutexattr_t *, const char **);


int pthread_mutexattr_settype_np (pthread_mutexattr_t *, int);
int pthread_mutexattr_gettype_np (const pthread_mutexattr_t *, int *);
# 271 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h"
int pthread_condattr_init (pthread_condattr_t *);
int pthread_condattr_destroy (pthread_condattr_t *);
int pthread_condattr_setpshared (pthread_condattr_t *, int);
int pthread_condattr_getpshared (const pthread_condattr_t *, int *);

int pthread_condattr_setname_np (pthread_condattr_t *, const char *);
int pthread_condattr_getname_np (const pthread_condattr_t *, const char **);

int pthread_condattr_setinterruptible_np (pthread_condattr_t *, int);
int pthread_condattr_getinterruptible_np (const pthread_condattr_t *, int *);





int pthread_rwlockattr_init (pthread_rwlockattr_t *);
int pthread_rwlockattr_destroy (pthread_rwlockattr_t *);
int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *, int);
int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *, int *);





typedef struct pthread_mutex {
  _pthread_waitq_t mx_waitq;
  unsigned int mx_flags;
  pthread_mutexattr_t mx_mxa;
  pthread_t mx_owner;
  struct pthread_mutex *mx_olink;
  short mx_count;
  char mx_spare[6];
} pthread_mutex_t;
# 334 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h"
int pthread_mutex_init (pthread_mutex_t *, const pthread_mutexattr_t *);
int pthread_mutex_destroy (pthread_mutex_t *);
int pthread_mutex_lock (pthread_mutex_t *);
int pthread_mutex_trylock (pthread_mutex_t *);
int pthread_mutex_unlock (pthread_mutex_t *);
int pthread_mutex_setprioceiling (pthread_mutex_t *, int, int *);
int pthread_mutex_getprioceiling (const pthread_mutex_t *, int *);

int pthread_mutex_setname_np (pthread_mutex_t *, const char *);
int pthread_mutex_getname_np (const pthread_mutex_t *, const char **);






typedef struct {
  _pthread_waitq_t cd_waitq;
  pthread_condattr_t cd_cda;
  char cd_spare[8];
} pthread_cond_t;



struct timespec;
int pthread_cond_init (pthread_cond_t *, const pthread_condattr_t *);
int pthread_cond_destroy (pthread_cond_t *);
int pthread_cond_wait (pthread_cond_t *, pthread_mutex_t *);
int pthread_cond_timedwait (pthread_cond_t *, pthread_mutex_t *,
       const struct timespec *);
int pthread_cond_signal (pthread_cond_t *);
int pthread_cond_broadcast (pthread_cond_t *);

int pthread_cond_setname_np (pthread_cond_t *, const char *);
int pthread_cond_getname_np (const pthread_cond_t *, const char **);






typedef struct {
    pthread_mutex_t rw_mx;
    pthread_cond_t rw_rsig;
    pthread_cond_t rw_wsig;
    pthread_rwlockattr_t rw_rwa;
    int rw_locks;
    int rw_wrwait;
    int rw_rdwait;
    pthread_t rw_owner;
} pthread_rwlock_t;
# 394 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h"
int pthread_rwlock_init (pthread_rwlock_t *, const pthread_rwlockattr_t *);
int pthread_rwlock_destroy (pthread_rwlock_t *);
int pthread_rwlock_rdlock (pthread_rwlock_t *);
int pthread_rwlock_wrlock (pthread_rwlock_t *);
int pthread_rwlock_tryrdlock (pthread_rwlock_t *);
int pthread_rwlock_trywrlock (pthread_rwlock_t *);
int pthread_rwlock_unlock (pthread_rwlock_t *);




int pthread_create (pthread_t *, const pthread_attr_t *,
      void * (*)(void *), void *);
void pthread_exit (void *) __attribute__ ((noreturn));
int pthread_sigmask (int, const sigset_t *, sigset_t *);
int pthread_kill (pthread_t, int);
pthread_t pthread_self (void);


int pthread_join (pthread_t, void **);
int pthread_detach (pthread_t);


int (pthread_equal) (pthread_t, pthread_t);

int pthread_getschedparam (pthread_t, int *, struct sched_param *);
int pthread_setschedparam (pthread_t, int, const struct sched_param *);

int pthread_getconcurrency_np (void);
int pthread_setconcurrency_np (int);
# 432 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h"
typedef struct {
    unsigned int state;
} pthread_once_t;






int _pthread_once (pthread_once_t *, void (*)(void));
int (pthread_once) (pthread_once_t *, void (*)(void));
# 451 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h"
int pthread_cancel (pthread_t);
void pthread_testcancel (void);


int pthread_setcancelstate (int, int *);


int pthread_setcanceltype (int, int *);


int pthread_setname_np (pthread_t, const char *);
int pthread_getname_np (pthread_t, const char **);


int pthread_getsequence_np (pthread_t, int *);
int pthread_stackused_np (pthread_t, int *);





typedef size_t pthread_key_t;
int pthread_key_create (pthread_key_t *, void (*)(void *));
int pthread_key_delete (pthread_key_t);
int pthread_setspecific (pthread_key_t, const void *);

void * (pthread_getspecific) (pthread_key_t);




struct _pthread_handler_rec {
    struct _pthread_handler_rec *next;
    void (*rtn)(void *);
    void *arg;
    int canceltype;
};

void _pthread_cleanup_push (struct _pthread_handler_rec *);
void _pthread_cleanup_pop (struct _pthread_handler_rec *);

void _pthread_cleanup_push_defer (struct _pthread_handler_rec *);
void _pthread_cleanup_pop_restore (struct _pthread_handler_rec *);
# 521 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/pthread.h"
typedef struct {
    int dba_evn;
    const char * dba_name;
} pthread_doorbellattr_t;

typedef struct {
  _pthread_waitq_t db_waitq;
  pthread_doorbellattr_t db_dba;
  char db_spare[8];
} pthread_doorbell_t;




int pthread_doorbellattr_init (pthread_doorbellattr_t *);
int pthread_doorbellattr_destroy (pthread_doorbellattr_t *);
int pthread_doorbellattr_setevn (pthread_doorbellattr_t *, int);
int pthread_doorbellattr_getevn (const pthread_doorbellattr_t *, int *);
int pthread_doorbellattr_setname (pthread_doorbellattr_t *, const char *);
int pthread_doorbellattr_getname (const pthread_doorbellattr_t *, const char **);

int pthread_doorbell_init (pthread_doorbell_t *,
      const pthread_doorbellattr_t *);
int pthread_doorbell_destroy (pthread_doorbell_t *);
int pthread_doorbell_wait (pthread_doorbell_t *, pthread_mutex_t *);
int pthread_doorbell_trywait (pthread_doorbell_t *);
int pthread_doorbell_timedwait (pthread_doorbell_t *, pthread_mutex_t *,
    struct timespec *);



typedef struct {
    pthread_mutex_t mx;
    pthread_t owner;
    unsigned int nlock;
    pthread_cond_t notbusy;
    char name[8];
} pthread_flock_np_t;

void pthread_flock_init_np (pthread_flock_np_t *, const char *, int, int);
int pthread_flock_lock_np (pthread_flock_np_t *);
int pthread_flock_trylock_np (pthread_flock_np_t *);
void pthread_flock_unlock_np (pthread_flock_np_t *);
void pthread_flock_cleanup_np (pthread_flock_np_t *);


typedef struct {
    sigset_t omask;
    sigset_t odefer;
    int cancel;
} pthread_sigstate_np_t;

void pthread_sigdisable_np (pthread_sigstate_np_t *);
void pthread_sigrestore_np (const pthread_sigstate_np_t *);
int pthread_sigdeferred_np (void);


long pthread_sysconf_np (int);


void * pthread_getpages_np (size_t);



int pthread_proc_create_np (int *, const pthread_attr_t *,
       int (*)(void *), void *);
# 62 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/libc_thread.h" 2
# 71 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/libc_thread.h"
extern int __isthreaded;
# 104 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/libc_thread.h"
struct _thread_private_key_struct {
 pthread_mutex_t mutex;
 int inited;
 void (*cleanfn)(void *);
 pthread_key_t key;
};
# 145 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/libc_thread.h"
void * _libc_private_storage(struct _thread_private_key_struct *,
         void *, size_t, void *);






struct _libc_data {
    struct _iob * _stdin;
    struct _iob * _stdout;
    struct _iob * _stderr;
    struct _iov * _iov;
    struct _atexit * _atexit;
    int _opterr;
    int _optind;
    int _optopt;
    int _optreset;
    char * _optarg;
    char * _optplace;
    int _tmpnamsuf;
    void * _malloc;
    void (*_cleanup) (void);
    int _exiting;
    int _ieee754csr;
    int _spare[8];
};

extern struct _libc_data * _libc_data;
# 103 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h" 2


    typedef off_t fpos_t;




    struct _iobfuncs;

    typedef struct _iob
      {
        int _io_count;
        union _iou
          {
            unsigned char *_io_ptr;
            int _io_char;
          } _io;
        unsigned char *_io_buf;
        int _io_bufsiz;
        unsigned short _io_flags;
        short _io_fd;
        void *_io_lock;
        const struct _iobfuncs *_io_funcs;
      } FILE;
# 149 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h"
    int fclose (FILE *);
    FILE *fopen (const char *, const char *);
    FILE *freopen (const char *, const char *, FILE *);
    FILE *tmpfile (void);


    int fgetc (FILE *);
    char *fgets (char *, int , FILE *);
    size_t fread (void *, size_t, size_t, FILE *);
    int fscanf (FILE *, const char *, ...);
    int getc (FILE *);
    int getchar (void);
    char *gets (char *);
    int scanf (const char *, ...);
    int sscanf (const char *, const char *, ...);
    int ungetc (int, FILE *);


    int fprintf (FILE *, const char *, ...);
    int fputc (int , FILE *);
    int fputs (const char *, FILE *);
    size_t fwrite (const void *, size_t, size_t, FILE *);
    int printf (const char *, ...);
    int putc (int, FILE *);
    int putchar (int);
    int puts (const char *);
    int sprintf (char *, const char *, ...);

    int vfprintf (FILE *, const char *, __va_list);
    int vprintf (const char *, __va_list);
    int vsprintf (char *, const char *, __va_list);

    int vscanf (const char *, __va_list);
    int vsscanf (const char *, const char *, __va_list);
    int vfscanf (FILE *, const char *, __va_list);


    int snprintf (char *, size_t, const char *, ...);
    int vsnprintf (char *, size_t, const char *, __va_list);
    int asprintf (char **, const char *, ...);
    int vasprintf (char **, const char *, __va_list);





    int _ifprintf (FILE *, const char *, ...);
    int _iprintf (const char *, ...);
    int _isprintf (char *, const char *, ...);
    int _ivfprintf (FILE *, const char *, __va_list);
    int _ivprintf (const char *, __va_list);
    int _ivsprintf (char *, const char *, __va_list);

    int _iscanf (const char *, ...);
    int _ifscanf (FILE *, const char *, ...);
    int _isscanf (const char *, const char *, ...);
    int _ivscanf (const char *, __va_list);
    int _ivsscanf (const char *, const char *, __va_list);
    int _ivfscanf (FILE *, const char *, __va_list);


    int _isnprintf (char *, size_t, const char *, ...);
    int _ivsnprintf (char *, size_t, const char *, __va_list);
    int _iasprintf (char **, const char *, ...);
    int _ivasprintf (char **, const char *, __va_list);
# 239 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h"
extern int _mon_getc (int canblock);
extern void _mon_putc (char c);
extern void _mon_puts (const char * s);
extern void _mon_write (const char * s, unsigned int count);





    void clearerr (FILE *);
    int feof (FILE *);
    int ferror (FILE *);
    int fflush (FILE *);
    int fgetpos (FILE *, fpos_t *);
    int fseek (FILE *, long int, int);
    int fsetpos (FILE *, const fpos_t *);
    long int ftell (FILE *);
    void rewind (FILE *);
    void setbuf (FILE *, char *);
    int setvbuf (FILE *, char *, int, size_t);


    int remove (const char *);
    int rename (const char *, const char *);


    char *tmpnam (char *s);
    void perror (const char *s);

    extern int sys_nerr;
    extern const char * const sys_errlist[];
# 278 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h"
    extern int _fwalk (int (*) (FILE *));
# 290 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdio.h"
    void clearerr(FILE *);
# 28 "../../py/pystack.c" 2

# 1 "../../py/runtime.h" 1
# 29 "../../py/runtime.h"
# 1 "../../py/mpstate.h" 1
# 29 "../../py/mpstate.h"
# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdint.h" 1
# 89 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/stdint.h"
typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;



# 1 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_mwgwtypes.h" 1
# 48 "/opt/microchip/xc32/v1.34/pic32mx/include/lega-c/machine/int_mwgwtypes.h"
__extension__
typedef signed char int_least8_t;
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
