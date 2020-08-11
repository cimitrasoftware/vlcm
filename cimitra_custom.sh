#!/bin/bash
# Integration Script

# CONSTANTS
CIMITRA_SERVER_DIRECTORY="/var/opt/cimitra/server"
BRANDING_DIRECTORY="${CIMITRA_SERVER_DIRECTORY}/branding"
ICONS_DIRECTORY="${BRANDING_DIRECTORY}/icons"

## VARIABLES FROM HERE BELOW ##
CUSTOM_INSTALL_NAME="VLCM/Cimitra"

# CUSTOM LINKS
CUSTOM_LINK_ONE_NAME="Contact VLCM"
CUSTOM_LINK_ONE_DESCRIPTION="We want to hear from you!"
CUSTOM_LINK_ONE_ADDRESS="https://www.vlcmtech.com/contact-us"
CUSTOM_LINK_ONE_ENABLED_IN=1

CUSTOM_LINK_TWO_NAME="Welcome to VLCM/Cimitra"
CUSTOM_LINK_TWO_DESCRIPTION="Learn more about Cimitra"
CUSTOM_LINK_TWO_ADDRESS="https://www.cimitra.com"
CUSTOM_LINK_TWO_ENABLED_IN=1

CUSTOM_LINK_THREE_NAME="PowerShell Scripting"
CUSTOM_LINK_THREE_DESCRIPTION="A great site for PowerShell Recipes"
CUSTOM_LINK_THREE_ADDRESS="https://docs.microsoft.com/en-us/powershell/scripting/samples/sample-scripts-for-administration?view=powershell-7"
CUSTOM_LINK_THREE_ENABLED_IN=1

CUSTOM_LINK_FOUR_NAME="Linux Commands"
CUSTOM_LINK_FOUR_DESCRIPTION="A great site for Linux commands"
CUSTOM_LINK_FOUR_ADDRESS="https://www.commandlinefu.com/commands/browse"
CUSTOM_LINK_FOUR_ENABLED_IN=1

CUSTOM_LINK_FIVE_NAME="Linux Shell Scripting"
CUSTOM_LINK_FIVE_DESCRIPTION="A great site for Shell Scripting"
CUSTOM_LINK_FIVE_ADDRESS="https://www.tutorialspoint.com/unix/shell_scripting.htm"
CUSTOM_LINK_FIVE_ENABLED_IN=1


# YAML Files
DOCKER_COMPOSE_YML_FILE="https://raw.githubusercontent.com/cimitrasoftware/vlcm/master/docker-compose.yml"
DOCKER_COMPOSE_YML_444_FILE="https://raw.githubusercontent.com/cimitrasoftware/vlcm/master/docker-compose-444.yml"

# BRANDING IMAGE FILES
PNG_FILE_IN="https://raw.githubusercontent.com/cimitrasoftware/vlcm/master/vlcm.png"

SVG_FILE_IN="https://raw.githubusercontent.com/cimitrasoftware/vlcm/master/vlcm.svg"

SVG_FILE_OUT="vlcm.svg"

PNG_FILE_OUT="vlcm.png"

# Pre-install Function
function CUSTOM_PRE_INSTALL()
{

sudo mkdir -p ${BRANDING_DIRECTORY} 2> /dev/null

sudo mkdir -p ${ICONS_DIRECTORY} 2> /dev/null

sudo test -d ${BRANDING_DIRECTORY} 2> /dev/null

declare -i BRANDING_DIRECTORY_EXISTS=`echo $?`

if [ $BRANDING_DIRECTORY_EXISTS -ne 0 ]
then
return 1
fi

cd ${BRANDING_DIRECTORY} 2> /dev/null

curl -skLJ ${PNG_FILE_IN} -o ./${PNG_FILE_OUT}

curl -skLJ ${SVG_FILE_IN} -o ./${SVG_FILE_OUT}

sudo cp ./*.svg ${ICONS_DIRECTORY}   

sudo cp ./*.png ${ICONS_DIRECTORY}   

}

#Post Install Function
function CUSTOM_POST_INSTALL()
{
echo ""
echo "Thank You For Installing VLCM/Cimitra"
echo ""
}