#!/bin/bash
docker build -t my-demo-site .
docker stop demo-site-container 2>/dev/null
docker rm demo-site-container 2>/dev/null
docker run -dt -p 81:80 --name demo-site-container my-demo-site
