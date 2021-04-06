@echo off
pushd %~dp0Prism
powershell -ExecutionPolicy ByPass -File run_prism.ps1 -project