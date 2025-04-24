@REM https://habr.com/ru/post/249449/

@SET GOOS=windows
@SET GOARCH=amd64
go build -ldflags "-s -w" -o bin/rtsp2webrtc_amd64.exe

GOOS=windows GOARCH=amd64 go build -ldflags "-s -w" -o /Users/luojin/Documents/yzt/react/ywtg-station-ui/ffmpeg/win/go2rtc.exe

@SET GOOS=linux
@SET GOARCH=386
go build -ldflags "-s -w" -o bin/rtsp2webrtc_i386

@SET GOOS=linux
@SET GOARCH=amd64
go build -ldflags "-s -w" -o bin/rtsp2webrtc_amd64

@SET GOOS=linux
@SET GOARCH=arm
@SET GOARM=7
go build -ldflags "-s -w" -o bin/rtsp2webrtc_armv7

@SET GOOS=linux
@SET GOARCH=arm64
go build -ldflags "-s -w" -o bin/rtsp2webrtc_aarch64


go build -ldflags "-s -w" -o /Users/luojin/Documents/yzt/react/ywtg-station-ui/ffmpeg/mac/go2rtc
