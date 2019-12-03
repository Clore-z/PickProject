/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/11/27 14:57:21                          */
/*==============================================================*/


drop table if exists afterSales;

drop table if exists collection;

drop table if exists evaluation;

drop table if exists goods;

drop table if exists merchants;

drop table if exists orders;

drop table if exists punishment;

drop table if exists report;

drop table if exists shoppingcart;

drop table if exists users;

/*==============================================================*/
/* Table: afterSales                                            */
/*==============================================================*/
create table afterSales
(
   Asid                 varchar(28) not null,
   Astype               int not null,
   Asinfo               varchar(200) not null,
   Asstate              int not null,
   Asresults            varchar(200) not null,
   primary key (Asid)
);

/*==============================================================*/
/* Table: collection                                            */
/*==============================================================*/
create table collection
(
   Cid                  varchar(28) not null,
   Gid                  varchar(28) not null,
   Uid                  varchar(28) not null,
   primary key (Cid)
);

/*==============================================================*/
/* Table: evaluation                                            */
/*==============================================================*/
create table evaluation
(
   Eid                  varchar(28) not null,
   Gid                  varchar(28) not null,
   Uid                  varchar(28) not null,
   Einfo                varchar(200) not null,
   Estar                int not null,
   Etime                date not null,
   primary key (Eid)
);

/*==============================================================*/
/* Table: goods                                                 */
/*==============================================================*/
create table goods
(
   Gid                  varchar(28) not null,
   Goodsname            varchar(100) not null,
   Type                 int not null,
   Gpicture             varchar(100) not null,
   Price                float not null,
   Specifications       varchar(40) not null,
   Info                 varchar(2000) not null,
   Mid                  varchar(28) not null,
   Dstate               int not null,
   Dprice               float,
   Dstime               date,
   Detime               date,
   primary key (Gid)
);

/*==============================================================*/
/* Table: merchants                                             */
/*==============================================================*/
create table merchants
(
   Mid                  varchar(28) not null,
   Mname                varchar(20) not null,
   Level                int not null,
   Phonenumber          varchar(11) not null,
   Address              varchar(100) not null,
   Qnumber              varchar(20) not null,
   State                int not null,
   primary key (Mid)
);

/*==============================================================*/
/* Table: orders                                                */
/*==============================================================*/
create table orders
(
   id_goods_list        varchar(28) not null,
   id_user              varchar(28) not null,
   Orderstate           int not null,
   Oid                  varchar(28) not null,
   Createtime           date not null,
   amount               float not null,
   Number               int not null,
   primary key (Oid)
);

/*==============================================================*/
/* Table: punishment                                            */
/*==============================================================*/
create table punishment
(
   Pid                  varchar(28) not null,
   Uid                  varchar(28) not null,
   Idtype               int not null,
   StartT               date not null,
   EndT                 date not null,
   Pinfo                varchar(200) not null,
   primary key (Pid)
);

/*==============================================================*/
/* Table: report                                                */
/*==============================================================*/
create table report
(
   Rid                  varchar(28) not null,
   Gid                  varchar(28) not null,
   Uid                  varchar(28) not null,
   Rinfo                varchar(200) not null,
   Rstate               int not null,
   Rresults             varchar(200) not null,
   primary key (Rid)
);

/*==============================================================*/
/* Table: shoppingcart                                          */
/*==============================================================*/
create table shoppingcart
(
   id_goods             varchar(28) not null,
   id_user              varchar(28) not null,
   Number               int not null,
   primary key (id_user)
);

/*==============================================================*/
/* Table: users                                                 */
/*==============================================================*/
create table users
(
   Uid                  varchar(28) not null,
   Username             varchar(20) not null,
   Password             varchar(20) not null,
   Nikname              varchar(40) not null,
   Headportrait         varchar(100) not null,
   Sex                  int not null,
   birthday             int not null,
   email                varchar(40) not null,
   Phonenumber          varchar(11) not null,
   Shippingaddress      varchar(200) not null,
   Paypassword          varchar(6) not null,
   State                int not null,
   primary key (Uid)
);

