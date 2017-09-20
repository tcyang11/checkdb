tail -500 /var/log/messages |awk '/Emerg|Alert|Crit|Err|Warn/'|wc -l
