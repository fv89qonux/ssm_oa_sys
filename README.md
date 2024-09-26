## 本项目实现的最终作用是基于SSM公司企业OA管理系统
## 分为1个角色
### 第1个角色为员工角色，实现了如下功能：
 - 任务查询
 - 发送邮件
 - 员工注册
 - 员工登录
 - 员工首页
 - 查找员工
 - 邮件管理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssm_oa_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [announcement](#announcement) |  |
| [attendance](#attendance) |  |
| [employee](#employee) |  |
| [mail](#mail) |  |
| [mission](#mission) |  |
| [sys_department](#sys_department) |  |
| [sys_employee_position](#sys_employee_position) |  |
| [sys_permission](#sys_permission) |  |
| [sys_position](#sys_position) |  |
| [sys_position_permission](#sys_position_permission) |  |

**表名：** <a id="announcement">announcement</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增ID  |
|  2   | auther_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  3   | title |   varchar   | 255 |   0    |    N     |  N   |       | 标题  |
|  4   | text |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pic |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 图片  |
|  6   | target_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  7   | time |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="attendance">attendance</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | employee_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  3   | date |   date   | 10 |   0    |    N     |  N   |       | 日期  |
|  4   | on_time |   timestamp   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  5   | off_time |   timestamp   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  6   | state |   int   | 10 |   0    |    Y     |  N   |   NULL    | 0正常1加班2迟到早退  |

**表名：** <a id="employee">employee</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增ID  |
|  2   | name |   varchar   | 255 |   0    |    N     |  N   |       | 名字  |
|  3   | sex |   int   | 10 |   0    |    N     |  N   |       | 性别  |
|  4   | pic |   varchar   | 64 |   0    |    Y     |  N   |   NULL    | 照片  |
|  5   | department_id |   int   | 10 |   0    |    N     |  N   |       | 部门ID  |
|  6   | position_id |   int   | 10 |   0    |    Y     |  N   |   0    |   |
|  7   | userName |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  8   | password |   varchar   | 255 |   0    |    N     |  N   |       | 密码  |
|  9   | salt |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 盐值  |
|  10   | working_state |   int   | 10 |   0    |    Y     |  N   |   0    | 状态:在线/离线  |
|  11   | locked |   int   | 10 |   0    |    Y     |  N   |   0    |   |

**表名：** <a id="mail">mail</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增ID  |
|  2   | sendtime |   timestamp   | 19 |   0    |    N     |  N   |   '2024-01-1020:10:10'    |   |
|  3   | server_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  4   | reciever_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  5   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | text |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  7   | pic |   varchar   | 64 |   0    |    Y     |  N   |   NULL    | 照片  |
|  8   | read |   int   | 10 |   0    |    Y     |  N   |   0    |   |

**表名：** <a id="mission">mission</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增ID  |
|  2   | auther_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  3   | title |   varchar   | 255 |   0    |    N     |  N   |       | 标题  |
|  4   | text |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pic |   varchar   | 64 |   0    |    Y     |  N   |   NULL    | 照片  |
|  6   | target_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  7   | progress |   int   | 10 |   0    |    Y     |  N   |   0    | 进度满是10  |
|  8   | comment |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 员工id:#评论文本:&员工id:#评论文本:&  |
|  9   | time |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="sys_department">sys_department</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | department_id |   int   | 10 |   0    |    N     |  Y   |       | 部门ID  |
|  2   | department_name |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  3   | available |   int   | 10 |   0    |    Y     |  N   |   1    |   |

**表名：** <a id="sys_employee_position">sys_employee_position</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增ID  |
|  2   | employee_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  3   | position_id |   int   | 10 |   0    |    Y     |  N   |   0    |   |

**表名：** <a id="sys_permission">sys_permission</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       | 主键  |
|  2   | name |   varchar   | 255 |   0    |    N     |  N   |       | 资源名称  |
|  3   | type |   varchar   | 255 |   0    |    N     |  N   |       | 资源类型：menu,button,  |
|  4   | url |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 访问url地址  |
|  5   | percode |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 权限代码字符串  |
|  6   | parentid |   bigint   | 20 |   0    |    Y     |  N   |   NULL    | 父结点id  |
|  7   | parentids |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 父结点id列表串  |
|  8   | sortstring |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 排序号  |
|  9   | available |   char   | 1 |   0    |    Y     |  N   |   NULL    | 是否可用,1：可用，0不可用  |

**表名：** <a id="sys_position">sys_position</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | position_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | position_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | available |   int   | 10 |   0    |    Y     |  N   |   1    |   |

**表名：** <a id="sys_position_permission">sys_position_permission</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增ID  |
|  2   | posision_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  3   | permission_id |   int   | 10 |   0    |    N     |  N   |       |   |

