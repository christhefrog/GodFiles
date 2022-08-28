
Del("Config.ISO.C");

DirMk("Export");
DirMk("Export/Config");
Copy("*","Export/Config");

Del("Export/Config/Registry.HC.Z");
Move("Export/Config/InstallConfig.HC", "Export/InstallConfig.HC");

RedSeaISO("Config.ISO.C", "Export");
DelTree("Export");

"\n	Config exported to Config.ISO.C\n\n";

