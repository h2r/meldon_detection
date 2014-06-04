dnl Copyright (C) 2005-2006   Christopher C. Hulbert
dnl
dnl  This library is free software; you can redistribute it and/or
dnl  modify it under the terms of the GNU Lesser General Public
dnl  License as published by the Free Software Foundation; either
dnl  version 2.1 of the License, or (at your option) any later version.
dnl
dnl  This library is distributed in the hope that it will be useful,
dnl  but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
dnl  Lesser General Public License for more details.
dnl
dnl  You should have received a copy of the GNU Lesser General Public
dnl  License along with this library; if not, write to the Free Software
dnl  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
AC_DEFUN([CHECK_MATIO_INT16_T],
[
    AC_MSG_CHECKING([for mat_int16_t])

    AC_TRY_LINK(
    [
        #include <stdlib.h>
        #ifdef HAVE_INTTYPES_H
        #   include <inttypes.h>
        #endif
        #ifdef HAVE_STDINT_H
        #   include <stdint.h>
        #endif
    ],
    [int16_t i = 0;],
    ac_have_mat_int16_t=yes,ac_have_mat_int16_t=no)

    if test "x$ac_have_mat_int16_t" = "xyes"
    then
        ac_have_mat_int16_t=yes
        AC_DEFINE_UNQUOTED([HAVE_MAT_INT16_T],[],[Have MAT int16])
        AC_DEFINE_UNQUOTED([_mat_int16_t],[int16_t],[int16 type])
        AC_MSG_RESULT([int16_t])
    fi
    if test "x$ac_have_mat_int16_t" != "xyes"
    then
        AC_TRY_LINK(
        [
            #include <stdlib.h>
            #ifdef HAVE_INTTYPES_H
            #   include <inttypes.h>
            #endif
            #ifdef HAVE_STDINT_H
            #   include <stdint.h>
            #endif
            #include <limits.h>
            #if CHAR_BIT != 16
            #matio sizeof(signed char) not 16 bits
            #endif
        ],
        [signed char i = 0;],
        ac_have_mat_int16_t=yes,ac_have_mat_int16_t=no)

        if test "x$ac_have_mat_int16_t" = "xyes"
        then
            AC_DEFINE_UNQUOTED([HAVE_MAT_INT16_T],[],[Have MAT int16])
            AC_DEFINE_UNQUOTED([_mat_int16_t],[signed char],[int16 type])
            AC_MSG_RESULT([signed char])
        fi
    fi
    if test "x$ac_have_mat_int16_t" != "xyes"
    then
        AC_TRY_LINK(
        [
            #include <stdlib.h>
            #ifdef HAVE_INTTYPES_H
            #   include <inttypes.h>
            #endif
            #ifdef HAVE_STDINT_H
            #   include <stdint.h>
            #endif
            #include <limits.h>
            #if CHAR_BIT*SIZEOF_SHORT != 16
            #matio sizeof(short) not 16 bits
            #endif
        ],
        [short i = 0;],
        ac_have_mat_int16_t=yes,ac_have_mat_int16_t=no)

        if test "x$ac_have_mat_int16_t" = "xyes"
        then
            AC_DEFINE_UNQUOTED([HAVE_MAT_INT16_T],[],[Have MAT int16])
            AC_DEFINE_UNQUOTED([_mat_int16_t],[short],[int16 type])
            AC_MSG_RESULT([short])
        fi
    fi
    if test "x$ac_have_mat_int16_t" != "xyes"
    then
        AC_TRY_LINK(
        [
            #include <stdlib.h>
            #ifdef HAVE_INTTYPES_H
            #   include <inttypes.h>
            #endif
            #ifdef HAVE_STDINT_H
            #   include <stdint.h>
            #endif
            #include <limits.h>
            #if CHAR_BIT*SIZEOF_INT != 16
            #matio sizeof(int) not 16 bits
            #endif
        ],
        [int i = 0;],
        ac_have_mat_int16_t=yes,ac_have_mat_int16_t=no)

        if test "x$ac_have_mat_int16_t" = "xyes"
        then
            AC_DEFINE_UNQUOTED([HAVE_MAT_INT16_T],[],[Have MAT int16])
            AC_DEFINE_UNQUOTED([_mat_int16_t],[int],[int16 type])
            AC_MSG_RESULT([int])
        fi
    fi
    if test "x$ac_have_mat_int16_t" != "xyes"
    then
        AC_TRY_LINK(
        [
            #include <stdlib.h>
            #ifdef HAVE_INTTYPES_H
            #   include <inttypes.h>
            #endif
            #ifdef HAVE_STDINT_H
            #   include <stdint.h>
            #endif
            #include <limits.h>
            #if CHAR_BIT*SIZEOF_LONG != 16
            #matio sizeof(long) not 16 bits
            #endif
        ],
        [long i = 0;],
        ac_have_mat_int16_t=yes,ac_have_mat_int16_t=no)

        if test "x$ac_have_mat_int16_t" = "xyes"
        then
            AC_DEFINE_UNQUOTED([HAVE_MAT_INT16_T],[],[Have MAT int16])
            AC_DEFINE_UNQUOTED([_mat_int16_t],[long],[int16 type])
            AC_MSG_RESULT([long])
        fi
    fi
    if test "x$ac_have_mat_int16_t" != "xyes"
    then
        AC_TRY_LINK(
        [
            #include <stdlib.h>
            #ifdef HAVE_INTTYPES_H
            #   include <inttypes.h>
            #endif
            #ifdef HAVE_STDINT_H
            #   include <stdint.h>
            #endif
            #include <limits.h>
            #if CHAR_BIT*SIZEOF_LONG_LONG != 16
            #matio sizeof(long long) not 16 bits
            #endif
        ],
        [long long i = 0;],
        ac_have_mat_int16_t=yes,ac_have_mat_int16_t=no)

        if test "x$ac_have_mat_int16_t" = "xyes"
        then
            AC_DEFINE_UNQUOTED([HAVE_MAT_INT16_T],[],[Have MAT int16])
            AC_DEFINE_UNQUOTED([_mat_int16_t],[long long],[int16 type])
            AC_MSG_RESULT([long long])
        fi
    fi
    if test "x$ac_have_mat_int16_t" != "xyes"
    then
        AC_MSG_RESULT([])
    fi
])
