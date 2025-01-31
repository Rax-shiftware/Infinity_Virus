@echo off
goto noo
:noo
for /l %%x in (1, 1, 200) do (
start infinity_helper.vbs
echo LOOP:%%x
)