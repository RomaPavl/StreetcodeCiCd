FROM mcr.microsoft.com/dotnet/sdk:6.0.404 AS build
WORKDIR /App
COPY . ./
RUN dotnet restore "Streetcode/Streetcode.sln"
RUN dotnet build "Streetcode/"
RUN dotnet publish "Streetcode/Streetcode.WebApi/Streetcode.WebApi.csproj" -o Streetcode/out
RUN dotnet publish "Streetcode/DbUpdate/DbUpdate.csproj" -o Streetcode/out
RUN dotnet publish "Streetcode/Streetcode.DAL/Streetcode.DAL.csproj" -o Streetcode/out
RUN dotnet publish "Streetcode/Streetcode.BLL/Streetcode.BLL.csproj" -o Streetcode/out
RUN  dotnet publish "Streetcode/Streetcode.XUnitTest/Streetcode.XUnitTest.csproj" -o Streetcode/out
WORKDIR /App/Streetcode/out
EXPOSE 5000
EXPOSE 5001
CMD ["dotnet", "Streetcode.WebApi.dll"]