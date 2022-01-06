# Use at least 2 variables and 1 positional parameter (special variable) in script, 2 variables set to text files. Positional parameter is $1 (bash pre-defined special variable where user sets value when calling script).
    var1=file1.txt
    var2=file2.txt
    # Use an If statement to check if $1 (special variable passed as parameter when calling script) was passed into script, exit script if value for $1 does not exist.
    if [[ -z $1 ]]; then
    # Print message to terminal before exiting if special variable $1 is null.
        echo "please enter a value on the terminal for pos 1."
        exit
    fi

    # Print message to terminal prompt user for username.
    echo "what is your username"
    read username
    # Print message to terminal prompt user for password.
    echo "what is your password"
    read password

# Use an If statement to validate ${username} and ${password}. Print message to terminal if either ${username} or ${password} is incorrect. Otherwise, use else statement to continue with script.
if [[ ${username} != "Tyler"  ]] || [[  ${password} != "1234" ]]; then
echo "wrong"
    exit  
    
else
     echo "message pretty straight forward"
    # Print message to terminal with “Authentication accepted, thanks ${username} now lets get to that script.”
    echo "Authentication accepted, thanks ${username} now lets get to that script."
fi
# Print message to terminal that the “script is starting”.
echo "script is starting"
# Create new directory from current directory (If ~/Desktop is the current directory then new directory would be in Desktop (e.g. ~/Desktop/newDir).
mkdir newDir
# Change directory to directory created in step #9.
cd newDir
# Print(Write) message directly to file
echo "message" > ${var1}
# Move file (defined as variable 1 in script) to the directory you started your script (i.e. ~/Desktop).
mv ${var1} ..
# Print the working directory starting from the root.
pwd
# Change directory to the parent directory.
cd ..
# Create a new directory with the name TXT.
mkdir TXT
# Print(Write) the value of positional parameter $1 to second variable defined in script.
echo $1 >${var2}
# Move variable 1 and variable 2 to the directory TXT inside of the current directory (i.e. ~/Desktop/TXT). You will call the variable here not the value of the variable. (i.e. variables are called like this ${varname})
mv ${var1} TXT
mv ${var2} TXT
# Delete the new directory from Step 9. It is no longer needed.
rm -rf newDir
# Change directory to TXT.
cd TXT
# Print file names and contents of variables to the terminal.
echo ${var1}
cat ${var1}
echo ${var2}
cat ${var2}
# Print the working directory.
pwd
# List the contents of the directory.
ls -l
tree
# Print message to terminal “Script finished. If variable 1 and variable 2 are in TXT folder you passed”.
echo "Script finished. If variable 1 and variable 2 are in TXT folder you passed"
# Change directory to script location and run script from terminal “sh script.sh ${1}” $1=value of special variable. It can be anything you want.
./Tylerlab1script.sh
# Submit your script file to Canvas.
echo "code got to here"