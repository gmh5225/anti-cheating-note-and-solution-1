fsutil behavior set memoryusage 2
bcdedit /set nolowmem off
bcdedit /set nx alwayson
bcdedit /set pae forceenable
bcdedit /set TESTSIGNING OFF
bcdedit /set NOINTEGRITYCHECKS OFF
ipconfig/flushdns
netsh int tcp set heuristics wsh=enabled forcews=enabled
netsh int tcp set global autotuninglevel=highlyrestricted
netsh int tcp set global ecncapability=enabled
netsh int tcp set global rss=enabled
netsh int ipv4 set global multicastforwarding=enabled
netsh int ipv4 set global sourceroutingbehavior=forward
netsh int ipv4 set global groupforwardedfragments=enabled
netsh advfirewall set allprofiles settings remotemanagement disable
netsh advfirewall set allprofiles state on
netsh rpc filter delete filter filterkey=all
netsh ras delete link lcp
netsh ras delete link swc
netsh ras delete multilink multi
netsh http delete cache
netsh int teredo set state default
netsh int ipv4 delete destinationcache
netsh int ipv4 delete neighbors
netsh int ipv6 delete destinationcache
netsh int ipv6 delete neighbors
netsh int isatap set state default
netsh winsock reset
netsh winsock set autotuning on
netsh interface tcp set global autotuning=highlyrestricted
netsh interface tcp set global rsc=enabled
netsh interface tcp set global dca=enabled
netsh interface tcp set global ecncapability=enabled
netsh interface tcp set global netdma=enabled
netsh interface tcp set global timestamps=enabled
netsh interface tcp set security mpp=enabled
netsh interface tcp set security profiles=enabled
netsh interface tcp set security startport=1 numberofports=65535 mpp=enabled
netsh interface ipv4 set global icmpredirects=enabled
netsh interface ipv4 set global sourceroutingbehavior=forward
netsh interface ipv4 set global taskoffload=enabled
netsh interface ipv4 set global dhcpmediasense=enabled
netsh interface ipv4 set global mediasenseeventlog=enabled
netsh interface ipv4 set global mldlevel=all
netsh interface ipv4 set global mldversion=version3
netsh interface ipv4 set global multicastforwarding=enabled
netsh interface ipv4 set global groupforwardedfragments=enabled
netsh interface ipv4 set global randomizeidentifiers=enabled
netsh interface ipv4 set global addressmaskreply=enabled
netsh interface ipv4 set global sourcebasedecmp=enabled
netsh interface ipv4 set global minmtu=576
netsh interface ipv4 set global loopbacklargemtu=enabled
netsh interface ipv4 set global loopbackworkercount=16
netsh interface ipv4 set global loopbackexecutionmode=inline
netsh interface ipv4 set global reassemblyoutoforderlimit=0
netsh interface ipv4 set global store=persistent
netsh interface ipv4 set interface "1" nud=enabled
netsh interface ipv4 set interface "1" weakhostsend=disabled
netsh interface ipv4 set interface "1" weakhostreceive=disabled
netsh interface ipv4 set interface "1" currenthoplimit=255
netsh interface ipv4 set interface "1" ecncapability=application
netsh interface teredo set state default
netsh interface isatap set router enabled
netsh interface ipv6 set privacy state=enabled
netsh interface ipv6 set teredo default
netsh p2p pnrp peer set machinename publish=start autopublish=enable
netsh wfp set options netevent=on
netsh ipsec dynamic add mmp name=mmp qmpermm=10 mmlifetime=300 softsa=20 mmsec="3DES-SHA1-3 DES-SHA1-2 3DES-MD5-3"
netsh trace start scenario=internetclient
netsh mbn disconnect wwansvc
netsh interface ip delete arpcache
netsh int ipv4 set compartment 0 255 store=persistent
netsh int tcp set global ecncapability=enabled
netsh int tcp set global timestamps=enabled
netsh int tcp set global initialrto=300
netsh int tcp set global rsc=enabled
netsh int tcp set global maxsynretransmissions=8
netsh int tcp set global fastopen=enabled
netsh int tcp set global hystart=enabled
netsh int tcp set global pacingprofile=always
netsh int tcp set supplemental template=internet