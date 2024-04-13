#!/bin/sh

# Define properties
generator_settings="${GENERATOR_SETTINGS}"
os_permission_level="${OP_PERMISSION_LEVEL:-4}"
allow_nether="${ALLOW_NETHER:-true}"
level_name="${LEVEL_NAME:-world}"
enable_query="${ENABLE_QUERY:-false}"
allow_flight="${ALLOW_FLIGHT:-false}"
prevent_proxy_connections="${PREVENT_PROXY_CONNECTIONS:-false}"
server_port="${SERVER_PORT:-25565}"
max_world_size="${MAX_WORLD_SIZE:-29999984}"
level_type="${LEVEL_TYPE:-DEFAULT}"
enable_rcon="${ENABLE_RCON:-false}"
level_seed="${LEVEL_SEED}"
force_gamemode="${FORCE_GAMEMODE:-false}"
server_ip="${SERVER_IP}"
network_compression_threshold="${NETWORK_COMPRESSION_THRESHOLD:-256}"
spawn_npcs="${SPAWN_NPCS:-true}"
max_build_height="${MAX_BUILD_HEIGHT:-256}"
white_list="${WHITE_LIST:-false}"
spawn_animals="${SPAWN_ANIMALS:-true}"
hardcore="${HARDCORE:-false}"
snooper_enabled="${SNOOPER_ENABLED:-true}"
resource_pack_sha1="${RESOURCE_PACK_SHA1}"
online_mode="${ONLINE_MODE:-true}"
resource_pack="${RESOURCE_PACK}"
pvp="${PVP:-true}"
difficulty="${DIFFICULTY:-1}"
enable_command_block="${ENABLE_COMMAND_BLOCK:-false}"
gamemode="${GAMEMODE:-0}"
player_idle_timeout="${PLAYER_IDLE_TIMEOUT:-0}"
max_players="${MAX_PLAYERS:-20}"
max_tick_time="${MAX_TICK_TIME:-60000}"
spawn_monsters="${SPAWN_MONSTERS:-true}"
view_distance="${VIEW_DISTANCE:-10}"
generate_structures="${GENERATE_STRUCTURES:-true}"
motd="${MOTD:-A Minecraft server powered by Docker (image: cmunroe/bukkit)}"
enable_jmx_monitoring="${ENABLE_JMX_MONITORING:-false}"
rcon_port="${RCON_PORT:-25575}"
query_port="${QUERY_PORT:-25565}"
use_native_transport="${USE_NATIVE_TRANSPORT:-true}"
enable_status="${ENABLE_STATUS:-true}"
broadcast_rcon_to_ops="${BROADCAST_RCON_TO_OPS:-true}"
sync_chunk_writes="${SYNC_CHUNK_WRITES:-true}"
op_permission_level="${OP_PERMISSION_LEVEL:-4}"
entity_broadcast_range_percentage="${ENTITY_BROADCAST_RANGE_PERCENTAGE:-100}"
rcon_password="${RCON_PASSWORD}"
rate_limit="${RATE_LIMIT:-0}"
broadcast_console_to_ops="${BROADCAST_CONSOLE_TO_OPS:-true}"
function_permission_level="${FUNCTION_PERMISSION_LEVEL:-2}"
enforce_whitelist="${ENFORCE_WHITELIST:-false}"
resource_pack_sha1="${RESOURCE_PACK_SHA1:-}"
spawn_protection="${SPAWN_PROTECTION:-16}"

# Write properties to file
file="/data/server.properties"
now=$(date "+%Y-%m-%dT%H:%M:%S")
cat <<EOF > "$file"
# Minecraft server properties
# Automatically generated at $now

generator-settings: $generator_settings
os-permission-level: $os_permission_level
allow-nether: $allow_nether
level-name: $level_name
enable-query: $enable_query
allow-flight: $allow_flight
prevent-proxy-connections: $prevent_proxy_connections
server-port: $server_port
max-world-size: $max_world_size
level-type: $level_type
enable-rcon: $enable_rcon
level-seed: $level_seed
force-gamemode: $force_gamemode
server-ip: $server_ip
network-compression-threshold: $network_compression_threshold
spawn-npcs: $spawn_npcs
max-build-height: $max_build_height
white-list: $white_list
spawn-animals: $spawn_animals
hardcore: $hardcore
snooper-enabled: $snooper_enabled
resource-pack-sha1: $resource_pack_sha1
online-mode: $online_mode
resource-pack: $resource_pack
pvp: $pvp
difficulty: $difficulty
enable-command-block: $enable_command_block
gamemode: $gamemode
player-idle-timeout: $player_idle_timeout
max-players: $max_players
max-tick-time: $max_tick_time
spawn-monsters: $spawn_monsters
view-distance: $view_distance
generate-structures: $generate_structures
motd: $motd
enable-jmx-monitoring: $enable_jmx_monitoring
rcon.port: $rcon_port
query.port: $query_port
use-native-transport: $use_native_transport
enable-status: $enable_status
broadcast-rcon-to-ops: $broadcast_rcon_to_ops
sync-chunk-writes: $sync_chunk_writes
op-permission-level: $op_permission_level
entity-broadcast-range-percentage: $entity_broadcast_range_percentage
rcon.password: $rcon_password
rate-limit: $rate_limit
broadcast-console-to-ops: $broadcast_console_to_ops
function-permission-level: $function_permission_level
enforce-whitelist: $enforce_whitelist
resource-pack-sha1: $resource_pack_sha1
spawn-protection: $spawn_protection
EOF
