dnl $Id$
dnl config.m4 for extension strive

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

 PHP_ARG_WITH(strive, for strive support,
 Make sure that the comment is aligned:
 [  --with-strive             Include strive support])

dnl Otherwise use enable:

 PHP_ARG_ENABLE(strive, whether to enable strive support,
 Make sure that the comment is aligned:
 [  --enable-strive           Enable strive support])

if test "$PHP_STRIVE" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-strive -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/strive.h"  # you most likely want to change this
  dnl if test -r $PHP_STRIVE/$SEARCH_FOR; then # path given as parameter
  dnl   STRIVE_DIR=$PHP_STRIVE
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for strive files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       STRIVE_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$STRIVE_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the strive distribution])
  dnl fi

  dnl # --with-strive -> add include path
  dnl PHP_ADD_INCLUDE($STRIVE_DIR/include)

  dnl # --with-strive -> check for lib and symbol presence
  dnl LIBNAME=strive # you may want to change this
  dnl LIBSYMBOL=strive # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $STRIVE_DIR/$PHP_LIBDIR, STRIVE_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_STRIVELIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong strive lib version or lib not found])
  dnl ],[
  dnl   -L$STRIVE_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(STRIVE_SHARED_LIBADD)

  PHP_NEW_EXTENSION(strive, strive.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
