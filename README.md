# Second Hand Market

## 需求分析
  校园二手买卖交易平台系统，线上选购，卖家和买家交流，双方约见，完成交易后评分。该系统集成信用系统来让买家卖家作征信甄别，互动聊天加深物品的认知，砍价等环节。最后通过双方约见达成交易，最后可互相评分，来对用户的信用进行征信帮助用户选出优质买家，卖家。

## 服务器要求
* php 7.1.* 
* mysql 5.6.* 
* ngnix 1.4.*

## 前后台技术选择

* 前端：vue+axio+vue-resource echartjs 
* 前端UI: 桌面端elementUI， 移动端mintUI
* 后端：laravel或lumen

## 目录结构

├── code 代码
├── db 数据库历史版本
├── docs 文档
└── README.md

## 项目部署

1. git clone https://github.com/locqj/second-hand-market.git
2. cd code
3. chmod -R 775 storage/ bootstrap/
4. cp .env.example .env
5. composer install
6. php artisan key:generate 生成laravel key
7. npm（cnpm， yarm） install
8. chmod -R 755 stroage bootstrap
9. cd ../db mysql -u xxx -p dbname < xxx.sql
10. php artisan storage:link
11. php artisan serve


