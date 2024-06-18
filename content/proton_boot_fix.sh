# You can ignore this file.
# It exists for Linux users on Steam Play. Steam Play's Wine wrapper (Proton) currently has issues with boot.bat. Our fix is to run this script during patch installation.
mv boot.bat old_boot.bat
# Launcher.exe would be preferrable...
# - We hijack launcher.exe, so effectively, our launcher will still be run
# - If someone uninstalls the patch, the boot.bat symlink will keep working
# ...but that throws up a "Please start from Steam" warning (???) - would still start our launcher afterwards though
ln -s LauncherC0.exe boot.bat