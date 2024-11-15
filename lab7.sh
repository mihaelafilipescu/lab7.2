cat <<EOF > validate_hosts.sh
#!/bin/bash
grep -Eo "([0-9]{1,3}\.){3}[0-9]{1,3}" /etc/hosts | while read ip; do
    if [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
        echo "$ip este valid"
    else
        echo "$ip nu este valid"
    fi
done
EOF
