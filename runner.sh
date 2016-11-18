#!/bin/bash

# If registration info exists, just run agent.  Otherwise, start with reg. info

if [ -e /opt/cloudpassage/data/store.db ]
then
  /opt/cloudpassage/bin/cphalo
else
  /opt/cloudpassage/bin/cphalo --agent-key=$HALO_AGENT_KEY --tag=$SERVER_TAG --server-label=$SERVER_LABEL --read-only=true
fi
