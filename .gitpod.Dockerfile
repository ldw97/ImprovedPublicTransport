FROM mcr.microsoft.com/dotnet/sdk:6.0

# 安装 mono 和 msbuild
RUN apt-get update && \
    apt-get install -y mono-complete nuget msbuild unzip && \
    apt-get clean

# 设置 msbuild 可用
ENV PATH="${PATH}:/usr/lib/mono/msbuild/15.0/bin"
