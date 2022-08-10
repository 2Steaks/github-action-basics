FROM golang:1.13 as builder

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]