#!/bin/bash
LOG_DIR=/var/log
cd $LOG_DIR
echo '' | tee wtmp btmp lastlog > /dev/null
echo "Logs /var/log cleaned up..."
sleep 3s
cd /usr/local/mgr5/var/
echo '' | tee core.log core.journal filemgr.log ihttpd.log ispmgr.auth.log ispmgr.log ispmgr.journal > /dev/null
rm -rf ./.auth
echo "ISPmgr logs cleaned..."
sleep 3s
cd /root
history -c && history -w
echo '' | tee bash.history > /dev/null
echo "history cleaned...\r\nWork is done!"
exit 0
