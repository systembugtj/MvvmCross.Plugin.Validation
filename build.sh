#!/usr/bin/env bash

nuget restore src/MvvmCross.Plugin.Validation.sln -verbosity detailed
msbuild src/MvvmCross.Plugin.Validation.sln /p:Configuration=Release

nuget pack nuspec/MVVMCross.Plugin.Validation.nuspec
nuget pack nuspec/MVVMCross.Plugin.Validation.ForFieldBinding.nuspec
# nuget add Redux.Net.3.0.0.nupkg -source ~/.nuget/package


# nuget restore examples/todomvc/Redux.TodoMvc.sln -verbosity detailed
# msbuild examples/todomvc/Redux.TodoMvc.sln /p:Configuration=Release