#!/bin/bash

sudo yum install libicu -y
sudo dnf install dotnet-sdk-9.0 dotnet-sdk-8.0 aspnetcore-runtime-8.0 dotnet-runtime-8.0  -y

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh