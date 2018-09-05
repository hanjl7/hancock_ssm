# hancock_ssm
Spring+SpringMVC+Mybatis+AdminLTE实现简单的后台管理系统
>单独创建了一个Maven工程然后根据通过包的划分来分为 web层,service层,dao层,domain层,utils层,以通过模块来划分这几层，一个层对应一个单独的模块,然后单独去 开发一个模块最后把这几个个模块聚合起来,形成一个整体的项目

***

# 功能简介
  本项目实现了一个简单的后台管理系统，主要包含以下功能： 
  
  ### 商品查询 

  ### 商品添加 
 >商品添加功能，注意事务操作。
  ### 订单查询 
 >订单的查询操作，它主要完成简单的多表查询操作，查询订单时，需要查询出与订单关联的其它表中信息。 
  ### 订单分页查询 
 >订单分页查询，使用的是mybatis分页插件 [PageHelper](https://github.com/pagehelper/Mybatis-PageHelper)
  ### 订单详情查询 

  ### Spring Security 概述 
 >[Spring Security](https://github.com/spring-projects/spring-security) 是 Spring 项目组中用来提供安全认证服务的框架
  ### 用户管理 
 >用户管理基于spring Security的用户登录、退出操作。
  ### 角色管理 
 >角色管理主要完成角色查询、角色添加资源权限管理。 
  ### 权限关联与控制 
 >用户角色关联、角色权限关联。
   ### AOP日志处理 
 >AOP日志处理，我们使用spring AOP切面来完成系统级别的日志收集。 
