#!/usr/bin/env sh

cat > index.html <<-EOF
<h1>Hello World v2!</h1>
EOF
nohup python3 -m http.server ${server_port} --bind 0.0.0.0 &
