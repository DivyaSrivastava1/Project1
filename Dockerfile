# Use a Windows base image
FROM ubuntu:24.04

# Set working directory
WORKDIR C:\app


# Copy source code into the container
COPY Devops.ps1 .

# Optional: Install any required tools here
# Example: RUN powershell -Command "Install-WindowsFeature -Name Web-Server"

# Run the build script
RUN apt update && apt install -y openjdk-21-jdk

# Optional: run tests
# RUN run_tests.bat

# Optional: package
# RUN package.bat

# Default command - interactive shell
CMD ["./Devops.ps1"]
