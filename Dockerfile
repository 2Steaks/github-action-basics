FROM golang:1.17 as builder

RUN go install go.k6.io/xk6/cmd/xk6@latest
RUN xk6 build --output xk6-browser --with github.com/grafana/xk6-browser

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]