#!/bin/bash

# Path to the Installomator script
INSTALLMOTATOR_PATH="/tmp/Installomator.sh"

# Function: app_installer
# Purpose: This function is responsible for installing a predefined list of applications using the Installomator script.
# It loops through an array of application labels, installs each application, and logs the progress.
app_installer() {
    echo "Installing applications..."

    # Make the Installomator script executable
    chmod +x "$INSTALLMOTATOR_PATH"

    # Define an array of application labels to be installed.
    # These labels should correspond to the ones used by Installomator.
    # Example: declare -a apps=("1password8" "microsoftteamsclassic" "googlechrome" "alfred")
    declare -a apps=("1password8" "microsoftteamsclassic" "googlechrome" "alfred")

    # Loop through the array of apps and install each one
    for app in "${apps[@]}"; do
        echo "Starting installation of $app..."
        # Call Installomator script with the current app label
        # Output is redirected to standard output and standard error
        "$INSTALLMOTATOR_PATH" "$app" 2>&1
        echo "$app installation completed."
    done

    echo "All applications installed."
}

# Execute the app_installer function to start the installation process
app_installer
