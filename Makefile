ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyModMenuAimbot

# Chỉ định đường dẫn tới file code trong thư mục src
MyModMenuAimbot_FILES = src/Tweak.xm
MyModMenuAimbot_CFLAGS = -fobjc-arc -std=c++11

# Gọi các thư viện giao diện của iOS để hiển thị Menu nút bấm
MyModMenuAimbot_FRAMEWORKS = UIKit QuartzCore CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk
