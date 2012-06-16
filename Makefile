#############################################################################
# Makefile for building: imgrup
# Generated by qmake (2.01a) (Qt 4.8.1) on: Sat Jun 16 12:34:19 2012
# Project:  imgrup.pro
# Template: subdirs
# Command: /usr/bin/qmake -nocache QMAKE_STRIP=: PREFIX=/usr -o Makefile imgrup.pro
#############################################################################

first: make_default
MAKEFILE      = Makefile
QMAKE         = /usr/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
SUBTARGETS    =  \
		sub-src \
		sub-imgurplugin

src//$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) src/ || $(MKDIR) src/ 
	cd src/ && $(QMAKE) /mnt/sda5/home/rzr/local/volatile/src/meego/repo/scm/home-rzr/imgrup/imgrup-0.20120616/src/src.pro -nocache QMAKE_STRIP=: PREFIX=/usr -o $(MAKEFILE)
sub-src-qmake_all:  FORCE
	@$(CHK_DIR_EXISTS) src/ || $(MKDIR) src/ 
	cd src/ && $(QMAKE) /mnt/sda5/home/rzr/local/volatile/src/meego/repo/scm/home-rzr/imgrup/imgrup-0.20120616/src/src.pro -nocache QMAKE_STRIP=: PREFIX=/usr -o $(MAKEFILE)
sub-src: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE)
sub-src-make_default: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) 
sub-src-make_first: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) first
sub-src-all: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) all
sub-src-clean: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) clean
sub-src-distclean: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) distclean
sub-src-install_subtargets: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) install
sub-src-uninstall_subtargets: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) uninstall
imgurplugin//$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) imgurplugin/ || $(MKDIR) imgurplugin/ 
	cd imgurplugin/ && $(QMAKE) /mnt/sda5/home/rzr/local/volatile/src/meego/repo/scm/home-rzr/imgrup/imgrup-0.20120616/imgurplugin/imgurplugin.pro -nocache QMAKE_STRIP=: PREFIX=/usr -o $(MAKEFILE)
sub-imgurplugin-qmake_all:  FORCE
	@$(CHK_DIR_EXISTS) imgurplugin/ || $(MKDIR) imgurplugin/ 
	cd imgurplugin/ && $(QMAKE) /mnt/sda5/home/rzr/local/volatile/src/meego/repo/scm/home-rzr/imgrup/imgrup-0.20120616/imgurplugin/imgurplugin.pro -nocache QMAKE_STRIP=: PREFIX=/usr -o $(MAKEFILE)
sub-imgurplugin: imgurplugin//$(MAKEFILE) FORCE
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE)
sub-imgurplugin-make_default: imgurplugin//$(MAKEFILE) FORCE
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE) 
sub-imgurplugin-make_first: imgurplugin//$(MAKEFILE) FORCE
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE) first
sub-imgurplugin-all: imgurplugin//$(MAKEFILE) FORCE
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE) all
sub-imgurplugin-clean: imgurplugin//$(MAKEFILE) FORCE
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE) clean
sub-imgurplugin-distclean: imgurplugin//$(MAKEFILE) FORCE
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE) distclean
sub-imgurplugin-install_subtargets: imgurplugin//$(MAKEFILE) FORCE
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE) install
sub-imgurplugin-uninstall_subtargets: imgurplugin//$(MAKEFILE) FORCE
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE) uninstall

Makefile: imgrup.pro /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf
	$(QMAKE) -nocache QMAKE_STRIP=: PREFIX=/usr -o Makefile imgrup.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
qmake: qmake_all FORCE
	@$(QMAKE) -nocache QMAKE_STRIP=: PREFIX=/usr -o Makefile imgrup.pro

qmake_all: sub-src-qmake_all sub-imgurplugin-qmake_all FORCE

make_default: sub-src-make_default sub-imgurplugin-make_default FORCE
make_first: sub-src-make_first sub-imgurplugin-make_first FORCE
all: sub-src-all sub-imgurplugin-all FORCE
clean: sub-src-clean sub-imgurplugin-clean FORCE
distclean: sub-src-distclean sub-imgurplugin-distclean FORCE
	-$(DEL_FILE) Makefile
install_subtargets: sub-src-install_subtargets sub-imgurplugin-install_subtargets FORCE
uninstall_subtargets: sub-src-uninstall_subtargets sub-imgurplugin-uninstall_subtargets FORCE

sub-src-check: src/$(MAKEFILE)
	cd src/ && $(MAKE) -f $(MAKEFILE) check
sub-imgurplugin-check: imgurplugin/$(MAKEFILE)
	cd imgurplugin/ && $(MAKE) -f $(MAKEFILE) check
check: sub-src-check sub-imgurplugin-check

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all
install_icons: FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/ 
	-$(INSTALL_FILE) /mnt/sda5/home/rzr/local/volatile/src/meego/repo/scm/home-rzr/imgrup/imgrup-0.20120616/icons/icon-m-service-imgur.png $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/


uninstall_icons:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/icon-m-service-imgur.png
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/ 


install_stylesheets: FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/imgurplugin/style/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/imgurplugin/style/ 
	-$(INSTALL_FILE) /mnt/sda5/home/rzr/local/volatile/src/meego/repo/scm/home-rzr/imgrup/imgrup-0.20120616/imgurplugin/imgurplugin.css $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/imgurplugin/style/


uninstall_stylesheets:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/imgurplugin/style/imgurplugin.css
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/imgurplugin/style/ 


install: install_subtargets install_icons install_stylesheets  FORCE

uninstall: uninstall_icons uninstall_stylesheets  uninstall_subtargets FORCE

FORCE:
