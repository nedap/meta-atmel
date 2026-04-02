require dtc.inc

LIC_FILES_CHKSUM = "file://GPL;md5=94d55d512a9ba36caa9b7df079bae19f \
		    file://libfdt/libfdt.h;beginline=3;endline=52;md5=fb360963151f8ec2d6c06b055bcbb68c"


SRCREV = "84e414b0b5bcea3a82875d79cc15520440e1e49b"

EXTRA_OEMAKE_append_class-native = " 'CFLAGS=-g -Os $$(SHAREDLIB_CFLAGS) -Werror $$(WARNINGS) -Wno-error=array-bounds'"
EXTRA_OEMAKE_append_class-nativesdk = " 'CFLAGS=-g -Os $$(SHAREDLIB_CFLAGS) -Werror $$(WARNINGS) -Wno-error=array-bounds'"

S = "${WORKDIR}/git"

BBCLASSEXTEND = "native nativesdk"
