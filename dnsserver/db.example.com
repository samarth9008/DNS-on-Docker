$TTL    604800
@       IN      SOA     ns1.example.com. root.example.com. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.example.com.

; name servers - A records
ns1.example.com.	IN      A      172.20.6.6

server1.example.com.	IN      A      128.23.23.25
server2.example.com.	IN      A      128.23.24.26
