# Docker Build for Fabric Server

The goal of this repository is to build the latest Fabric server in regular intervals. There is no explicit versioning for the Docker tags besides the Minecraft version (so no Fabric API version numbers).

Based on [this](https://gitlab.com/cmunroe/docker-bukkit) more generic approach for different flavours by Cameron Munroe.

## Running the server

```shell
docker run -it -v ./data:/data -p 25565:25565  -e EULA=true --name mc_server ghcr.io/andyundso/fabric-server:1.20.5
```

## Configuration

You can bring your existing data and configuration and mount it to the `/data` directory when starting the container using the `-v` option. You may also pass configuration options as environment variables like so:

```shell
docker run -e DIFFICULTY=2 -e MOTD="A non-standard message" -e SPAWN_ANIMALS=false ghcr.io/andyundso/fabric-server:1.20.5
```

This container will only attempt to generate a `server.properties` file if one does not already exist. If you would like to use the configuration tool, ensure you are not providing a configuration file or setting `FORCE_CONFIG=true` in the environment variables.

### Java memory

To help control memory usage, we have `InitRAM` and `MaxRAM` environment variables. By default, these variables are set to `1g` and `2g`, respectively. They map to `-Xms` and `-Xmx`.

If you wish to support more players and plugins, it is highly encouraging to increase these variables. You can find more information here: https://minecraft.gamepedia.com/Server/Requirements/Dedicated.

#### List of Environment Variables

A full list of `server.properties` settings and their corresponding environment variables is included below, along with their defaults

| Configuration Option          | Environment Variable          | Default                                                          |
| ------------------------------|-------------------------------|------------------------------------------------------------------|
| allow-flight                  | ALLOW_FLIGHT                  | `false`                                                          |
| allow-nether                  | ALLOW_NETHER                  | `true`                                                           |
| difficulty                    | DIFFICULTY                    | `1`                                                              |
| enable-command-block          | ENABLE_COMMAND_BLOCK          | `false`                                                          |
| enable-query                  | ENABLE_QUERY                  | `false`                                                          |
| enable-rcon                   | ENABLE_RCON                   | `false`                                                          |
| force-gamemode                | FORCE_GAMEMODE                | `false`                                                          |
| gamemode                      | GAMEMODE                      | `0`                                                              |
| generate-structures           | GENERATE_STRUCTURES           | `true`                                                           |
| generator-settings            | GENERATOR_SETTINGS            |                                                                  |
| hardcore                      | HARDCORE                      | `false`                                                          |
| level-name                    | LEVEL_NAME                    | `world`                                                          |
| level-seed                    | LEVEL_SEED                    |                                                                  |
| level-type                    | LEVEL_TYPE                    | `DEFAULT`                                                        |
| max-build-height              | MAX_BUILD_HEIGHT              |  `256`                                                           |
| max-players                   | MAX_PLAYERS                   | `20`                                                             |
| max-tick-time                 | MAX_TICK_TIME                 | `60000`                                                          |
| max-world-size                | MAX_WORLD_SIZE                | `29999984`                                                       |
| motd                          | MOTD|                         | `"A Minecraft server powered by Docker (image: cmunroe/bukkit)"` |
| network-compression-threshold | NETWORK_COMPRESSION_THRESHOLD | `256`                                                            |
| online-mode                   | ONLINE_MODE                   | `true`                                                           |
| op-permission-level           | OP_PERMISSION_LEVEL           | `4`                                                              |
| player-idle-timeout           | PLAYER_IDLE_TIMEOUT           | `0`                                                              |
| prevent-proxy-connections     | PREVENT_PROXY_CONNECTIONS     | `false`                                                          |
| pvp                           | PVP                           | `true`                                                           |
| resource-pack                 | RESOURCE_PACK                 |                                                                  |
| resource-pack-sha1            | RESOURCE_PACK_SHA1            |                                                                  |
| server-ip                     | SERVER_IP                     |                                                                  |
| server-port                   | SERVER_PORT                   | `25565`                                                          | 
| snooper-enabled               | SNOOPER_ENABLED               | `true`                                                           |
| spawn-animals                 | SPAWN_ANIMALS                 | `true`                                                           |
| spawn-monsters                | SPAWN_MONSTERS                | `true`                                                           |
| spawn-npcs                    | SPAWN_NPCS                    | `true`                                                           |
| view-distance                 | VIEW_DISTANCE                 | `10`                                                             |
| white-list                    | WHITE_LIST                    | `false`                                                          |
| enable-jmx-monitoring         | ENABLE_JMX_MONITORING         | `false`                                                          |
| rcon.port                     | RCON_PORT                     | `25575`                                                          |
| query.port                    | QUERY_PORT                    | `25565`                                                          |
| use-native-transport          | USE_NATIVE_TRANSPORT          | `true`                                                           |
| enable-status                 | ENABLE_STATUS                 | `true`                                                           |
| broadcast-rcon-to-ops         | BROADCAST_RCON_TO_OPS         | `true`                                                           |
| sync-chunk-writes             | SYNC_CHUNK_WRITES             | `true`                                                           |
| op-permission-level           | OP_PERMISSION_LEVEL           | `4`                                                              |
| entity-broadcast-range-percentage | ENTITY_BROADCAST_RANGE_PERCENTAGE | `100`                                                    |
| rcon.password                 | RCON_PASSWORD                 | ` `                                                              |
| rate-limit                    | RATE_LIMIT                    | `0`                                                              |
| broadcast-console-to-ops      | BROADCAST_CONSOLE_TO_OPS      | `true`                                                           |
| function-permission-level     | FUNCTION_PERMISSION_LEVEL     | `2`                                                              |
| enforce-whitelist             | ENFORCE_WHITELIST             | `false`                                                          |
| resource-pack-sha1            | RESOURCE_PACK_SHA1            | ` `                                                              |
| spawn-protection              | SPAWN_PROTECTION              | `16`                                                             |
