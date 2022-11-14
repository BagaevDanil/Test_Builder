QT -= gui

CONFIG += c++17 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += "../lib//googletest/include"
INCLUDEPATH += "../lib/googletest/"
INCLUDEPATH += "../../src/"

SOURCES += \
        ../lib/googletest/src/gtest-all.cc \
        ../lib/googletest/src/gtest-assertion-result.cc \
        ../lib/googletest/src/gtest-death-test.cc \
        ../lib/googletest/src/gtest-filepath.cc \
        ../lib/googletest/src/gtest-matchers.cc \
        ../lib/googletest/src/gtest-port.cc \
        ../lib/googletest/src/gtest-printers.cc \
        ../lib/googletest/src/gtest-test-part.cc \
        ../lib/googletest/src/gtest-typed-test.cc \
        ../lib/googletest/src/gtest.cc \
        main.cpp

# SOURCES += \
#        ../../src/*name*.cpp \

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# HEADERS += \
#     ../../src/*name*.h
