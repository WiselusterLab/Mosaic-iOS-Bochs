config_interface: textconfig
display_library: nogui
megs: 8
romimage: file="/Applications/bochs_proj.app/BIOS-bochs-latest", address=0x00000
vgaromimage: file="/Applications/bochs_proj.app/VGABIOS-lgpl-latest"
boot: disk
ata0: enabled=1, ioaddr1=0x1f0, ioaddr2=0x3f0, irq=14
ata0-master: type=disk, path="~prefix~"
floppy_bootsig_check: disabled=0
vga_update_interval: 30000
vga: extension=vbe
keyboard_serial_delay: 250
keyboard_paste_delay: 100000
cpu: count=1, ips=200000
mouse: enabled=1, type=ps2
clock: sync=none, time0=local
log: -
logprefix: %i - %e%d
debugger_log: -
panic: action=report
error: action=report
info: action=report
debug: action=ignore
pass: action=fatal
keyboard_mapping: enabled=0, map=
keyboard_type: mf
user_shortcut: keys=none
