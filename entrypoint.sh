# Um script de ponto de entrada para corrigir um problema específico do Rails que impeça a reinicialização do servidor quando um determinado server.pidarquivo existir. Este script será executado toda vez que o contêiner for iniciado.

#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"