#!/bin/bash
incoming=/hermes-data/incoming
binary="$HOME/hermes/bin/getdcmtags"

echo "Starting DICOM receiver..."
storescp --fork --promiscuous -od "$incoming" +uf -xcr "$binary $incoming/#f" 104

