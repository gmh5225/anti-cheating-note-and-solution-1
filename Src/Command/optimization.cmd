
fsutil behavior set memoryusage 2
bcdedit /set nolowmem off
bcdedit /set nx alwayson
bcdedit /set pae forceenable
bcdedit /set TESTSIGNING OFF
bcdedit /set NOINTEGRITYCHECKS OFF
bcdedit /deletevalue useplatformclock
%windir%\SysWOW64\rundll32.exe advapi32.dll,ProcessIdleTasks