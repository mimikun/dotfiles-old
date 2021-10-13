REM Mining Mode IN!
gsudo nvidia-smi -pl 140
REM Mining start!!
t-rex.exe ^
-a ethash ^
-o stratum+tcp://asia.cruxpool.com:5555 ^
-u 0xDBe9A0825BBB14D4aDc4e81a298D8B0cBB625596 ^
-p x -w rig0 ^
--temperature-limit 75
REM --api-key "API_KEY"
REM GAMING MODE IN!!!
gsudo nvidia-smi -pl 250
pause
