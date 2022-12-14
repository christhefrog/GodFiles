#include "::/Apps/Lsh";
#include "::/Apps/Pkg";
#include "::/Misc/PalUbuntu.HC"

//Place this file in /Home and change
//anything you want.

//This file is executed by the
//first terminal window upon start-up.
//See $LK,"Once",A="FF:~/HomeSys.HC,Once"$ and $LK,"Home Files",A="FF:::/Doc/GuideLines.DD,/Home Files"$.

//Delete the rest from this file.

U0 Tmp()
{
  OnceExe;
  WinMax;
  AutoComplete;
  switch (sys_boot_src.u16[0]) {
    case BOOT_SRC_ROM:
      "Continue booting hard drive ";
      if (YorN) {
	DocBottom;
	ExeFile("C:/Home/Once");
      }
      break;
    case BOOT_SRC_DVD:
      "\nIf you answer 'No' you can play with\n"
	    "the live CD without installing.\n\n"
	    "Install onto hard drive ";
      if (YorN) {
	DocBottom;
	RunFile("::/Misc/OSInstall",,TRUE);
      }
      if (FileFind("::/Misc/Tour")) {
	"\nTake Tour";
	if (YorN) {
	  DocBottom;
	  Cd("::/Misc/Tour");
	  InFile("Tour");
	}
      }
      break;
    case BOOT_SRC_RAM:
    case BOOT_SRC_HARDDRV:
      "\n";
      break;
  }
}

#exe { if (SNAILNET_NATIVE_DRIVER != NULL) StreamPrint("Netcfg;\n"); }
Tmp;

#include "::/Home/Theme.HC"
#include "::/Home/Apps.HC"
