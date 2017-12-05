
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <tinyproxy-configuration-file>" >&2
  exit 1
fi

/etc/init.d/tinyproxy stop

echo "Loading $1 ..."
tinyproxy -c $1 

/etc/init.d/tinyproxy start
