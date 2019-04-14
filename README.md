# FixKeyRepeat

Some Alienware systems will have the key repeat and delay settings reset when waking from sleep.  This sets up a scheduled task to run when Windows wakes from sleep to make sure key repeat settings are properly set.

Place the files anywhere you'd like.

In `OnPowerOn.bat`, change `D:\Scripts\OnPowerOn.ini` to the absolute path of wherever you placed the ini file.

To create the scheduled task, open cmd (you may need to run it as admin) and run `CreateTask.bat` with 2 parameters: 1) the name you wish to give your task, 2) the absolute path to OnPowerOn.bat, wherever you placed it

For example, if I placed all 3 files in `D:\Scripts\` I would run: `CreateTask.bat FixKeyRepeat D:\Scripts\OnPowerOn.bat`

and in `OnPowerOn.bat` I would set `D:\Scripts\OnPowerOn.ini` as the path to the config file in the calls to `SetConfig`. 
