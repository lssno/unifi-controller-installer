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
$ tree -L 3 /opt/UniFi_Controller/
/opt/UniFi_Controller/
└── UniFi-5.4.19
    ├── mongodb-linux-x86_64-3.4.6
    │   ├── bin
    │   ├── GNU-AGPL-3.0
    │   ├── MPL-2
    │   ├── README
    │   └── THIRD-PARTY-NOTICES
    └── UniFi
        ├── bin
        ├── conf
        ├── dl
        ├── lib
        ├── webapps
        └── readme.txt

9 directories, 5 files
```
5. Just start UniFi Controller
```
cd /opt/UniFi_Controller/UniFi-5.4.19/UniFi/
java -jar lib/ace.jar start
```
6. It is done!
