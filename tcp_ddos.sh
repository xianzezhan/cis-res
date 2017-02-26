
#!/bin/bash
# dev-tcp.sh: /dev/tcp redirection to check Internet connection.

# Script by Troy Engel.
# Used with permission.
 
TCP_HOST=192.168.100.196       # Victim ip
TCP_PORT=31337                # Port 31337 Back Orifice
  
# Try to connect. (Somewhat similar to a 'ping' . . .) 
for i in `seq 1 1000`;
echo "xzhant5" >/dev/tcp/${TCP_HOST}/${TCP_PORT}
if [ "X$MYEXIT" = "X0" ]; then
  echo "Connection successful. Exit code: $MYEXIT"
else
  echo "Connection unsuccessful. Exit code: $MYEXIT"
fi
MYEXIT=$?
done

exit $MYEXIT