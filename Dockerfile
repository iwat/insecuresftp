FROM atmoz/sftp:alpine

COPY id_rsa.pub               /home/foo/.ssh/keys/id_rsa.pub
COPY ssh_host_rsa_key         /etc/ssh/ssh_host_rsa_key
COPY ssh_host_rsa_key.pub     /etc/ssh/ssh_host_rsa_key.pub
COPY ssh_host_ed25519_key     /etc/ssh/ssh_host_ed25519_key
COPY ssh_host_ed25519_key.pub /etc/ssh/ssh_host_ed25519_key.pub

ENTRYPOINT ["/entrypoint", "foo:bar:1001:1001:upload"]
