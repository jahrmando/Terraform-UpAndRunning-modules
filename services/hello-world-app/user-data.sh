#!/usr/bin/env sh

cat > index.html <<-EOF
<h1>${server_text}</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF
nohup python3 -m http.server ${server_port} --bind 0.0.0.0 &
