@echo off
pushd %~dp0
powershell -ExecutionPolicy ByPass -File run_prism.ps1 -project