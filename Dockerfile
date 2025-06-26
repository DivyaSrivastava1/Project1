# Use a Windows base image
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Set working directory
WORKDIR C:\app


# Copy source code into the container
COPY Devops.ps1 .

# Optional: Install any required tools here
# Example: RUN powershell -Command "Install-WindowsFeature -Name Web-Server"

# Run the build script
RUN "C:\\Program Files\\Microsoft Visual Studio\\2022\\BuildTools\\MSBuild\\Current\\Bin\\MSBuild.exe" MyApp.sln /p:Configuration=Release

# Optional: run tests
# RUN run_tests.bat

# Optional: package
# RUN package.bat

# Default command - interactive shell
CMD ["./Devops.ps1"]
