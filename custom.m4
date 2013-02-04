AC_CONFIG_FILES([mak/25-sipfoundry.mk:custom/sipfoundry.mk.in])
AC_CONFIG_FILES([mak/35-sipfoundry-ci.mk:custom/sipfoundry-ci.mk.in])

AC_PATH_PROG(S3CMD, s3cmd)
if [ test -z "$S3CMD" ]; then
  AC_MSG_ERROR([s3cmd program is required. Redhat users run: 'yum install s3cmd'])
fi

AC_PATH_PROG(WGET, wget)
if [ test -z "$WGET" ]; then
  AC_MSG_ERROR([wget program is required. Redhat users run: 'yum install wget'])
fi
