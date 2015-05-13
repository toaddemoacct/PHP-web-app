echo on
copy /Y "C:\Program Files (x86)\Jenkins\jobs\PHP Demo\workspace\http_root\*.*" z:\Apache24\htdocs\
toad -a "Code Analysis"
exit
