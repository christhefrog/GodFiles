
// This script is used only for installing a config from Config.ISO.C

CopyTree("Config", "::/Home");
Copy("InstallConfig.HC", "::/Home/InstallConfig.HC");
"\n	Config installed, reboot your system\n\n";


