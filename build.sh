#!/usr/bin/env bash

rm -rf src/bin
rm *.nupkg

nuget restore src/MvvmCross.Plugin.Validation.sln -verbosity detailed
msbuild src/MvvmCross.Plugin.Validation.sln /p:Configuration=Release

nuget pack nuspec/MVVMCross.Plugin.Validation.nuspec
nuget pack nuspec/MVVMCross.Plugin.Validation.ForFieldBinding.nuspec


nuget add MvvmCross.Plugin.Validation.2.2.2.nupkg -source ~/localpackages

nuget add MvvmCross.Plugin.Validation.ForFieldBinding.2.2.2.nupkg -source ~/localpackages