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

## Project Steps

### 1. Deploy Azure Virtual Machines

- **Linux VM**:

  - Region: Southeast Asia
  - Availability Zone: 1
  - Size: Standard_B1s
  - Managed Disk: 32 GiB

- **Windows VM**:
  - Region: Southeast Asia
  - Availability Zone: 2
  - Size: Standard_B1s
  - Managed Disk: 32 GiB

### 2. Configure Storage and File Systems

- Create and attach a 32 GiB Managed Disk to each VM.
- Partition the disk and create a valid file system.
- Ensure the file system is mounted automatically on reboot.

### 3. Install and Configure Web Servers

- **Linux VM**:

  - Install Apache web server.
  - Configure Apache to serve `index.html` from the mounted disk.
  - Ensure Apache starts automatically on boot.

- **Windows VM**:
  - Install IIS web server.
  - Configure IIS to serve `index.html` from the mounted disk.
  - Ensure IIS starts automatically on boot.

### 4. Create and Deploy Web Pages

- **Linux VM**:
  - Create an `index.html` file with the following content:
    ```html
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Hello World</title>
      </head>
      <body>
        <h1>Hello World – running on Linux – on port 80</h1>
      </body>
    </html>
    ```
- **Windows VM**:
  - Create an `index.html` file with the following content:
    ```html
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <
      </head>
    </html>
    ```
