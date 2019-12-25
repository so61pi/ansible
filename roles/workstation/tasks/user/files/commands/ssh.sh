print -s "ssh-copy-id user@host"
print -s "ssh-copy-id -i ~/.ssh/key.pub user@host"
print -s "ssh-copy-id 'user@host -p 22'"
print -s "sshfs -o uid=0,gid=0,default_permissions,reconnect,no_readahead,cache=yes,kernel_cache,compression=no,Cipher=arcfour,ro admin@example.com:/dir /dir"
print -s "fusermount -u /dir"
print -s "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no admin@example.com"
print -s "ssh -p 443 admin@example.com"
print -s "ssh -N -f -L 9000:example.com:80 admin@server.com"
print -s "ssh -N -f -L '*:9000:example.com:80' admin@server.com"
print -s "ssh -N -f -R 9000:localhost:3000 admin@server.com"
print -s "ssh -N -f -R 9000:address:3000 admin@server.com"
print -s "ssh -N -f -D localhost:3000 admin@server.com"

print -s "scp file user@server:/file"
print -s "scp user@server:/file file"
print -s "scp -r dir user@server:/dir"
print -s "scp -r user@server:/dir dir"
print -s "scp user1@server1:/file1 user2@server2:/file2"
print -s "scp -r user1@server1:/dir1 user2@server2:/dir2"