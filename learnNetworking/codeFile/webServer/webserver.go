package main

import (
	"fmt"
	"net/http"
)

func helloweb(w http.ResponseWriter, _ *http.Request) {
	fmt.Fprint(w, "hello from GO server")
}

func main() {
	http.HandleFunc("/", helloweb)
	http.ListenAndServe("0.0.0.0:9000", nil)
}
