UA_Browser="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36"
echo "Miku的自动检测脚本"
echo "开始检测:"
result=$(curl --user-agent "${UA_Browser}" -fsL --write-out %{http_code} --output /dev/null --max-time 10 "https://www.netflix.com/title/81215567" 2>&1)
if [[ "$result" == "404" ]];then
    echo "自制解锁，开始更换ip"
    curl http://10.231.92.10/changeip/changeip.aspx
    echo "ip更换完毕，请刷新dns缓存获取新ip"
else
    echo -e "正常解锁，脚本结束"
fi
