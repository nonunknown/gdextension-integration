#!/usr/bin/env bash

URL="url.com"

while getopts k:s: aflag; do
    case $aflag in
        k) keep_test=$OPTARG;;
        s) use_ssh=$OPTARG;;
    esac
done



cd %TARGET_FOLDER%

echo "cloning godot-cpp repo"

if ${use_ssh}
then 
    URL="a"
    # mv test ../projects/
else 
    # rm -R test/
    URL="b"
fi
echo $URL
# git clone --recursive git@github.com:godotengine/godot-cpp.git

# cd godot-cpp

if ${keep_test}
then 
    echo "Configuring test project"
    # mv test ../projects/
else 
    # rm -R test/
    echo "Removing test project"
fi