# Building the Web Server

This project demonstrates how to deploy and configure two Azure Virtual Machines (VMs) to serve web pages, with one VM running Linux and the other running Windows. Both VMs are configured to automatically serve a simple "Hello World" web page on port 80 using Apache (Linux) and IIS (Windows) web servers.

## Project Objectives

The primary objectives of this project are as follows:

1. **Azure VM Deployment**

   - Deploy two Azure Virtual Machines of size `Standard_B1s`.
   - The Linux VM is located in the `Southeast Asia` region within `Availability Zone 1`.
   - The Windows VM is located in the `Southeast Asia` region within `Availability Zone 2`.

2. **Storage Configuration**

   - Each VM utilizes a `32 GiB` attached Managed Disk.
   - The disk contains a valid partition table with a single partition.
   - The partition has a valid file system that is automatically mounted upon VM reboot.

3. **Web Server Configuration**

   - The Linux VM uses the Apache web server.
   - The Windows VM uses the IIS web server.
   - Both web servers are configured to start automatically upon system boot.
   - Each web server serves a unique webpage on port `80`.

4. **Web Page Content**

   - **Linux VM**: Serves a web page (`index.html`) displaying the text:  
     `"Hello World – running on Linux – on port 80"`.
   - **Windows VM**: Serves a web page (`index.html`) displaying the text:  
     `"Hello World – running on Windows – on port 80"`.

5. **Network Security**
   - Network Security Groups (NSGs) are configured to allow administrative access and HTTP traffic to the VMs.
