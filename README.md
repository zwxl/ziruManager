# ssm+vue自如租房系统

## 功能模块：

​	登录注册加用户管理模块；

​	多条件模糊查询，分页。

## 技术栈

   后端：ssm，mysql5.7.0

​	前端：使用了vue

**使用git clone 或者直接下载本地解压**

前端文件夹：vue_ziru

> npm i             //重新下载依赖
>
> npm run serve     //运行
>
> //前端还要很大bug，需要调整

后端文件夹：ssmZiRu

>导入idea，自动从本地下载依赖或者远程仓库
>
>主要功能都在RoomController和UserController，其他都是个人测试
>
>修改配置如下：
>
>```properties
>druid.driver=com.mysql.cj.jdbc.Driver
>druid.url=jdbc:mysql://localhost:3306/ziroom?useUnicode=true&characterEncoding=utf-8&serverTimezone=Asia/Shanghai
>druid.username=root
>druid.password=密码
>
>druid.pool.init=1
>druid.pool.minIdle=3
>druid.pool.maxActive=20
>druid.pool.timeout=30000
>```

​	

