@echo off
for %%f in (*.wav) do (
    echo 正在转换: "%%f" → "%%~nf_16k.wav"
    ffmpeg -i "%%f" -acodec pcm_s16le -ac 1 -ar 16000 "%%~nf_16k.wav" -y
)
echo 转换完成！
pause