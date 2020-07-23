# Build Cloudformation Guard

The action requires cloudformation-guard binaries that must be compiled using RUST in a linux environment.

Execute the following command to create the binaries.

Windows PowerShell
``` ps1
docker build -t cfgmakebin:1.0 .
$mypwd=$pwd.path.replace("\","/")
docker run -it --rm -v ${mypwd}:/cfg cfgmakebin:1.0
```

Linux Shell
``` shell
docker build -t rust:1.44.1 .
docker run -it --rm -v ${pwd}:/cfg cfgmakebin:1.0
```