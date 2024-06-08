利用v2ray/Xray的反向代理功能通过adb forward连接网络，电脑A为提供网络方，安卓手机B与电脑通过USB连接并开启V2rayNG并开启热点，手机C开启V2rayNG。估计能够配置V2ray的设备如iOS系统通过iproxy转发端口也能使用，但只在安卓手机上测试过，且有如下缺点：
缺点：1.测试的安卓手机B为redmi k20pro Android11 miui12.5.6，V2rayNG1.8.5，在启动十余秒后会自行断开，此时重新连接无效，需要重新执行bat脚本
2.安卓手机B不能连接网络，只有手机C能够联网
3.安卓手机B每次打开热点的IP地址会改变，手机C需要在V2rayNG里修改地址配置。
操作步骤：
1 插上数据线连接到电脑上，并打开USB调试
2.安装v2rayNG*.apk 到安卓手机
3.在安卓手机B将config Phone.json导入V2rayNG后点击运行并打开Wi-Fi热点
4.在电脑A上点击start.bat  手机上若提示 允许usb调试 点运行
5.手机C连接安卓手机B的热点并记下热点网关，手机C的V2rayNG新建Vmess节点：地址为网关IP，端口15000，用户ID：be9e66f6-c4d9-4ea1-a743-b09afcd3dbef，加密方式auto，其余不变。
6. 手机C连接节点。
