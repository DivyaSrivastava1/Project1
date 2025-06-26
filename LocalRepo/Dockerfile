# Use a Windows base image
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Set working directory
WORKDIR C:\Divya\Project1.git\localRepo

# Copy source code into the container
COPY . .

# Optional: Install any required tools here
# Example: RUN powershell -Command "Install-WindowsFeature -Name Web-Server"

# Run the build script
RUN build.bat

# Optional: run tests
# RUN run_tests.bat

# Optional: package
# RUN package.bat

# Default command - interactive shell
CMD ["cmd.exe"]
