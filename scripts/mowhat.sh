#!/bin/bash
echo Script de whatsapp MO
curl -X POST \
  https://api-messaging.movile.com/v1/whatsapp/send \
  -H 'authenticationtoken: RKsj4QzALLK9Muwm6cYsKZ8mdeASk1UDdxwUWiBt' \
  -H 'username: AR_GRIDO' \
  -H 'content-type: application/json' \
  -d '{"destinations": [{"correlationId": "MyCorrelationId","destination": "542216078444"}],"message": {"image": {"type": "JPG","url": "https://www.mobiletime.com.br/wp-content/uploads/2018/01/logo-wavyjpg-768x283.jpg"}}}'
