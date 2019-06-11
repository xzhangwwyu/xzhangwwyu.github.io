---
layout:     post
title:      "iris middleware"
subtitle:   " \"进出站闸机\""
date:       2019-06-11 08:22:15
author:     "zhy"
catalog: true
header-img: "img/home-bg.jpg"
tags:
    - go
---

> “兵来将挡 水来土掩”

### 作用
* 拦截请求，看请求是否合法，比如认证
* 灰度测试，通过添加cookie字段，做到特定用户流量打到本服务上
* 降级服务，一键降级某些指定接口
* 频控控制，对指定的接口进行频控
* 调用链追踪，注入request id，追踪服务的调用链
* 埋点监控，追踪slowapi，服务稳定性统计
* 日志审计，追踪用户的访问记录

### 功能
###### request id
>* 使用于http请求
>* 如果请求header没有x_request_id，注入x_request_id,response 的header将x_request_id返回
>* 使用分布式uuid的方式生成x_request_id，prefix+mac+ip+pid+random+autoincrement
>* [code](https://github.com/beaconzhang/iris_demo/blob/master/middleware/request_id.go){:target="_blank"} 
