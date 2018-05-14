FROM microsoft/aspnetcore:2.0
#WORKDIR /app
COPY /app .
ENTRYPOINT ["dotnet", "TeamService.dll"]

# tell docker what port to expose
EXPOSE 8000
