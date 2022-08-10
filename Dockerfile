FROM golang:1.17 as builder

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]