#!/bin/bash
cd /home/ubuntu/node-app

pm2 stop node-app || true
pm2 delete node-app || true

pm2 start app.js --name node-app
pm2 save
