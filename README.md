# 阿里云语音识别（ASR）测试项目

这是一个用于测试阿里云智能语音服务（ASR）的 Java 项目，已从 Maven 转换为 Gradle 构建系统。

## 项目结构

```
testAliASR/
├── build.gradle           # Gradle 构建文件
├── settings.gradle        # Gradle 设置文件
├── gradle/                # Gradle Wrapper 配置
└── src/
    └── main/
        ├── java/          # Java 源代码
        └── resources/     # 资源文件（如日志配置和示例音频）
```

## 功能

此项目演示了如何使用阿里云智能语音服务进行实时语音识别（ASR）。主要功能包括：

1. 多线程处理语音识别
2. 支持 PCM 和 OPU 音频格式
3. 支持 8kHz 和 16kHz 采样率
4. 支持实时语音流处理

## 使用方法

### 前提条件

- 安装 JDK 8 或更高版本
- 配置阿里云智能语音服务的访问密钥

### 运行示例

在命令行中执行：

```bash
./gradlew run --args="<app-key> <token> <url> <audio-file> <thread-num>"
```

参数说明：
- `<app-key>`: 阿里云语音服务的 AppKey
- `<token>`: 访问令牌
- `<url>`: 服务地址（默认为 wss://nls-gateway.cn-shanghai.aliyuncs.com/ws/v1）
- `<audio-file>`: 要识别的音频文件路径
- `<thread-num>`: 并发线程数

### 可选参数

您可以通过 JVM 参数来配置：

```bash
./gradlew run -DisOpuEnable=true -DsampleRate=8000 --args="<app-key> <token> <url> <audio-file> <thread-num>"
```

## 依赖项

- 阿里云智能语音 SDK
- Netty 网络框架
- OkHttp 网络客户端
- Logback 日志框架

## 注意事项

- 请确保您有有效的阿里云账号和智能语音服务访问权限
- 音频文件建议使用 WAV 格式，采样率为 16kHz 