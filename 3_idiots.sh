#!/bin/bash

# user defined variables
hero="rancho"
villain="virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain hai $villain"

# shell / environment variables bhi hote hai (pre-defined)

echo "current logged in user $USER"

read -p "rancho ka poora naam kya tha?" fullname 

echo "rancho ka poora namm $fullname tha"

# arguments

# ./3_idiots.sh raju faran ranche

echo "movie ka naam: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "hence the 3 idiots are $@"

