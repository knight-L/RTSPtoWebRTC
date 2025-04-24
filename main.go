/*
 * @Author: Knight
 * @Date: 2024-12-12 09:58:57
 * @LastEditors: Knight
 * @LastEditTime: 2024-12-12 10:38:05
 */
package main

import (
	"log"
	"os"
	"os/signal"
	"syscall"
)

func main() {
	go serveHTTP()
	go serveStreams()
	sigs := make(chan os.Signal, 1)
	done := make(chan bool, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)
	go func() {
		sig := <-sigs
		log.Println(sig)
		done <- true
	}()
	log.Println("服务启动")
	<-done
	log.Println("退出")
}
