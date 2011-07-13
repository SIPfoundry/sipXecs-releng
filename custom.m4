AC_CONFIG_FILES([mak/25-sipfoundry.mk:custom/sipfoundry.mk.in])

AC_ARG_VAR(SF_STAGING_ID, [If you want to permanently divert upload to non-production site for staging purposes. e.g. '-stage'])

AC_PATH_PROG(S3CMD, s3cmd)
if [ test -z "$S3CMD" ]; then
  AC_MSG_ERROR([s3cmd program is required. Redhat users run: 'yum install s3cmd'])
fi

AC_PATH_PROG(WGET, wget)
if [ test -z "$WGET" ]; then
  AC_MSG_ERROR([wget program is required. Redhat users run: 'yum install wget'])
fi
