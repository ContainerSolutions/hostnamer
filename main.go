package main

import (
	"io"
	"log"
	"net/http"
	"os"
)

func hello(w http.ResponseWriter, r *http.Request) {
	if hostname, err := os.Hostname(); err != nil {
		log.Print(err)
	} else {
		io.WriteString(w, hostname)
	}
}

func main() {
	http.HandleFunc("/", hello)
	http.ListenAndServe(":8080", nil)
}
