# !/bin/bash

# stop the Qdrant instance
if [ -f "qdrant.pid" ]; then
    printf "[+] Stopping Qdrant instance ...\n"
    kill -9 $(cat qdrant.pid)
    rm qdrant.pid
fi

# stop the api-server
if [ -f "llamaedge.pid" ]; then
    printf "[+] Stopping API server ...\n"
    kill -9 $(cat llamaedge.pid)
    rm llamaedge.pid
fi