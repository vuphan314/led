goto starting

:body
    set fold=tests\
    set fil=quantification
    set fils=boolean, comparison, set
	for %%i in (%fils%) do (
		set base=%fold%%%~ni
        set led=!base!.led
        set p=!base!.p
        set sl=!base!.sl
        
        set parse=py ledparser.py !led!
        set transl=py translator.py !led!
        
        !led!
        
        REM !parse! & echo:
        
        !transl! > !sl!
        type !sl!
        sli -l !sl!
	)
	goto done
	
:starting
	@echo off
	cls
	setlocal enabledelayedexpansion
	echo starting...
	echo:
	goto body
	
:done
	echo:
	echo done
