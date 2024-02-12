Jumpcloud-installomator-scriptRunner
Overview
The Jumpcloud-installomator-scriptRunner is a script designed to automate the installation of various applications on macOS devices using the Installomator script. This tool is particularly useful for system administrators and IT professionals who manage macOS devices through JumpCloud.

Prerequisites
Before using this script, you need to:

Have administrative access to macOS devices.
Ensure that the devices are managed through JumpCloud.

Installation
Step 1: Download Installomator
First, download the Installomator script from its official GitHub repository:

bash
Copy code
git clone https://github.com/Installomator/Installomator.git
Visit Installomator GitHub page for more details: https://github.com/Installomator/Installomator

Step 2: Modify Installomator Script
After downloading, you need to modify the Installomator script:

Open the Installomator script in a text editor.
Change debug=1 to debug=0 for the script to run in non-debug mode.

Step 3: Upload to JumpCloud
Upload the modified Installomator script to JumpCloud in the 'Create the Command' section.
You can save the script in a location of your choice on the devices.
Note: Consider deleting the script after the command runs for security and cleanliness of the system.

Usage
After setting up, use the Jumpcloud-installomator-scriptRunner to automate the installation of your desired applications. The script will loop through a predefined list of applications and use Installomator to install them on the target macOS devices.
