FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://atmel-color-format-force.patch"

# No egl on SAM9 or SAMA5
QT_CONFIG_FLAGS_append_at91sam9 = "${@bb.utils.contains('DISTRO_FEATURES', 'x11', \
                            ' -no-eglfs', ' -no-opengl -linuxfb -no-eglfs', d)}"
QT_CONFIG_FLAGS_append_sama5 = "${@bb.utils.contains('DISTRO_FEATURES', 'x11', \
                            ' -no-eglfs', ' -opengl -linuxfb -qpa wayland -eglfs', d)}"

# qtwebkit will fail later in the build if icu is not enabled. As Poky does not
# enable it, do it here. This should be removed when the reverse dependency is
# added.
PACKAGECONFIG_append_at91sam9 = " icu"
PACKAGECONFIG_append_sama5 = " icu"
PACKAGECONFIG_append_sama5 = " accessibility"
PACKAGECONFIG_append_sama5 = " libinput"
PACKAGECONFIG_append_sama5 = " gles2"
PACKAGECONFIG_append_sama5 = " gl"
PACKAGECONFIG_append_sama5 = " gbm"
PACKAGECONFIG_append_sama5 = " kms"
