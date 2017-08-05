# unifi-controller-installer
Download and Install UniFi Controller and MongoDB from tarballs

This simple script `deployUniFi+MongoDB.sh` download and deploy Unifi Controller(c) and MongoDB(c)
in a specific path.

## Usage
1. Create the destination path: /opt/UniFi_Controller
2. Grant the user will install permissons on /opt/UniFi_Controller
3. Run script `./deployUniFi+MongoDB.sh`
4. Check the results like this
```
cd /opt/UniFi_Controller/
ls 
mongodb-linux-x86_64-3.4.6  UniFi-5.4.19
```
5. Just start UniFi Controller
```
cd /opt/UniFi_Controller/UniFi
java -jar lib/ace.jar start
```
6. It is done!
