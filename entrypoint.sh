#!/bin/sh

set -o pipefail

USER_ID=${UID}
GROUP_ID=${GID}

usermod -u ${USER_ID} $(id $( ( getent passwd ${USER_ID} || echo "fantia" ) | cut -d : -f 1) -n -u)
groupmod -g ${GROUP_ID} $(id $( ( getent group ${GROUP_ID} || echo "fantia" ) | cut -d : -f 1) -n -g)


if [ $USER_ID !=  1000 ] && [ $GROUP_ID != 1000 ]; then
  echo "Setting permissions to UID/GID: ${USER_ID}/${GROUP_ID}"
  find /opt/fantiadl -exec chown ${USER_ID}:${GROUP_ID} "{}" \;
fi

exec su-exec ${USER_ID}:${GROUP_ID} python3 /opt/fantiadl/fantiadl.py $@