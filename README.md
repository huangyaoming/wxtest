### 文档：<br />
* 说明文档：doc目录下<br />
* 数据库：db目录下，建表及初始化数据<br />

### 安装说明：<br />
* 1、导入数据<br />
db/mysql/db-mysql.sql<br />
* 2、修改配置文件<br />
db.properties修改数据库配置<br />
spring-email.xml修改成你自己的邮箱账号和密码<br />
* 3、打包部署<br />
部署tomcat或jetty，打开浏览器，访问http://yourhost:port/yyjwx/<br />

### 公众号接入步骤
* 1、将授权信息（URL、TOKEN，进入后台管理，在菜单“配置授权”中查看）配置到公众平台 
* 2、从微信客户端向公众号发送验证码（系统生成，如：52731 ）
* 3、完成授权


### 开发环境：<br />
* JDK1.6 + jetty1.7 + myeclipse(IntelliJ IDEA)<br />

### 开发框架：<br />
* spring3.2 + springMVC + hibernate4 + freemarker<br />

### 前端：<br />
* jquery + jquery easyui1.4 + bootstrap3 + artDialog<br />

### 设计思路：<br />
* 微信基础功能（不与任何业务系统耦合） + 插件式扩展（根据不同业务在原来系统上不修改之前代码迭代功能）<br />

### java包结构约定：<br />
* 基础功能包：com.byhealth.wechat.base<br />
* 扩展功能包：com.byhealth.wechat.extension<br />
* 开发SDK：com.byhealth.wechat.mysdk(在jfinal-weixin基础上修改)<br />


### 统一的异常信息处理，支持一般请求和ajax请求<br />
全局同意错误码<br />
* 0：失败<br />
* 1：成功<br />
* -1：登陆超时<br />
