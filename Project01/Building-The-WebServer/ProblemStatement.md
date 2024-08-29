
Launch 2 Azure Virtual Machines – one Linux and one Windows, to meet the following objectives:

- The VMs should be of size `Standard_B1s`.
- The Linux VM should reside within the `Southeast Asia` region within availability zone `1`, and the Windows VM should reside in availability zone `2`.
- Each VM should use a 32 GiB attached Managed Disk and contain valid partition tables with one partition. The partition should contain a valid file system.
- The file system residing on the Managed Disks should be mounted automatically upon reboot of the VMs.
- The VMs should serve web pages via appropriate services such as Apache (on Linux) and IIS (on Windows). These services should start automatically upon boot.
- Both the Apache and IIS web servers should be configured to run different websites on port 80.
- The VMs should serve a web page `index.html` containing well-formed HTML displaying the text:
  - "Hello World – running on Linux – on port 80" on the Linux VM.
  - "Hello World – running on Windows – on port 80" on the Windows VM.
- Each webpage will display the respective screenshots created below in Stage 3 (they will be hosted separately). The HTML files should reside on the file system within the previously created Managed Disk and be served as the default document from the web server root.
- The VMs should use Network Security Groups (NSGs) effectively to allow administration and serve HTTP.
