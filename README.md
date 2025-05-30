# 🎓 BUAA-Finance-Tracker：自动提醒你的财务到账信息

> 🌟 送给每一个努力的 BUAAer

作为一名即将从北航毕业的学子，我在这几年里陆续收到了不少劳务费、奖助学金等财务款项。每次到账，工行虽然会发短信提醒，但内容常常是这样：

![短信提醒过于简略](https://raw.githubusercontent.com/ZhouKanglei/jidianxia/master/picgo/202505301956507.png)

一个看不懂的代码？谁打的钱？扣了多少税？——全无头绪。

更详细的信息藏在北航财务系统里，虽然能查到具体的备注和金额：

![系统中才能看到详细信息](https://raw.githubusercontent.com/ZhouKanglei/jidianxia/master/picgo/202505301956508.png)

但每次都得登录系统，点来点去，非常繁琐。

于是，我写了一个小工具 —— **BUAA-Finance-Tracker**，自动帮我查账，并通过邮件提醒到账详情👇

![邮件自动提醒效果](https://raw.githubusercontent.com/ZhouKanglei/jidianxia/master/picgo/202505301956509.png)

---

## 🛠 项目简介

**BUAA-Finance-Tracker** 是一个基于 Selenium 的自动化脚本，支持定期登录北航财务系统，抓取最新到账记录，并通过邮件发送详细提醒。

📌 项目开源地址：https://github.com/ZhouKanglei/BUAA-Finance-Tracker

---

## 🚀 核心功能

-   ✅ **自动登录** 北航财务系统
    
-   ✅ **抓取更新** 的到账记录（含备注与税后信息）
    
-   ✅ **邮件提醒**，不用再手动查系统
    

---

## 🧩 环境要求

-   Python ≥ 3.8
    
-   Selenium（[参考博客](https://blog.csdn.net/qq_39098712/article/details/136512058 "selenium +Chrome driver环境配置")）
    
-   Chrome 浏览器 + 对应版本的 Chrome WebDriver
    

---

## 📚 使用指南

### 1\. 克隆项目 & 安装依赖

```bash
git clone https://github.com/your-repo/BUAA-Finance-Tracker.git
cd BUAA-Finance-Tracker
pip install selenium
```

### 2\. 配置你的信息

打开 `cwc_tracker.ipynb`，填写你的北航财务系统账号和邮箱信息：

```python
system_dict = {
    "URL": "https://jcb.buaa.edu.cn/",
    "userid": "你的学号",
    "password": "你的密码",
}

email_dict = {
    "email": "XXX@qq.com",
    "password": "授权码",
    "reciver": "XXX@qq.com",
    "smtp_server": "smtp.qq.com",
    "smtp_port": 587,
}
```

### 3\. 设置运行环境路径

在 `run_cwc_tracker.sh` 中添加 Conda 路径：

```bash
source ~/anaconda3/etc/profile.d/conda.sh
conda activate base
```

### 4\. 配置定时运行（自动提醒）

例如，比如每天 8 点到 21 点期间每 1 小时自动运行一次：

```bash
crontab -e
```

添加：

```bash
0 8-21/1 * * * bash /path/to/run_cwc_tracker.sh
```

更多配置，参考[Linux crontab 命令](https://www.runoob.com/linux/linux-comm-crontab.html "Linux crontab 命令")。

---

## 🧾 总结

📬 **BUAA-Finance-Tracker** 是一个简洁实用的财务提醒工具，让你告别频繁登录查询的烦恼，第一时间了解每一笔到账详情。

如果你也是北航的同学，正在为“是谁打的钱？”、“扣了多少税？”感到困惑，不妨一试！

