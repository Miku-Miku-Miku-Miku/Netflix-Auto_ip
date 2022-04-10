# Netflix-Auto_ip
监控Netflix是否全解锁的脚本，搭配具有自动更换ip的API的机器可以实现全天候解锁保证<br>
~~比如Hinet~~ 这就是为hinet研发的<br>

**首先拉取脚本**

    wget https://github.com/Miku-Miku-Miku-Miku/Netflix-Auto_ip/blob/main/auto_ip.sh

**更改脚本第七行为自己的更换ip的API**

不确定有没有的可以找服务器供应商询问

一般Hinet商家都会有提供，例如我的是

    curl http://10.231.92.10/changeip/changeip.aspx
    
更改成为自己的即可

**最后添加定时任务写进crontab即可**
