#THEOS_DEVICE_IP = localhost
#THEOS_DEVICE_PORT = 2222
ARCHS = armv7 arm64
TARGET = iphone:latest:10.2

include theos/makefiles/common.mk

#TWEAK_NAME = WeChatRedEnvelop
LIBRARY_NAME = WeChatRedEnvelop
WeChatRedEnvelop_FILES = Tweak.xm XGPayingViewController.m
WeChatRedEnvelop_FRAMEWORKS = UIKit
WeChatRedEnvelop_LIBRARIES = substrate

include $(THEOS_MAKE_PATH)/library.mk

#after-install::
#	install.exec "killall -9 WeChat"
