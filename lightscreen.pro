TEMPLATE = app
TARGET = lightscreen
HEADERS += tools/os.h \
    updater/updater.h \
    dialogs/areadialog.h \
    dialogs/optionsdialog.h \
    widgets/hotkeywidget.h \
    lightscreenwindow.h \
    tools/screenshot.h \
    dialogs/previewdialog.h \
    tools/screenshotmanager.h \
    tools/windowpicker.h \
    tools/uploader.h \
    tools/qtimgur.h \
    dialogs/updaterdialog.h \
    dialogs/namingdialog.h \
    dialogs/historydialog.h
SOURCES += tools/os.cpp \
    updater/updater.cpp \
    dialogs/areadialog.cpp \
    dialogs/optionsdialog.cpp \
    widgets/hotkeywidget.cpp \
    main.cpp \
    lightscreenwindow.cpp \
    tools/screenshot.cpp \
    dialogs/previewdialog.cpp \
    tools/screenshotmanager.cpp \
    tools/windowpicker.cpp \
    tools/uploader.cpp \
    tools/qtimgur.cpp \
    dialogs/updaterdialog.cpp \
    dialogs/namingdialog.cpp \
    dialogs/historydialog.cpp
FORMS += dialogs/optionsdialog.ui \
    dialogs/namingdialog.ui \
    dialogs/historydialog.ui \
    lightscreenwindow.ui
RESOURCES += lightscreen.qrc
TRANSLATIONS += translations/untranslated.ts \
                translations/spanish.ts \
                translations/russian.ts \
                translations/portuguese.ts \
                translations/polish.ts \
                translations/japanese.ts \
                translations/italian.ts \
                translations/dutch.ts
RC_FILE += lightscreen.rc
CODECFORSRC = UTF-8
QT += network core gui xml sql

include($$PWD/tools/globalshortcut/globalshortcut.pri)
include($$PWD/tools/qtsingleapplication/qtsingleapplication.pri)
include($$PWD/tools/qwin7utils/qwin7utils.pri)

windows{
    contains(QMAKE_CC, gcc){
        LIBS += libgdi32 libgcc libuser32 libole32 libshell32 libshlwapi libcomctl32
        QMAKE_CXXFLAGS = -Wextra -Wall -Wpointer-arith
    }
    contains(QMAKE_CC, cl){
        LIBS += gdi32.lib user32.lib ole32.lib shell32.lib shlwapi.lib comctl32.lib
    }
}

unix:LIBS += -lX11

OTHER_FILES += TODO.txt








