#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:7176192:17f347c8992b35a048b033b3e0781817c4b3cb85; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6602752:f9f44efcba610c817147ed025e30a7875bc599b3 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 17f347c8992b35a048b033b3e0781817c4b3cb85 7176192 f9f44efcba610c817147ed025e30a7875bc599b3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
