go install go.k6.io/xk6/cmd/xk6@latest

echo "GOROOT=$HOME/sdk/gotip" >>"$GITHUB_ENV"
echo "GOPATH=$HOME/go" >>"$GITHUB_ENV"
echo "$HOME/go/bin" >>"$GITHUB_PATH"
echo "$HOME/sdk/gotip/bin" >>"$GITHUB_PATH"

xk6 build --output xk6-browser --with github.com/grafana/xk6-browser
