ECHO off
title Script to run sorting using cortex_from_extraction.py and an input session name
ECHO navigating to code directory
cd C:\Users\andrew.shelton\Documents\GitHub\ecephys_spike_sorting
ECHO THIS SCRIPT PROCESSES 3 PROBES, YOU MUST ALSO START PROCESSING ON THE OTHER PROCESSING COMPUTER
set /p session_name=Full session name from EXPERIMENT DAY 2: 
call "C:\Users\andrew.shelton\Anaconda3\Scripts\activate.bat" "C:\Users\andrew.shelton\Anaconda3"
call conda activate sorting
call python ecephys_spike_sorting\scripts\cortex_from_extraction.py %session_name%
cmd \k