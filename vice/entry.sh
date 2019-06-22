#!/bin/bash

echo '{"irods_host": "data.cyverse.org", "irods_port": 1247, "irods_user_name": "$IPLANT_USER", "irods_zone_name": "iplant"}' | envsubst > $HOME/.irods/irods_environment.json
cd $HOME/vice
mv $HOME/mmtf-genomics $HOME/vice/
exec jupyter lab --no-browser
# exec jupyter lab --no-browser $HOME/vice/mmtf-genomics/pipeline1/1-ReadMutations.ipynb (launches in pipeline1 directory)
