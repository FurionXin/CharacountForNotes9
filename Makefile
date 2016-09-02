THEOS_DEVICE_IP = 192.168.199.193
ARCHS = arm64
TARGET = iPhone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CharacountForNotes9
CharacountForNotes9_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileNotes"
