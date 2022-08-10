FROM golang:1.17 as builder

WORKDIR /app

RUN go install go.k6.io/xk6/cmd/xk6@latest

COPY . /app/

RUN xk6 build --output /app/xk6-browser --with github.com/grafana/xk6-browser

ENTRYPOINT ["/entrypoint.sh"]