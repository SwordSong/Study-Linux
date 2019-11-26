根据所在的网络场所区分，预设保护规则集
public 进允许访问本机的sshd等少数几个服务
trusted 允许仍访问
block  阻塞任何来访的请求  明确拒绝
drop 丢弃任何来访的包       直接丢弃 客户端都不知道


配置规制的位置
运行时 runtime
永久  permanent