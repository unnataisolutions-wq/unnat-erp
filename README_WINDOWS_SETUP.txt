================================================================================
           UNNAT ERP 9+ (ENTERPRISE EDITION) - WINDOWS QUICK GUIDE              
================================================================================

All files, latest features, hardware machine lock, trial engine, and modules
are now 100% synced and permanently saved to your New Volume (D: / E: drive).

--------------------------------------------------------------------------------
1. HOW TO BUILD THE WINDOWS RELEASE (.EXE)
--------------------------------------------------------------------------------
Method A (1-Click Automated Batch Script):
  -> Simply double-click "build_windows.bat" in this folder.
  -> It will automatically compile the standalone x64 release executable.
  -> Output will open in: build\windows\x64\runner\Release\unnat_erp.exe

Method B (Command Line / PowerShell):
  -> Open PowerShell in this folder and run:
     flutter clean
     flutter pub get
     flutter build windows --release

--------------------------------------------------------------------------------
2. HOW TO MAKE A 1-CLICK INSTALLER SETUP (UNNAT_ERP_Setup.exe)
--------------------------------------------------------------------------------
  -> Open "windows_installer_setup.iss" in Inno Setup Compiler.
  -> Click "Build" -> "Compile" (or press Ctrl+F9).
  -> Output: build\installer\UNNAT_ERP_9_Plus_Enterprise_Setup.exe
  -> This installer creates Desktop shortcuts, Start Menu entry & uninstaller.

--------------------------------------------------------------------------------
3. HOW TO GENERATE LICENSE KEYS FOR YOUR CLIENTS (VENDOR ONLY)
--------------------------------------------------------------------------------
  -> When a supermarket client copies their Machine ID (e.g. UNNAT-6F34-7906-D198),
     open terminal in this folder and run:
     dart run bin/generate_key.dart UNNAT-6F34-7906-D198
  -> It will instantly give you their 24-digit Lifetime Enterprise Activation Key!
================================================================================
