# Where is Your Dog Now?

## Run Halo in a container, yo.  Foreground.

ENV VARS:

| var                | purpose                              |
|--------------------|--------------------------------------|
| HALO_AGENT_KEY     | Agent registration key               |
| SERVER_TAG         | Server group for hierarchy placement |


Run the thing:

    docker run -d \
      --restart=always \
      -e SERVER_TAG=$SERVER_TAG \
      -e HALO_AGENT_KEY=$HALO_AGENT_KEY \
      -v /opt/cloudpassage/data:/opt/cloudpassage/data \
      --name=halo_agent \
      docker.io/ashmastaflash/where_is_your_dog_now
