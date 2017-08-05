#!/usr/bin/env bash

#  deployUniFi+MongoDB.sh
#
#  Copyleft 2017 Alysson Oliveira <lssn.oliveira@gmail.com>
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
#  Date: Aug/08/2017
#
#  Summary:
#     This script download and deploy UniFi Controller and MongoDB
#
#  Dependences:
#     wget; unzip; tar; gzip; java (java 8)
#
#  Requires: Write permissions on DOWNLOAD_PATH and DEPLOY_PATH
#            (Adjust path if needed)

# Define software versions
UNIFI_VER="5.4.19"
MONGO_VER="3.4.6"

# Define paths
DOWNLOAD_PATH="/tmp"
DEPLOY_PATH="/opt/UniFi_Controller"
MONGO_ROOT="$DEPLOY_PATH"/mongodb-linux-x86_64-"$MONGO_VER"
UNIFI_ROOT="$DEPLOY_PATH"/UniFi-"$UNIFI_VER"

# Define software package names
UNIFI_PACK="$DOWNLOAD_PATH"/UniFi.unix."$UNIFI_VER".zip
MONGO_PACK="$DOWNLOAD_PATH"/MongoDB."$MONGO_VER".tgz

# Download Software
echo -e "\nGetting: $UNIFI_PACK \n"
wget -O "$UNIFI_PACK" https://dl.ubnt.com/unifi/"$UNIFI_VER"/UniFi.unix.zip
echo -e "\nGetting: $MONGO_PACK \n"
wget -O "$MONGO_PACK" https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-"$MONGO_VER".tgz

# Extract software
echo -e "\nExtracting files"
echo -e "\n\t Extracting $UNIFI_PACK"
unzip -q "$UNIFI_PACK" -d "$UNIFI_ROOT"
echo -e "\n\t Extracting $MONGO_PACK"
tar -xzf "$MONGO_PACK" -C "$DEPLOY_PATH"

# Adjusting links
echo -e "\nAdjusting links"
echo -e "$MONGO_ROOT/bin/mongod ==> $DEPLOY_PATH/UniFi/bin/mongod"
ln -sf "$MONGO_ROOT/bin/mongod/bin/mongod" "$UNIFI_ROOT/UniFi/bin/mongod"
