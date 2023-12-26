
dism /online /cleanup-image /checkhealth
dism /online /cleanup-image /restorehealth
sfc /scannow
chkdsk c: /f
chkdsk c: /r