# Use the official Microsoft .NET runtime as a base image for running the app
FROM mcr.microsoft.com/dotnet/runtime:8.0 AS base

# Set the working directory inside the container
WORKDIR /app

# Copy the published output from the build stage
COPY out/ .

# Set the entry point for the application
ENTRYPOINT ["dotnet", "KubernetesConsoleApp.dll"]
