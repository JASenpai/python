#!/bin/bash
echo Script de whatsapp
curl -X POST \
  https://api-messaging.movile.com/v1/whatsapp/send \
  -H 'authenticationtoken: RKsj4QzALLK9Muwm6cYsKZ8mdeASk1UDdxwUWiBt' \
  -H 'username: AR_GRIDO' \
  -H 'content-type: application/json' \
  -d '{"destinations": [{"correlationId": "MyCorrelationId","destination": "542216078444"}],"message": {"hsm": {"namespace": "1e1a3508_c587_e845_d431_b6764aae2e52","elementName": "chatclub_southcone_welcome_v1","parameters":["Producto","Empresa"]}}}'
