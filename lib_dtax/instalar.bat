cd c:\lib
copy mscomct2.ocx C:\Windows\SysWOW64
copy mscomctl.ocx C:\Windows\SysWOW64
cd\Windows\SysWOW64
regsvr32 C:\Windows\SysWOW64\mscomct2.ocx
regsvr32 C:\Windows\SysWOW64\mscomctl.ocx