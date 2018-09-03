prompt PL/SQL Developer Export Tables for user SSM@ORCL
prompt Created by 泊松 on 2018年9月3日
set feedback off
set define off

prompt Disabling triggers for MEMBER...
alter table MEMBER disable all triggers;
prompt Disabling triggers for PRODUCT...
alter table PRODUCT disable all triggers;
prompt Disabling triggers for ORDERS...
alter table ORDERS disable all triggers;
prompt Disabling triggers for TRAVELLER...
alter table TRAVELLER disable all triggers;
prompt Disabling triggers for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER disable all triggers;
prompt Disabling triggers for PERMISSION...
alter table PERMISSION disable all triggers;
prompt Disabling triggers for ROLE...
alter table ROLE disable all triggers;
prompt Disabling triggers for ROLE_PERMISSION...
alter table ROLE_PERMISSION disable all triggers;
prompt Disabling triggers for SYSLOG...
alter table SYSLOG disable all triggers;
prompt Disabling triggers for USERS...
alter table USERS disable all triggers;
prompt Disabling triggers for USERS_ROLE...
alter table USERS_ROLE disable all triggers;
prompt Disabling foreign key constraints for ORDERS...
alter table ORDERS disable constraint SYS_C005435;
alter table ORDERS disable constraint SYS_C005436;
prompt Disabling foreign key constraints for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER disable constraint SYS_C005438;
alter table ORDER_TRAVELLER disable constraint SYS_C005439;
prompt Disabling foreign key constraints for ROLE_PERMISSION...
alter table ROLE_PERMISSION disable constraint SYS_C005449;
alter table ROLE_PERMISSION disable constraint SYS_C005450;
prompt Disabling foreign key constraints for USERS_ROLE...
alter table USERS_ROLE disable constraint SYS_C005445;
alter table USERS_ROLE disable constraint SYS_C005446;
prompt Deleting USERS_ROLE...
delete from USERS_ROLE;
commit;
prompt Deleting USERS...
delete from USERS;
commit;
prompt Deleting SYSLOG...
delete from SYSLOG;
commit;
prompt Deleting ROLE_PERMISSION...
delete from ROLE_PERMISSION;
commit;
prompt Deleting ROLE...
delete from ROLE;
commit;
prompt Deleting PERMISSION...
delete from PERMISSION;
commit;
prompt Deleting ORDER_TRAVELLER...
delete from ORDER_TRAVELLER;
commit;
prompt Deleting TRAVELLER...
delete from TRAVELLER;
commit;
prompt Deleting ORDERS...
delete from ORDERS;
commit;
prompt Deleting PRODUCT...
delete from PRODUCT;
commit;
prompt Deleting MEMBER...
delete from MEMBER;
commit;
prompt Loading MEMBER...
insert into MEMBER (id, name, nickname, phonenum, email)
values ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');
commit;
prompt 1 records loaded
prompt Loading PRODUCT...
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('676C5BD1D35E429A8C2E114939C5685A', 'itcast-002', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'itcast-003', '上海五日游', '上海', to_timestamp('25-04-2018 14:30:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1800, '魔都我来了', 0);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('9F71F01CB448476DAFB309AA6DF9497F', 'itcast-001', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('14067A8820F644448AAD7581186C7D4A', 'itcast-005', '西雅图', '北京', to_timestamp('30-08-2018 20:45:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 4500, '冲冲冲', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('FD98610B9B3E4339BDFECB3686D9548D', 'itcast-004', '香港', '上海', to_timestamp('31-08-2018 09:45:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2333, 'hhh', 0);
commit;
prompt 5 records loaded
prompt Loading ORDERS...
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '12345', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '54321', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('2FF351C4AC744E2092DCF08CFD314420', '67890', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('E4DD4C45EED84870ABA83574A801083E', '11111', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('55F9AF582D5A4DB28FB4EC3199385762', '33333', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('3081770BC3984EF092D9E99760FDABDE', '55555', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
commit;
prompt 9 records loaded
prompt Loading TRAVELLER...
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', 0, '987654321123456789', 1);
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', 0, '123456789009876543', 0);
commit;
prompt 2 records loaded
prompt Loading ORDER_TRAVELLER...
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');
commit;
prompt 9 records loaded
prompt Loading PERMISSION...
insert into PERMISSION (id, permissionname, url)
values ('2900CD535D5C4B9F8A987EA5FFEDE99E', 'role findAll', '/role/findAll.do');
insert into PERMISSION (id, permissionname, url)
values ('47ED56D0ADC24EE4AE6DAFB0609CB47D', 'user findAll', '/user/findAll.do');
insert into PERMISSION (id, permissionname, url)
values ('685A4AA380734E1CB8768A9D6EBD89CC', 'user findById', '/user/findById.do');
commit;
prompt 3 records loaded
prompt Loading ROLE...
insert into ROLE (id, rolename, roledesc)
values ('CB5FB85B7A8148909D51FA1B39ECAC59', 'TEST', '测试');
insert into ROLE (id, rolename, roledesc)
values ('1001', 'ADMIN', 'VIP');
insert into ROLE (id, rolename, roledesc)
values ('1002', 'USER', 'VIP');
commit;
prompt 3 records loaded
prompt Loading ROLE_PERMISSION...
insert into ROLE_PERMISSION (permissionid, roleid)
values ('2900CD535D5C4B9F8A987EA5FFEDE99E', '1002');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('2900CD535D5C4B9F8A987EA5FFEDE99E', 'CB5FB85B7A8148909D51FA1B39ECAC59');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('47ED56D0ADC24EE4AE6DAFB0609CB47D', '1001');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('47ED56D0ADC24EE4AE6DAFB0609CB47D', 'CB5FB85B7A8148909D51FA1B39ECAC59');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('685A4AA380734E1CB8768A9D6EBD89CC', '1001');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('685A4AA380734E1CB8768A9D6EBD89CC', '1002');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('685A4AA380734E1CB8768A9D6EBD89CC', 'CB5FB85B7A8148909D51FA1B39ECAC59');
commit;
prompt 7 records loaded
prompt Loading SYSLOG...
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7B64CD68F31143A1AE291EC952F4B0E1', to_timestamp('02-09-2018 16:28:53.426000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/role/findAll.do', 36, '[类名]cn.hjl.ssm.controller.RoleController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0CDE7756943B461C86CBA01375181669', to_timestamp('02-09-2018 16:28:56.797000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 69, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('650EAC7207AE498281719B86E575F5DD', to_timestamp('02-09-2018 16:30:51.345000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 31, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('BC30EC2D24C3451B9EA97685AFBA5172', to_timestamp('02-09-2018 16:30:57.920000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/role/findAll.do', 26, '[类名]cn.hjl.ssm.controller.RoleController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AF7D83118C244AB7BC57776314B43B9E', to_timestamp('02-09-2018 16:31:01.666000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名]cn.hjl.ssm.controller.RoleController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CEB72E3BCBC844D7A4340C087239F47D', to_timestamp('02-09-2018 16:32:09.693000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 9, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E789E57949614336B67ECF64C34E46D2', to_timestamp('02-09-2018 16:34:34.568000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 40, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4D2C53326E1E494AB89884D9CDFE15FB', to_timestamp('02-09-2018 16:36:52.677000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 30, '[类名]cn.hjl.ssm.controller.PermissionController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B467594FC4DA422A9F7A0896521D2B07', to_timestamp('02-09-2018 16:36:56.228000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 23, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0E85D3DF913B41BC89CC9140B168638B', to_timestamp('02-09-2018 16:37:10.906000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CCE4400C6E6E4A548391444603C96987', to_timestamp('02-09-2018 16:37:22.237000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('38281378F17B497FAFDF2EF4E061DE51', to_timestamp('02-09-2018 16:15:57.971000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/product/findAll.do', 32, '[类名]cn.hjl.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0CF86F197D2F4898ADE7A097A6D1124F', to_timestamp('02-09-2018 16:17:28.691000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'hancock', '0:0:0:0:0:0:0:1', '/product/findAll.do', 8, '[类名]cn.hjl.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('88DFB77973474526842B7FE164A34EE8', to_timestamp('02-09-2018 17:10:15.669000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 30, '[类名]cn.hjl.ssm.controller.PermissionController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6937B1FE01374F8A96AA69DC7B2A0EE7', to_timestamp('02-09-2018 17:10:18.769000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/user/findAll.do', 19, '[类名]cn.hjl.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('404DC5688B9D427592E2DB220F9DF5A4', to_timestamp('02-09-2018 17:10:21.541000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 70, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2CF8F13134A446648437B8638ECDD6B6', to_timestamp('02-09-2018 17:12:21.295000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/user/findAll.do', 9, '[类名]cn.hjl.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7BD28CB3DEC2411F80246ABE398553FD', to_timestamp('02-09-2018 17:12:22.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/user/findAll.do', 8, '[类名]cn.hjl.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C513B201193F4DC19A3B4EBA910A64F9', to_timestamp('02-09-2018 17:12:26.704000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 13, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B6C992B99DCA423F9D677F9F3BAFCC9A', to_timestamp('02-09-2018 17:12:30.198000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 18, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C5BB94359C1843CCAF2B21D35D89008E', to_timestamp('02-09-2018 17:12:32.806000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('2A13E63807A349D3BF9B5F20CE4CBAF9', to_timestamp('02-09-2018 17:12:34.402000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('92359E36417D41FBADA2C76B04754805', to_timestamp('02-09-2018 17:12:36.068000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A3DBB287990B46FA8FA4F287BF2A07A8', to_timestamp('02-09-2018 17:12:36.951000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('17B56C3D7A8748EBA233D4C0CEAA9DC8', to_timestamp('02-09-2018 17:12:38.874000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9D5801B639A74F5289CFBE6ED1E96FFB', to_timestamp('02-09-2018 17:12:40.392000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('013DB804136E4ADABBA3AEE5081B8655', to_timestamp('02-09-2018 17:12:42.931000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E99D2FA804AF4750B4AC8B6C4A1A4CC4', to_timestamp('02-09-2018 17:12:44.066000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8A5328874208410C99DFB0D670FEA08C', to_timestamp('02-09-2018 17:12:45.067000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CBE3CEFD7900422FAA68241AF9B232E0', to_timestamp('02-09-2018 17:12:45.897000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('11BD57D98E8E48A1BDB2012DE43363BD', to_timestamp('02-09-2018 17:12:47.754000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8B7E653C080F422C8DE7AB34BF9B6813', to_timestamp('02-09-2018 17:12:49.264000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D133BAFA327D4AEFAB933EF535AD4E70', to_timestamp('02-09-2018 17:12:53.275000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A26C8DF6E5104B58B796D94737AE85F8', to_timestamp('02-09-2018 17:12:56.380000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D854AF2C04994E3095F2B5C833CD9A3A', to_timestamp('02-09-2018 17:12:58.224000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 10, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F9964DB7C677492CBCD9190660E1F7F9', to_timestamp('02-09-2018 17:12:59.113000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6A74B2BC834D4BE4BF755EFB740B4745', to_timestamp('02-09-2018 17:12:59.840000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('859619006F4641D0A3DE84C15431123E', to_timestamp('02-09-2018 17:13:00.985000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('519E0A8D65264E99A34791E7BF8528CA', to_timestamp('02-09-2018 17:13:02.522000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('15555F4E237C4203B65B8ABDBC4746C9', to_timestamp('02-09-2018 17:13:03.649000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('BBE3F8E7332E487096A48DB9E3FCA6C9', to_timestamp('02-09-2018 17:13:04.831000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('78CBA8889F4741F4A2B1447E071141C4', to_timestamp('02-09-2018 17:13:05.785000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('239F51993EA04252882CA1D894CEC6CB', to_timestamp('02-09-2018 17:13:07.602000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 5, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('30524CF4E5E14715BCAB689E80C186BD', to_timestamp('02-09-2018 17:13:09.126000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 41, '[类名]cn.hjl.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9EA1DF0443654071998194E38CA499C9', to_timestamp('02-09-2018 17:14:00.633000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 6, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FAA61209BAD04D3082BA45CE0493F719', to_timestamp('02-09-2018 17:14:02.283000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 9, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('01C44F161DD64552AAD763E8A9158A55', to_timestamp('02-09-2018 17:14:04.296000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 10, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E23C810F32C94BAAA5FCAFCAEB617D90', to_timestamp('02-09-2018 17:14:08.122000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 7, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8F12749DE8E7474E8C583DA4F3B4F4BB', to_timestamp('02-09-2018 17:14:10.690000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('197B3D63BAF149C0A0B3C3317330127E', to_timestamp('02-09-2018 17:14:12.898000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F963DB9470E9492DB071607986987D27', to_timestamp('02-09-2018 17:14:15.119000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'Mr.Han', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名]cn.hjl.ssm.controller.SysLogController[方法名]findAll');
commit;
prompt 51 records loaded
prompt Loading USERS...
insert into USERS (id, email, username, password, phonenum, status)
values ('48D470C56C6140A9B3BC6748EA03C8DC', 'eeee@163.com', 'mimi', '$2a$10$TZdH90P/jORtVtCmNWgo8O1B2gle0G2ZJNkMlUzICyerLXbLybmuq', '16054182999', 0);
insert into USERS (id, email, username, password, phonenum, status)
values ('26012149D8404777BC68B9221418AFF4', 'hing@163.com', 'xixi', '$2a$10$A7FFEl88EeJgtK/CtSqrYOIZ7pMFPhnPrv6HjJ4BsLMAFq7WCDcUu', '15054192906', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('2B905397A654488792FB60287C46E711', 'hjl1998a@163.com', 'Mr.Han', '$2a$10$XEUo2.HGEaM6i.qHKIbL/O9bkc0qwAFmCfm8IXn5nV1yYDr1r/GeW', '15054192909', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('9DD3805B649448079D6132BF707C5FDE', 'ddddd@ddd.com', 'aaaaaaaa', '$2a$10$XEUo2.HGEaM6i.qHKIbL/O9bkc0qwAFmCfm8IXn5nV1yYDr1r/GeW', '16054182999', 0);
insert into USERS (id, email, username, password, phonenum, status)
values ('111-222', 'hancock@gmail.com', 'hancock', '$2a$10$XEUo2.HGEaM6i.qHKIbL/O9bkc0qwAFmCfm8IXn5nV1yYDr1r/GeW', '137929256777', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('111-225', 'giraffe@gmail.com', 'giraffe', '$2a$10$XEUo2.HGEaM6i.qHKIbL/O9bkc0qwAFmCfm8IXn5nV1yYDr1r/GeW', '15054182906', 1);
commit;
prompt 6 records loaded
prompt Loading USERS_ROLE...
insert into USERS_ROLE (userid, roleid)
values ('111-222', '1001');
insert into USERS_ROLE (userid, roleid)
values ('111-222', '1002');
insert into USERS_ROLE (userid, roleid)
values ('111-222', 'CB5FB85B7A8148909D51FA1B39ECAC59');
insert into USERS_ROLE (userid, roleid)
values ('111-225', '1001');
insert into USERS_ROLE (userid, roleid)
values ('111-225', '1002');
insert into USERS_ROLE (userid, roleid)
values ('2B905397A654488792FB60287C46E711', '1001');
insert into USERS_ROLE (userid, roleid)
values ('2B905397A654488792FB60287C46E711', 'CB5FB85B7A8148909D51FA1B39ECAC59');
commit;
prompt 7 records loaded
prompt Enabling foreign key constraints for ORDERS...
alter table ORDERS enable constraint SYS_C005435;
alter table ORDERS enable constraint SYS_C005436;
prompt Enabling foreign key constraints for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER enable constraint SYS_C005438;
alter table ORDER_TRAVELLER enable constraint SYS_C005439;
prompt Enabling foreign key constraints for ROLE_PERMISSION...
alter table ROLE_PERMISSION enable constraint SYS_C005449;
alter table ROLE_PERMISSION enable constraint SYS_C005450;
prompt Enabling foreign key constraints for USERS_ROLE...
alter table USERS_ROLE enable constraint SYS_C005445;
alter table USERS_ROLE enable constraint SYS_C005446;
prompt Enabling triggers for MEMBER...
alter table MEMBER enable all triggers;
prompt Enabling triggers for PRODUCT...
alter table PRODUCT enable all triggers;
prompt Enabling triggers for ORDERS...
alter table ORDERS enable all triggers;
prompt Enabling triggers for TRAVELLER...
alter table TRAVELLER enable all triggers;
prompt Enabling triggers for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER enable all triggers;
prompt Enabling triggers for PERMISSION...
alter table PERMISSION enable all triggers;
prompt Enabling triggers for ROLE...
alter table ROLE enable all triggers;
prompt Enabling triggers for ROLE_PERMISSION...
alter table ROLE_PERMISSION enable all triggers;
prompt Enabling triggers for SYSLOG...
alter table SYSLOG enable all triggers;
prompt Enabling triggers for USERS...
alter table USERS enable all triggers;
prompt Enabling triggers for USERS_ROLE...
alter table USERS_ROLE enable all triggers;

set feedback on
set define on
prompt Done
