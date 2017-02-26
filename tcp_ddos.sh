
#!/bin/bash
 
TCP_HOST=192.168.100.196       # Victim ip
TCP_PORT=31337                # Port 31337 Back Orifice
 
#loop for 10000 times some packages may be dropped
for i in `seq 1 10000`;
do
	echo "xzhan5" >/dev/tcp/${TCP_HOST}/${TCP_PORT}
	MYEXIT=$?
if [ "X$MYEXIT" != "X0" ]; then
    echo "Connection unsuccessful. Exit code: $MYEXIT"
fi
done

exit $MYEXIT
