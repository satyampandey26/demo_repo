#!/bin/bash

while true; do
    echo "Enter a password (at least 8 characters with a mix of letters, numbers, and special characters): "
    echo $password

    # Check password length
    if [ ${#password} -lt 8 ]; then
        echo "Password must be at least 8 characters long."
        continue
    fi

    # Check for at least one digit
    if ! [[ "$password" =~ [0-9] ]]; then
        echo "Password must contain at least one digit."
        continue
    fi

    # Check for at least one letter (both upper and lower case)
    if ! [[ "$password" =~ [a-zA-Z] ]]; then
        echo "Password must contain at least one letter."
        continue
    fi

    # Check for at least one special character
    if ! [[ "$password" =~ [[!@#$%^&*()-+=]] ]]; then
        echo "Password must contain at least one special character."
        continue
    fi

    echo "Valid password entered."
    break
done

