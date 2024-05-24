#!/bin/bash

# Function to create a directory and three files
create_directory_and_files() {
    # Prompt for the directory name
    read -p "Enter the name of the directory to create: " dir_name

    # Create the directory
    mkdir -p "$dir_name"

    # Check if the directory was created successfully
    if [ $? -ne 0 ]; then
        echo "Failed to create directory '$dir_name'."
        exit 1
    fi

    # Create the .html, .css, and .js files in the directory
    touch "$dir_name/index.html"
    touch "$dir_name/styles.css"
    touch "$dir_name/script.js"

    # Check if the files were created successfully
    if [ $? -eq 0 ]; then
        echo "Directory '$dir_name' and files 'index.html', 'styles.css', 'script.js' created successfully."
    else
        echo "Failed to create files in directory '$dir_name'."
        exit 1
    fi
}

# Execute the function
create_directory_and_files
