#!/usr/bin/env bash
set -e

## install latest .NET 8.0 release
pushd /tmp
wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh
chmod u+x /tmp/dotnet-install.sh
/tmp/dotnet-install.sh --channel 8.0
popd

## Run the dotnet run command, in Release mode, if in develepment the build will run forever!!!!
dotnet run --launch-profile "netlify" --project ./BlazorStaticMinimalBlog.csproj --configuration release