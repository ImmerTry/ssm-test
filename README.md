# ssm-test

#### 项目介绍
基于SSM架构实现简单的商城购买、订单、购物车及简单的业务处理

#### 目录图
=====================================
<pre>
**ssm-test**
./
├── README.md                      使用说明
├── jd_db.sql                      sql语句
├── pom.xml                        maven配置
├── src/                           源文件
│   ├── main/                            主文件
│   └── test/                            测试
└── target/                        编译
    ├── classes/
    ├── generated-sources/
    ├── generated-test-sources/
    ├── springmvc-test/
    └── test-classes/
**src**
./
├── main/主文件
│   ├── java/                        java文件
│   │   └── com/
│   ├── resources/                   全局配置文件
│   │   ├── applicationContext.xml            spring配置
│   │   ├── db/                               数据库连接配置
│   │   ├── log4j.properties                  日志文件
│   │   ├── mappers/                 mybatis映射文件
│   │   ├── mybatis-config.xml                mybatis配置
│   │   ├── project.properties                访问路径配置
│   │   └── spring-mvc.xml                    springMVC配置
│   └── webapp/                      web资源文件
│       ├── WEB-INF/                          页面资源文件
│       ├── statics/                          静态文件
│       └── test.html                         后台静态页面
└── test/测试
    └── java/
        ├── ClaDAOTest.java
        ├── ItemDAOTest.java
        └── redisTest.java
**java**
./
└── com/
    └── ssm/
        └── maven/
            └── core/
                ├── common/        公共包
                ├── controller/    控制包
                ├── dao/           数据访问包
                ├── pojo/          pojo包
                ├── service/       服务包
                └── util/          工具类包
**WEB-INF**
./
├── views/
│   ├── admin.jsp            后台主页面
│   ├── base.jsp             访问图片路径页面
│   ├── bottom.jsp           公共底部页面
│   ├── cart.jsp             购物车页面
│   ├── cartSuccess.jsp      添加购物车成功页面
│   ├── detail.jsp           商品详情信息页面
│   ├── error.jsp            404报错页面
│   ├── fruit.jsp            商品展示页面
│   ├── index.jsp            首页
│   ├── itemManage.jsp       商品管理页面
│   ├── login.jsp            登录页面
│   ├── loginModal.jsp       后台登录页面
│   ├── order.jsp            订单页面
│   ├── pictureManage.jsp    图片管理页面
│   ├── productManage.jsp    商品分类管理页面
│   ├── register.jsp         注册页面
│   ├── success.jsp          订单提交成功页面
│   └── top.jsp              公共头部页面
└── web.xml                  web配置
</pre>


#### 安装教程

1. 克隆或下载本项目到本地
2. 创建数据库（jd_db.sql）
3. 部署Tomcat
4. 配置Redis

#### 使用说明

1. 项目基于Intellij idea编译环境下运行，克隆或下载会看到idea配置
2. 后台登录管理请使用“admin”&&"123456"来登录
3. 项目基于SSM架构下一个自我练习的案例，部分功能未实现。



