# we start by defining variables
!define APPNAME "HASCATS"
!define COMPANYNAME "Nippon Signal"

!define EXECUTABLE_NAME "hascats-exe.exe"
!define ICON_NAME "icon.ico"

!define VERSIONMAJOR 1
!define VERSIONMINOR 0
!define VERSIONPATCH 0

# create a directory where our assets will lay (eg: image, executable, uninstaller, dependencies...)
InstallDir "$PROGRAMFILES\${COMPANYNAME}\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}"

# Define the installer name
outFile "hascats-installer.exe"

section "install"
	setOutPath $INSTDIR

    # copy the executable in the installation directory
    file "assets\"

	# create a start menu shortcut
	createShortCut "$SMPROGRAMS\${COMPANYNAME}\${APPNAME}.lnk" "$INSTDIR\${EXECUTABLE_NAME}" "" "$INSTDIR\${ICON_NAME}"
	# create a desktop shortcut
    createShortCut "$DESKTOP\${APPNAME}.lnk" "$INSTDIR\${EXECUTABLE_NAME}" "" "$INSTDIR\${ICON_NAME}"
sectionEnd
