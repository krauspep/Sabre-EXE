[LanguageOptions]
FontName=宋体
FontSize=10
FontCharSet=1

[System]
Application.Title=指纹考勤管理系统
DataComm.Title=考勤机管理

[FrmMain]
Frmmain.Caption=指纹考勤管理系统

S_User.Caption=员工维护
S_Class.Caption=班次设定
S_UClass.Caption=员工排班
S_Record.Caption=出勤记录
S_Report.Caption=统计报表
S_NoIn.Caption=忘记考勤
S_Free.Caption=员工请假
S_ClearData.Caption=清除数据
S_ShrinkData.Caption=压缩数据库
S_Close.Caption=退出系统

S1.Caption=系统(&S)
C1.Caption=参数设定(&C)
G1.Caption=管理员设置(&O)
B1.Caption=管理员设置密码(&P)
L2.Caption=记录修改日志(&M)
N11.Caption=管理员操作日志(&Z)
L1.Caption=设置数据库连接(&L)
X1.Caption=退出系统

R3.Caption=人事管理(&R)
M1.Caption=部门管理
G2.Caption=员工维护

C2.Caption=考勤管理(&C)
R1.Caption=节假日设定(&H)
B2.Caption=班次设定
P1.Caption=员工排班
R2.Caption=出勤记录(&R)
K1.Caption=考勤统计报表

N3.Caption=异常处理(&Y)
Q1.Caption=员工公出/请假
W1.Caption=忘记签到/签退处理
T1.Caption=集体签到/签退处理(&T)
J1.Caption=集体迟到/早退处理(&J)

D1.Caption=门禁管理(&D)
C4.Caption=门禁控制设定(&C)
L3.Caption=查看出门记录(&L)

W2.Caption=数据维护(&W)
M2.Caption=导入人员名单
I1.Caption=导入出勤记录
C3.Caption=清除过期数据(&C)
Y1.Caption=压缩和修复数据库(&Y)
B3.Caption=备份数据库(&B)
X2.Caption=初始化系统(&X)

O1.Caption=外接程序(&O)
S2.Caption=外接程序管理(&S)
L4.Caption=连接考勤机(&L)

N5.Caption=帮助(&H)
Z1.Caption=软件注册(&Z)
H1.Caption=帮助文档
A1.Caption=关于(&A)...

SB_.Panels[2].Text=  ★ 指纹考勤管理系统V3.2 ★
SB_.Panels[3].Text=  在线技术支持


[FrmLogin]
FrmLogin.Caption=系统登录...

M_Name.Caption=管理员姓名:
M_Password.Caption=管理员密码:
Sp_OK.Caption=确定(&O)
SP_Exit.Caption=取消(&X)

[FrmDept]
FrmDept.Caption=部门管理

L_DeptList.Caption=部门列表：
L_SelDept.Caption=当前选择的部门名称：
L_NewDept.Caption=输入新的部门名称：
L_Hint.Caption=增加时，新的部门名称不\r\n能与已有的部门名称重复；\r\n\r\n删除部门时，被删除部门\r\n下的员工将自动被调入到\r\n总公司。

T_Insert.Caption=增加(&A)
T_Del.Caption=删除(&D)
T_Edit.Caption=修改(&E)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&C)

[FrmUser]
FrmUser.Caption=员工维护

L_Search.Caption=输入员工信息进行模糊查询
T_Insert.Caption=增加(&A)
T_Del.Caption=删除(&D)
T_Edit.Caption=修改(&E)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&C)
T_Move.Caption=调动(&T)
T_In.Caption=导入(&I)

U_Sel.Hint=在此输入编号，姓名，电话或职务进行查找
T_Sel.Hint=开始查找
DB_UserColumn1.Caption=编号
DB_UserColumn2.Caption=姓名
DB_UserColumn3.Caption=部门
DB_UserColumn4.Caption=职务
DB_UserColumn5.Caption=聘用日期
DB_UserColumn6.Caption=联系电话
DB_UserColumn7.Caption=联系地址
DB_UserColumn8.Caption=性别
DB_UserColumn9.Caption=民族
DB_UserColumn10.Caption=籍贯

Label1.Caption=编号:
Label2.Caption=姓名:
Label3.Caption=身份证号:
Label4.Caption=性别:
Label5.Caption=民族:
Label6.Caption=出生日期:
Label7.Caption=学历:
Label8.Caption=专业:
Label9.Caption=工作职务:
Label10.Caption=联系电话:
Label11.Caption=手机:
Label12.Caption=聘用日期:
Label13.Caption=籍贯:
Label14.Caption=政治面貌:
Label15.Caption=联系地址:

L_xb.Items.Text=男\r\n女
L_zzmm.Items.Text=团员\r\n党员

Tabsheet1.Caption=员工信息
Tabsheet2.Caption=指纹登记
G_AttSet.Caption=考勤设置
L_kq.Caption=计算考勤
L_jb.Caption=计算加班
L_jjr.Caption=节假日有效

Sb_.Panels[0].Text=查询员工数:

N1.Caption=导出数据
N2.Caption=显示全部数据列
N3.Caption=数据列
N4.Caption=编号
N5.Caption=姓名
N6.Caption=部门名称
N7.Caption=职务
N8.Caption=聘用日期
N9.Caption=联系电话
N10.Caption=联系地址
N11.Caption=性别
N12.Caption=民族
N13.Caption=籍贯

Info1.Caption=指纹仪连接正常！
Info2.Caption=指纹仪未连接！
Info3.Caption=请按手指...
Sp_Enroll.Caption=登记指纹(&D)
Sp_Compare.Caption=比对指纹(&B)
Rb_1.Caption=第一枚指纹
Rb_2.Caption=第二枚指纹

Msg1=登记成功！
Msg2=登记失败！
Msg3=读取特征数据失败！
Msg4=成功！比对分数：
Msg5=失败！比对分数：

[FrmHoliday]
FrmHoliday.Caption=节假日设定

T_Insert.Caption=增加(&A)
T_Del.Caption=删除(&D)
T_Edit.Caption=修改(&E)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&C)

Label1.Caption=名称:
Label2.Caption=起始日期:
Label3.Caption=天数:

DB_HolidayColumn1.Caption=节日名称
DB_HolidayColumn2.Caption=起始日期
DB_HolidayColumn3.Caption=放假天数

[FrmClass]
FrmClass.Caption=班次设定

Tabsheet1.Caption=时间段维护
Tabsheet2.Caption=班次维护

T_Insert.Caption=增加(&A)
T_Del.Caption=删除(&D)
T_Edit.Caption=修改(&E)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&C)

DB_TimeColumn1.Caption=时间段名称
DB_TimeColumn2.Caption=上班时间
DB_TimeColumn3.Caption=下班时间

Label1.Caption=时间段名称:
Label2.Caption=上班时间:
Label3.Caption=下班时间:
Label4.Caption=开始签到时间:
Label5.Caption=结束签到时间:
Label6.Caption=开始签退时间:
Label7.Caption=结束签退时间:
Label8.Caption=记迟到时间:
Label9.Caption=分钟
Label10.Caption=记早退时间:
Label11.Caption=分钟
Label12.Caption=记多少工作日:
Label13.Caption=记多少工作时长:
Label14.Caption=分钟

B_qd.Caption=必须签到
B_qt.Caption=必须签退

T_Insert2.Caption=增加(&A)
T_Del2.Caption=删除(&D)
T_Edit2.Caption=修改(&E)
T_Save2.Caption=保存(&S)
T_Cancel2.Caption=取消(&C)

DB_ClassColumn1.Caption=班次名称

Label15.Caption=班次名称:
Label16.Caption=周期数:
Label17.Caption=周期单位:
B_dw.Items.Text=天\r\n周\r\n月

B_Add.Caption=增加时间段
B_Del.Caption=删除时间段
B_Clear.Caption=清除时间段

[FrmClassTime]
FrmClassTime.Caption=增加班次时间段

Label1.Caption=选择要增加的时间段：
Label2.Caption=选择要增加该时间段的日期：

DB_TimeColumn1.Caption=时间段名称
DB_TimeColumn2.Caption=上班时间
DB_TimeColumn3.Caption=下班时间
DB_TimeColumn4.Caption=工作时长

C_SelAll.Caption=全选

S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmUclass]
FrmUclass.Caption=员工排班

Label1.Caption=输入员工信息进行模糊查询
Label2.Caption=从
Label3.Caption=到
GroupBox1.Caption=选择日期范围,查看员工排班情况或进行临时排班

DB_UserColumn1.Caption=编号
DB_UserColumn2.Caption=姓名
DB_UserColumn3.Caption=部门名称
DB_UserColumn4.Caption=班次

T_All.Caption=全选(&A)
T_None.Caption=取消(&X)
T_Arrange.Caption=排班(&P)
T_Shift.Caption=班次(&B)

T_Delete.Caption=撤消临时班(&G)
T_Set.Caption=临时排班(&L)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&Q)
T_Add.Caption=增加(&I)
T_Del.Caption=删除(&D)
T_Clear.Caption=清除(&C)
U_Sel.Hint=在此输入编号，姓名，电话或职务进行查找
T_Sel.Hint=开始查找
T_Delete.Hint=删除该时间范围内的临时排班
T_Set.Hint=员工临时排班
T_Save.Hint=保存临时排班
T_Cancel.Hint=取消临时排班
T_Add.Hint=增加时段
T_Del.Hint=删除所选的临时排班
T_Clear.Hint=清除所有时段

[FrmRecord]
FrmRecord.Caption=出勤记录查询

Label1.Caption=工作部门
Label2.Caption=员工编号
Label3.Caption=从
Label4.Caption=到
GroupBox1.Caption=起止时间

S_Search.Caption=开始查找
S_Report.Caption=报表预览
S_Export.Caption=数据导出
S_Log.Caption=修改日志

DB_RecordColumn1.Caption=部门
DB_RecordColumn2.Caption=员工编号
DB_RecordColumn3.Caption=姓名
DB_RecordColumn4.Caption=考勤时间
DB_RecordColumn5.Caption=状态
DB_RecordColumn6.Caption=机器号

N7.Caption=显示全部数据列
N1.Caption=数据列
N2.Caption=部门
N3.Caption=员工编号
N4.Caption=姓名
N5.Caption=日期时间
N6.Caption=状态
N10.Caption=机器号

SB_.Panels[0].Text=符合条件的记录数:

[FrmCheck]
FrmCheck.Caption=考勤统计报表


Label1.Caption=工作部门:
Label2.Caption=员工编号:
Label3.Caption=从
Label4.Caption=到
GroupBox1.Caption=起止时间

S_Count.Caption=查找计算
S_Report.Caption=报表预览
S_Export.Caption=数据导出
S_Exception.Caption=异常处理

TabSheet1.Caption=考勤记录异常情况
TabSheet2.Caption=班次异常情况
TabSheet3.Caption=其它异常情况
TabSheet4.Caption=考勤统计

DB_RecColumn1.Caption=部门
DB_RecColumn2.Caption=编号
DB_RecColumn3.Caption=姓名
DB_RecColumn4.Caption=考勤时间
DB_RecColumn5.Caption=状态
DB_RecColumn6.Caption=处理方法
DB_RecColumn7.Caption=错误描述
DB_RecColumn8.Caption=对应时段

DB_ClassColumn1.Caption=部门
DB_ClassColumn2.Caption=姓名
DB_ClassColumn3.Caption=员工编号
DB_ClassColumn4.Caption=日期
DB_ClassColumn5.Caption=对应时段
DB_ClassColumn6.Caption=应上班时间
DB_ClassColumn7.Caption=应下班时间
DB_ClassColumn8.Caption=签到时间
DB_ClassColumn9.Caption=签退时间
DB_ClassColumn10.Caption=迟到时间
DB_ClassColumn11.Caption=早退时间
DB_ClassColumn12.Caption=加班时间
DB_ClassColumn14.Caption=未签到
DB_ClassColumn15.Caption=未签退
DB_ClassColumn16.Caption=旷工
DB_ClassColumn17.Caption=例外情况
DB_ClassColumn18.Caption=应签到
DB_ClassColumn19.Caption=应签退
DB_ClassColumn20.Caption=排定工作日
DB_ClassColumn21.Caption=排定时长

DB_abnorColumn1.Caption=部门
DB_abnorColumn2.Caption=姓名
DB_abnorColumn3.Caption=员工编号
DB_abnorColumn4.Caption=开始时间
DB_abnorColumn5.Caption=结束时间
DB_abnorColumn6.Caption=异常情况
DB_abnorColumn7.Caption=时长
DB_abnorColumn8.Caption=排定工作日

DB_CountColumn1.Caption=部门
DB_CountColumn2.Caption=姓名
DB_CountColumn3.Caption=员工编号
DB_CountColumn4.Caption=应到
DB_CountColumn5.Caption=实到
DB_CountColumn6.Caption=迟到
DB_CountColumn7.Caption=早退
DB_CountColumn8.Caption=旷工
DB_CountColumn9.Caption=加班
DB_CountColumn16.Caption=自由加班
DB_CountColumn10.Caption=未签到
DB_CountColumn11.Caption=未签退
DB_CountColumn12.Caption=外出
DB_CountColumn13.Caption=公出
DB_CountColumn14.Caption=请假
DB_CountColumn15.Caption=工作时间

\\PopupMenu1
N31.Caption=导出数据
N30.Caption=生成当前数据报表
N26.Caption=修改考勤状态为
N11.Caption=上班签到
N18.Caption=下班签退
N19.Caption=加班到
N20.Caption=加班退
N21.Caption=外出
N22.Caption=返回
N23.Caption=删除该记录
N25.Caption=取消本记录处理
N29.Caption=处理保存
N13.Caption=过滤记录
N14.Caption=正常记录
N15.Caption=重复记录
N16.Caption=无效记录
N17.Caption=状态错误
N27.Caption=手工处理
N1.Caption=数据列
N2.Caption=部门
N3.Caption=员工编号
N4.Caption=姓名
N5.Caption=考勤时间
N6.Caption=状态
N9.Caption=处理方法
N10.Caption=错误提示
N8.Caption=对应时段
N28.Caption=显示全部数据列

\\PopupMenu2
N7.Caption=导出数据
N32.Caption=生成当前数据报表

N34.Caption=过滤记录
N93.Caption=正常
N94.Caption=迟到
N95.Caption=早退
N96.Caption=旷工
N97.Caption=未签到
N98.Caption=未签退

N35.Caption=数据列
N36.Caption=显示全部数据列
N41.Caption=部门
N42.Caption=姓名
N43.Caption=员工编号
N44.Caption=日期
N49.Caption=对应时段
N55.Caption=应上班时间
N56.Caption=应下班时间
N57.Caption=签到时间
N58.Caption=签退时间
N59.Caption=迟到时间
N60.Caption=早退时间
N61.Caption=加班时间
N62.Caption=未签到
N63.Caption=未签退
N64.Caption=旷工
N65.Caption=例外情况
N66.Caption=应签到
N67.Caption=应签退
N68.Caption=排定工作日
N69.Caption=排定时长

\\PopupMenu3
N45.Caption=导出数据
N46.Caption=生成当前数据报表
N48.Caption=数据列
M1.Caption=显示全部数据列
N70.Caption=部门
N71.Caption=姓名
N72.Caption=员工编号
N73.Caption=开始时间
N74.Caption=结束时间
N75.Caption=异常情况
N76.Caption=时长
N77.Caption=排定工作日

\\PopupMenu4
N50.Caption=导出数据
N51.Caption=生成当前数据报表
N53.Caption=数据列
N54.Caption=显示全部数据列
N78.Caption=部门
N79.Caption=姓名
N80.Caption=员工编号
N81.Caption=应到
N82.Caption=实到
N83.Caption=迟到
N84.Caption=早退
N85.Caption=旷工
N86.Caption=加班
N106.Caption=自由加班
N87.Caption=未签到
N88.Caption=未签退
N89.Caption=外出
N90.Caption=公出
N91.Caption=请假
N92.Caption=工作时间

\\PopupMenu5
N37.Caption=员工考勤记录表
N107.Caption=每日考勤统计表
N38.Caption=考勤统计总表
N39.Caption=异常考勤报表
N40.Caption=生成当前数据报表

\\PopupMenu6
N102.Caption=忘记签到/签退处理
N103.Caption=集体迟到/早退处理
N52.Caption=员工公出/请假处理
N105.Caption=记录修改日志

[FrmFree]
FrmFree.Caption=员工公出/请假处理

T_Insert.Caption=增加(&A)
T_Del.Caption=删除(&D)
T_Edit.Caption=修改(&E)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&C)

GroupBox1.Caption=请假起止时间
Label1.Caption=工作部门:
Label2.Caption=员工编号:
Label3.Caption=请假类型:
Label4.Caption=请假原因:
Label5.Caption=开始时间:
Label6.Caption=结束时间:

DB_FreeColumn1.Caption=部门
DB_FreeColumn2.Caption=员工编号
DB_FreeColumn3.Caption=姓名
DB_FreeColumn4.Caption=开始时间
DB_FreeColumn5.Caption=结束时间
DB_FreeColumn6.Caption=假类
DB_FreeColumn7.Caption=原因

[FrmFInout]
FrmFInout.Caption=忘记签到/签退处理

Label1.Caption=工作部门:
Label2.Caption=员工编号:
Label3.Caption=考勤状态:
Label4.Caption=考勤时间:

S_Ok.Caption=增加(&A)
S_Exit.Caption=关闭(&C)

[FrmCInOut]
FrmCInOut.Caption=集体签到/签退处理

Label1.Caption=部门列表:
Label2.Caption=员工列表:
Label3.Caption=考勤状态:
Label4.Caption=考勤时间:
L_Hint.Caption=当某一部门部分或全体员工因故没有\r\n签到/签退，可使用本模块对选择的员工\r\n进行集体补签出勤记录。\r\n\r\n选择某些员工时可以配合Ctrl键在员\r\n工列表中分别选取需要的员工；\r\n\r\n补签的记录可以在“记录修改日志”模块\r\n进行查询！
C_Selall.Caption=全选
dxDBGridColumn1.Caption=员工编号
dxDBGridColumn2.Caption=姓名

S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmGroup]
FrmGroup.Caption=集体迟到/早退处理

Label1.Caption=从
Label2.Caption=到
Label3.Caption=员工列表:

GroupBox1.Caption=处理类型
GroupBox2.Caption=忽略签到记录
GroupBox3.Caption=修改后的签到时间
GroupBox4.Caption=员工条件检索

RB1.Caption=集体迟到
RB2.Caption=集体早退
RB3.Caption=选择部门
RB4.Caption=员工班次
C_Selall.Caption=全选

dxDBGridColumn1.Caption=员工编号
dxDBGridColumn2.Caption=姓名

S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmInUser]
FrmInUser.Caption=导入人员名单

Label1.Caption=选取文件:
Label2.Caption=员工记录导入异常:
GroupBox1.Caption=选取员工资料文件
S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

Line1=记录有误：
Line2=更新有误：
Line3=开始导入数据……
Line4=导入完成！
Line5=员工资料总数：%d；导入成功：%d

[FrmInRecord]
FrmInRecord.Caption=导入考勤记录

Label1.Caption=选取文件:
Label2.Caption=考勤记录导入异常:
GroupBox1.Caption=选取考勤记录文件
S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

Line1=该记录中员工编号不存在：
Line2=重复记录：
Line3=开始导入数据……
Line4=导入完成！
Line5=考勤记录总数：%d；导入成功：%d

[FrmClearData]
FrmClearData.Caption=清除过期数据

Label1.Caption=截止日期:
GroupBox1.Caption=选择要清除数据的截止日期
S_Clear.Caption=清除数据
S_Close.Caption=关闭

[FrmSet]
FrmSet.Caption=系统参数设定

S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)
TabSheet1.Caption=基本参数
TabSheet2.Caption=统计规则
TabSheet3.Caption=假类设定
TabSheet4.Caption=字段定义

GroupBox1.Caption=基本信息
GroupBox2.Caption=考勤计算规则
GroupBox5.Caption=考勤计算
RadioGroup1.Caption=时段跨两日时
B_day1.Caption=计为第一日
B_day2.Caption=计为第二日
Label1.Caption=单位名称
Label2.Caption=分钟
Label3.Caption=分钟
Label4.Caption=分钟
C_Workday.Caption=一个工作日计为
C_Noin.Caption=上班无签到时记为迟到
C_Noout.Caption=下班无签退时记为早退
C_AutoAdd.Caption=下班
Label5.Caption=分钟后签退记为加班

GroupBox2.Caption=统计规则
GroupBox3.Caption=舍入控制
GroupBox4.Caption=单位设定
Label6.Caption=统计项目:
Label7.Caption=单位名称:
Label8.Caption=最小单位数:
T_sr1.Caption=向下舍弃
T_sr2.Caption=向上进位
T_sr3.Caption=四舍五入
T_lj.Caption=累计后进行舍入
T_ac.Caption=按次进行计算
T_name.Items.Text=分钟\r\n小时\r\n工作日

T_Insert.Caption=增加(&A)
T_Del.Caption=删除(&D)
T_Edit.Caption=修改(&E)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&C)
DB_leaveColumn1.Caption=名称
DB_leaveColumn2.Caption=颜色
Label9.Caption=假类名称:
Label10.Caption=表示颜色:

Label11.Caption=字段名称:
Label12.Caption=输入新的字段值:
Z_Add.Caption=增加(&A)
Z_Del.Caption=删除(&D)

Z_type.Items.Text=职务\r\n学历\r\n专业\r\n民族
T_xm.Items.Text=正常\r\n迟到\r\n早退\r\n公出\r\n请假\r\n旷工\r\n外出\r\n加班\r\n自由加班

[Frmop]
Frmop.Caption=管理员设定

T_Insert.Caption=增加(&A)
T_Del.Caption=删除(&D)
T_Edit.Caption=修改(&E)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&C)
DB_opColumn1.Caption=姓名
Label1.Caption=可操作项目:
Label2.Caption=管理员姓名:
Label3.Caption=注意:新增管理员的密码缺省为：888888，请及时更改！
C_limit.Items.Text=管理员设置/管理员操作日志\r\n系统参数设定\r\n部门管理\r\n员工维护\r\n班次设定\r\n员工排班\r\n出勤记录/记录修改日志\r\n考勤统计报表\r\n节假日设定\r\n员工公出/请假\r\n忘记签到/签退处理 集体签到/签退处理\r\n集体迟到/早退处理\r\n导入人员名单\r\n导入考勤记录\r\n清除过期数据\r\n初始化系统

[FrmPass]
FrmPass.Caption=管理员修改密码

Label1.Caption=旧密码:
Label2.Caption=新密码:
Label3.Caption=确认密码:
S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmRlog]
FrmRlog.Caption=记录修改日志

DB_RecordColumn1.Caption=部门
DB_RecordColumn2.Caption=员工编号
DB_RecordColumn3.Caption=姓名
DB_RecordColumn4.Caption=日期时间
DB_RecordColumn5.Caption=状态
DB_RecordColumn6.Caption=修改类型
DB_RecordColumn7.Caption=原因
DB_RecordColumn8.Caption=管理员
DB_RecordColumn9.Caption=日期

Label1.Caption=工作部门
Label2.Caption=员工编号
Label3.Caption=从
Label4.Caption=到

GroupBox1.Caption=起止时间

S_Search.Caption=开始查找
S_Restore.Caption=记录恢复
S_Close.Caption=关闭
SB_.Panels[0].text=符合条件的记录数:

[FrmOplog]
FrmOplog.Caption=管理员操作日志

DB_OplogColumn1.Caption=序号
DB_OplogColumn2.Caption=姓名
DB_OplogColumn3.Caption=日期时间
DB_OplogColumn4.Caption=备注说明

GroupBox1.Caption=起止时间

Label1.Caption=管理员:
Label2.Caption=从
Label3.Caption=到

S_Search.Caption=开始查找
S_Close.Caption=关闭

[FrmProg]
FrmProg.Caption=外接程序管理

T_Insert.Caption=增加(&A)
T_Del.Caption=删除(&D)
T_Edit.Caption=修改(&E)
T_Save.Caption=保存(&S)
T_Cancel.Caption=取消(&C)

Label1.Caption=外接程序名称:
Label2.Caption=可执行程序:
Label3.Caption=外接程序列表:

DB_ProgColumn1.Caption=名称
DB_ProgColumn2.Caption=可执行程序

[FrmReg]
FrmReg.Caption=欢迎使用指纹考勤管理系统

Label1.Caption=声明：未经注册，系统会在打印报表中出现“未注册”\r\n等字样；请根据注册向导填写客户信息并打印，打印后发传真\r\n至我公司就可以获取注册码！
Label2.Caption=特征码:
Label3.Caption=注册码:

S_Guide.Caption=注册向导(&G)
S_Reg.Caption=注册(&R)
S_Exit.Caption=取消(&C)

[FrmCUser]
FrmCuser.Caption=软件注册 -- 客户信息登记

GroupBox1.Caption=客户信息
GroupBox2.Caption=经销商信息
S_Print.Caption=打印(&P)
S_Exit.Caption=取消(&C)

Label1.Caption=公司全称:
Label2.Caption=联系电话:
Label3.Caption=联系人:
Label4.Caption=公司传真:
Label5.Caption=电子信箱:
Label6.Caption=使用人数:
Label7.Caption=购买机型:
Label8.Caption=数量:
Label9.Caption=特征码:
Label10.Caption=注册码:
Label11.Caption=机器号:
Label12.Caption=（注：机器号是指考勤机的序列号，当有多台考勤机时请用 “；” 把机器号隔开）
Label13.Caption=公司全称:
Label14.Caption=业务联系人:
Label15.Caption=联系电话:
Label16.Caption=服务联系人:
Label17.Caption=联系电话:

[FrmSdept]
FrmSdept.Caption=员工调动

Label1.Caption=请选择要调动到的部门:
S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmAppAdd]
FrmAppadd.Caption=增加临时排班的时间段

Label1.Caption=选择要增加的时间段:
Label2.Caption=选择要增加该时间段的日期:
C_Selall.Caption=全选
C_OT.Caption=记为加班
S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

DB_TimeColumn1.Caption=时间段名称
DB_TimeColumn2.Caption=上班时间
DB_TimeColumn3.Caption=下班时间
DB_TimeColumn4.Caption=时长

[FrmSelclass]
FrmSelclass.Caption=员工考勤班次设定

Label1.Caption=班次列表:
Label2.Caption=班次时间段:
Label3.Caption=启用日期:
Label4.Caption=截止日期:
Label5.Caption=当前排班表:
GroupBox1.Caption=起止时间

S_Add.Caption=增加(&A)
S_Del.Caption=删除(&D)
S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

DB_ClassColumn1.Caption=班次名称
DB_ClassColumn2.Caption=周期数
DB_ClassColumn3.Caption=单位

DB_BClassColumn1.Caption=班次名称
DB_BClassColumn2.Caption=启用日期
DB_BClassColumn3.Caption=截止日期

[FrmCDoor]
FrmCDoor.Caption=员工门禁许可管理

DB_UserColumn1.Caption=编号
DB_UserColumn2.Caption=姓名
DB_UserColumn3.Caption=部门
DB_UserColumn4.Caption=门禁许可

N1.Caption=全部员工门禁许可有效
N2.Caption=全部员工门禁许可无效
N4.Caption=显示全部员工
N5.Caption=仅显示门禁许可有效员工

S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmOpenDoor]
FrmOpenDoor.Caption=开门记录

Label1.Caption=工作部门
Label2.Caption=员工编号
Label3.Caption=从
Label4.Caption=到
GroupBox1.Caption=起止时间

S_Search.Caption=开始查找
S_Report.Caption=报表预览
S_Export.Caption=数据导出
S_Close.Caption=关闭

DB_RecordColumn1.Caption=部门
DB_RecordColumn2.Caption=员工编号
DB_RecordColumn3.Caption=姓名
DB_RecordColumn4.Caption=开门时间
DB_RecordColumn5.Caption=机器号

SB_.Panels[0].Text=符合条件的记录数:

[FrmRegHW]
FrmRegHW.Caption=欢迎使用指纹考勤管理系统

Label1.Caption=串口号:
Label2.Caption=考勤机IP地址:

RB1.Caption=通过串口连接
RB2.Caption=通过网络连接

S_Reg.Caption=注册(&R)
S_Exit.Caption=取消(&C)

[Resource]

MsgCaption1=提示信息
MsgCaption2=请确认...

Company=总公司

Hour=小时
Minute=分钟
Day=工作日
Times=次

SelAll=全部
Beaway=公出

TimeTable1=上班时段一
TimeTable2=上班时段二
TimeTable3=上班时段三
TimeTable4=上班时段四

TimeTable=时间段：
InTime=上班时间：
OffTime=下班时间：
LateTime=记迟到时间：
EarlyTime=记早退时间：
Workday=记多少工作日：
Worklong=记多少时长：

Date=日期
ViewDate1=第 %d 日
ViewDate2=日
ViewDate3=星期日
ViewDate4=星期一
ViewDate5=星期二
ViewDate6=星期三
ViewDate7=星期四
ViewDate8=星期五
ViewDate9=星期六

UType=上班签到\r\n下班签退\r\n加班到\r\n加班退\r\n外出\r\n外出回
CheckType1=上班签到
CheckType2=下班签退
CheckType3=加班到
CheckType4=加班退
CheckType5=外出
CheckType6=外出回

DisposeRecord=删除

RecordEditType1=增加
RecordEditType2=修改
RecordEditType3=删除

RecordEditWhys1=忘记签到/签退处理
RecordEditWhys2=集体迟到/早退处理
RecordEditWhys3=考勤数据审核
RecordEditWhys4=集体签到/签退处理

RecordErrorType1=正常记录
RecordErrorType2=重复记录
RecordErrorType3=无效记录
RecordErrorType4=状态错误
RecordErrorType5=手工处理

RecordAbnor1=自由加班
RecordAbnor2=外出
RecordAbnor3=加班

WriteOPLog1=将数据库连接到：
WriteOPLog2=初始化系统
WriteOPLog3=删除管理员
WriteOPLog4=增加管理员
WriteOPLog5=删除部门
WriteOPLog6=进行员工维护，删除员工
WriteOPLog7=操作系统参数设定
WriteOPLog8=操作节假日设定
WriteOPLog9=由文件“ %s ”导入考勤记录
WriteOPLog10=由文件“ %s ”导入员工
WriteOPLog11=操作公出/请假处理
WriteOPLog12=清除 “ %s ” 之前的数据

DelOpSelf=管理员不能删除自己的资料！
LinkDBError=数据库连接失败，请重新配置数据库！

NoFileHint=找不到指定的文件：%s ！
RunFileFail=%s 运行出错！
FileExist=此文件夹中已包含一个名为“ %s ”的文件,\r\n是否替换现有文件?
OutFile=记录已成功导出到“ %s ”！

NoRight=您没有该功能的使用权限，请与管理员联系！
ExitSystem=确定要退出考勤管理系统吗？
InitSystem=初始化系统将删除所有已登记的数据和设置的系统信息，\r\n确定要初始化系统吗？
InitSystemError=缺少系统所需文件，无法进行初始化；\r\n请与系统供应商联系！
InitSystemCaption=系统进程：初始化系统
InitSystemProcess1=正在初始化……
InitSystemProcess2=初始化系统完成！

CompactDBCaption=系统进程：压缩和修复数据库
CompactDBProcess1=正在压缩和修复数据库，请稍等……
CompactDBProcess2=压缩和修复数据库完成！
CompactDBProcess3=压缩数据库失败，可能是数据库正被别的程序打开！

BackupDBCaption=系统进程：备份数据库
BackupDBProcess1=正在备份数据库……
BackupDBProcess2=数据库已成功备份到：
BackupDBProcess3=备份数据库失败！

ClearRecCaption=系统进程：清除过期数据
ClearRecProcess1=正在清除过期的考勤记录……
ClearRecProcess2=正在清除过期的考勤记录修改日志……
ClearRecProcess3=正在清除过期的员工排班记录……
ClearRecProcess4=正在清除过期的管理员操作日志……
ClearRecProcess5=清除过期数据完成！

CheckRecordCaption=系统进程：考勤数据审核
CheckRecordProcess1=正在审核员工考勤数据，请稍等……
CheckRecordProcess2=正在审核员工 %s 的考勤数据……
CheckRecordProcess3=审核员工考勤数据完成！

SaveUserShiftCaption=系统进程：员工排班
SaveUserShiftProcess1=正在保存员工排班记录，请稍等……
SaveUserShiftProcess2=正在保存员工 %s 的排班记录……
SaveUserShiftProcess3=保存员工排班记录完成！

AutoExitSystem=管理员密码输入错误，系统终止运行！
ErrorPwd=管理员密码输入错误，还有 %d 次机会，\r\n请重新输入您的密码！

DeleteOP=确定要删除该管理员吗？

OldPwdError=旧密码输入不正确，请重新输入！
NosamePwd=输入的新密码和确认密码不一致，请重新输入！
EditPwdOK=管理员密码修改成功！

DeleteDept1=选择的部门“ %s ”有下属部门，不能进行删除！\r\n请首先删除该部门的所有下属部门后再删除该部门。
DeleteDept2=确定要删除当前选择的部门吗？
SameDept=输入的部门名称与已有部门重复！
ErrorDeptlist=读取部门列表错误，请重新进行部门管理！

DeleteUser=确定要删除选中的员工吗？ 
ErrorTimeTable=时间段设置不正确，请检查！
DeleteTimeTable=确定要删除选中的时间段吗？
DeleteSchedule=确定要删除选中的班次吗？
MondifyData=数据已改动，是否要保存？
SameValue=输入的字段值已经存在，请重新输入！
DeleteValue=您确定要删除该字段值吗？
DeleteHDtype=确定要删除选中的假类吗？
DeleteHoliday=确定要删除该节日设定吗？
NOExcel=您的机器里未安装Microsoft Excel！
ErrorExcel=不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误！
NoRecord=选择的时间范围内没有考勤记录！
SelectUser=请选择要进行 “忘签到/签退处理” 的员工！
AddError=增加记录失败，可能是该记录已经存在！
DeleteLeave=确定要删除该员工的请假记录吗？
LeaveError=选择的请假时间范围与已有的请假记录重复！

NoSelectUser1=尚未选择员工，请首先选择要进行排班的员工！
NoSelectUser2=尚未选择员工，请首先选择要进行临时排班的员工！

TempSchedule=确定对选择的员工从 %s 到 %s  \r\n期间进行临时排班吗？
DeleteTempSchedule=确定要取消选择的员工从 %s 到 %s  \r\n期间的临时排班吗？
DoLate=确实要对选中的员工进行 “集体迟到” 处理吗？
DoEarly=确实要对选中的员工进行 “集体早退” 处理吗？
NoUser=选择的部门没有员工，请重新选择！
RecordOK=考勤数据处理保存完成！
ClearData=只能清除一个月以前的数据，请重新选择截止日期！
ClearHint=清除过期数据将删除指定日期以前的考勤记录，排班信息以及管理员操作日志等，\r\n确定要清除吗？
ClearOK=清除过期数据完成，现在要压缩数据库吗？

InsertTimeErr1=如下时间段未能加入：
InsertTimeErr2=可能的原因是本时间段同      \r\n已有的时间段重合！

RegHint1=注册失败！
RegHint2=输入的注册码不正确，请重新输入！
RegHint3=恭喜！注册成功，谢谢您的支持！
RegHint4=选择软件注册的方式：点击“是”，通过考勤设备注册；\r\n\r\n点击“否”，通过注册码注册软件。
RegHint5=无法连接到考勤设备，注册失败！

Reginfo1=公司全称不能为空,请输入！
Reginfo2=联系电话不能为空,请输入！
Reginfo3=联系人不能为空,请输入！
Reginfo4=公司传真不能为空,请输入！
Reginfo5=经销商公司全称不能为空,请输入！

OutProg1=请输入外接程序名称！
OutProg2=请选择可执行程序！
OutProg3=确定要删除选择的外接程序吗？

AddRecord=确定要对选中的员工补签出勤记录吗？

OpenDialogOutProgFilter=执行程序 (*.exe)|*.exe
OpenDialogInRecordFilter=文本文档 (*.txt)|*.txt
OpenDialogInuserFilter=文本文档 (*.txt)|*.txt|Microsoft Excel 文件 (*.xls)|*.xls
SaveDialogFilter=Microsoft Access 数据库 (*.mdb)|*.mdb
SaveDialogOutFilter=文本文档 (*.txt)|*.txt|Microsoft Excel 文件 (*.xls)|*.xls
SaveDialogRecFilter=文本文档 (*.txt)|*.txt|Microsoft Excel 文件 (*.xls)|*.xls|原始记录 (*.txt)|*.txt

[ReportSource]

Report_Date=至
Report_OP=制表：
Report_NoReg=未注册
RecordTitle=员工考勤记录表
ARecordTitle=考勤记录异常情况
ASchedule=班次异常情况
AOther=其他异常情况
ACount=考勤统计

[Report_Reg]

Cell100=软件注册 客户信息登记
Cell101=公司全称
Cell102=联系电话
Cell103=联系人
Cell104=公司传真
Cell105=电子信箱
Cell106=使用人数
Cell107=购买机型
Cell108=数量
Cell109=特征码
Cell110=机器号
Cell111=公司全称
Cell112=业务联系人
Cell113=联系电话
Cell114=服务联系人
Cell115=联系电话
Cell116=客户服务部收
Cell117=注册码
Cell118=谢谢！

Cell119=客户信息：
Cell120=经销商信息：

[Report_Rec]

Cell100=员工考勤记录表
Cell101=考勤次数:

[Report_Day]
Cell100=员工每日考勤统计表
Cell101=姓名
Cell102=工号
Cell103=备注：/:正常   >:迟到  <:早退  -:旷工  [:未签到  ]:未签退    :休息  +:加班  BL:公出  L:请假
;Cell103=备注：/:正常   CD:迟到  ZT:早退  KG:旷工  YC:异常    :休息  JB:加班  CC:出差  QJ:请假

[Report_Stat]

Cell100=员工考勤统计总表
Cell101=姓名
Cell102=工号
Cell103=应到
Cell104=实到
Cell105=旷工
Cell106=迟到
Cell107=早退
Cell108=加班
Cell109=自由加班
Cell110=外出
Cell111=公出
Cell112=请假
Cell113=未签到
Cell114=未签退
Cell115=工作时间
Cell116=出勤率
Cell117=次
Cell118=次
Cell119=小时

Cell120=小计:
Cell121=合计:

[Report_Abnormal]

Cell100=员工考勤异常表
Cell101=姓名
Cell102=工号
Cell103=异常日期/时间
Cell104=异常类型
Cell105=时长
Cell106=备注

[Report_Opendoor]

Cell100=员工开门记录表
Cell101=姓名
Cell102=编号
Cell103=开门时间
Cell104=机器号

[FrmComm]
FrmComm.Caption=考勤机管理

S_Add.Caption=增加
S_Del.Caption=删除
S_Link.Caption=连接
S_Edit.Caption=修改
S_Cut.Caption=断开
S_Exit.Caption=退出

Pclist.Columns[0].Caption=序列号
Pclist.Columns[1].Caption=连接方式
Pclist.Columns[2].Caption=串口号/IP地址
Pclist.Columns[3].Caption=连接时间

GroupBox1.Caption=考勤机信息:
G_Manage.Caption=操作项目:

Label1.Caption=员 工 数:
Label2.Caption=部 门 数:
Label3.Caption=记 录 数:
Label4.Caption=指纹容量:
Label5.Caption=机器时间:
Label6.Caption=用户名称:
Label7.Caption=固件版本:
Label8.Caption=指 纹 数:
Label9.Caption=序 列 号:

SpeedButton1.Caption=下载考勤记录
SpeedButton2.Caption=下载员工资料
SpeedButton3.Caption=下载员工指纹
SpeedButton4.Caption=设定考勤机参数
SpeedButton5.Caption=上传员工资料
SpeedButton6.Caption=上传员工指纹
SpeedButton7.Caption=员工门禁许可
SpeedButton8.Caption=定时收集记录
SpeedButton9.Caption=发布通知信息(仅限AV200,AV300使用)

[FrmClient]
FrmClient.Caption=增加考勤终端

GroupBox1.Caption=考勤机信息:

Label1.Caption=序列号:
Label21.Caption=串口号:
Label22.Caption=IP地址:
Label3.Caption=连接方式:
L_mode.Items.Text=串口\r\n网络\r\n485

S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmNote]
FrmNote.Caption=发布通知

Label1.Caption=请输入通知内容(100字以内的半角字符):

S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmCommSet]
FrmCommSet.Caption=设定考勤机参数

GroupBox1.Caption=考勤机参数设定项目:

Label1.Caption=秒
Label2.Caption=秒
Label3.Caption=分钟
Label4.Caption=秒

E_jd.Items.Text=普通\r\n良好\r\n精确

CB1.Caption=用户名称(小于16个汉字):
CB2.Caption=管理员密码(00001-09999):
CB3.Caption=IP地址:
CB4.Caption=考勤机时间误差每24小时自动调整:
CB5.Caption=无考勤多少时间进入休眠状态:
CB6.Caption=管理状态无操作多少时间自动转到考勤状态:
CB7.Caption=控制电锁打开后的延时时间:
CB8.Caption=同步考勤机时间(根据计算机的当前时间校正考勤机的时间)
CB9.Caption=指纹比对精度:
CB10.Caption=连接有门禁时，验证通过后直接开门，无需先输入08进行标识

SpeedButton1.Caption=初始化考勤机
SpeedButton2.Caption=清除考勤记录
SpeedButton3.Caption=删除员工资料
SpeedButton4.Caption=高级...

S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmClock]
FrmClock.Caption=员工门禁许可管理

DB_UserColumn1.Caption=编号
DB_UserColumn2.Caption=姓名
DB_UserColumn3.Caption=部门
DB_UserColumn4.Caption=门禁许可

DB_User.Hint=点击鼠标右键进行更多操作!

N1.Caption=全部员工门禁许可有效
N2.Caption=全部员工门禁许可无效
N4.Caption=显示全部员工
N5.Caption=仅显示门禁许可有效员工

S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

Label1.Caption=部门列表：
Label2.Caption=员工列表：

C_All.Caption=全选
SB_.Panels[0].Text=当前显示的员工记录数：

[FrmCommPass]
FrmCommPass.Caption=考勤机管理许可

Label1.Caption=请输入考勤机管理密码：

S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmDnFinger]
FrmDnFinger.Caption=下载员工指纹

Label1.Caption=部门列表：
Label2.Caption=员工列表：

S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

DB_UserColumn1.Caption=编号
DB_UserColumn2.Caption=姓名
DB_UserColumn3.Caption=部门
DB_UserColumn4.Caption=第一枚指纹
DB_UserColumn5.Caption=第二枚指纹

C_All.Caption=全选
SB_.Panels[0].Text=当前显示的员工记录数：

[FrmUpFinger]
FrmUpFinger.Caption=上传员工指纹

Label1.Caption=部门列表：
Label2.Caption=员工列表：

S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

DB_UserColumn1.Caption=编号
DB_UserColumn2.Caption=姓名
DB_UserColumn3.Caption=部门
DB_UserColumn4.Caption=第一枚指纹
DB_UserColumn5.Caption=第二枚指纹

C_All.Caption=全选
SB_.Panels[0].Text=当前显示的员工记录数：

[FrmUpUser]
FrmUpUser.Caption=上传员工资料

Label1.Caption=部门列表：
Label2.Caption=员工列表：

S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

DB_UserColumn1.Caption=编号
DB_UserColumn2.Caption=姓名
DB_UserColumn3.Caption=部门

C_All.Caption=全选
SB_.Panels[0].Text=当前显示的员工数：

[FrmDelUser]
FrmDelUser.Caption=删除指定的员工资料

Label1.Caption=部门列表：
Label2.Caption=员工列表：

S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

DB_UserColumn1.Caption=编号
DB_UserColumn2.Caption=姓名
DB_UserColumn3.Caption=部门

C_All.Caption=全选
CB_DelPC.Caption=同时删除计算机上的员工
SB_.Panels[0].Text=当前显示的员工数：

[FrmDownkq]
FrmDownkq.Caption=定时收集考勤记录设定

GroupBox1.Caption=定时收集条件设置
Label1.Caption=序列号：
Label2.Caption=收集时间：
Label3.Caption=密码：

S_add.Caption=增加(&A)
S_del.Caption=删除(&D)
S_clear.Caption=清除(&C)
S_Addtime.Caption=增加时间

DB_SensorColumn1.Caption=序列号
DB_SensorColumn2.Caption=收集时间

[FrmSelkq]
FrmSelkq.Caption=下载记录选择

GroupBox1.Caption=请选择
RB1.Caption=下载新记录
RB2.Caption=下载全部记录
S_Ok.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[FrmAdvlan]
FrmAdvlan.Caption=高级网络设置

GroupBox1.Caption=使用下面的设置

CB1.Caption=默认网关:
CB2.Caption=子网掩码:
CB3.Caption=MAC 地址:
CB4.Caption=服务器IP:

S_OK.Caption=确定(&O)
S_Exit.Caption=取消(&C)

[CommResource]

MsgCaption1=提示信息
MsgCaption2=请确认...

LinkMode1=串口
Linkmode2=网络
Linkmode3=485

LinkDBError=数据库连接失败，请重新配置数据库！
LinkAV=请首先选中要连接的考勤机，再进行连接！

DownUser=确定要下载考勤机上的员工资料到计算机吗?
DownRecord=确定要下载考勤机上的考勤记录到计算机吗?
UpUser=确定要上传员工资料到考勤机吗?
DelClient=确定要删除选择的考勤终端吗?

Sysinit=初始化考勤机将删除考勤机上的所有数据，恢复到出厂设置！\r\n\r\n 确定要初始化考勤机吗？
ClearUser=确定要清除考勤机上的员工资料吗?
ClearRecord=确定要清除考勤机上的考勤记录吗？
ErrorPwd=管理员密码输入有误，请检查！
ErrorIP=IP地址修改失败，请检查！
LinkAVOk=IP地址修改成功，需要重新进行连接考勤机！
LinkComError=打开串口失败，可能是串口已经打开或者设定的串口号不正确！

InputMia=请输入序列号！
Inputip=请输入IP地址！
Inputcom=请输入串口号！
ReInuputMia=序列号重复，增加失败！

UpdateUser=确定要更新员工门禁许可吗?
UpdateOk=更新员工门禁许可完成！
ErrorNote=发布的通知内容超出范围！
ExitSys=确定要退出考勤机管理程序吗?

LinkOn=成功连接到 %s 号考勤机

DataIsSending=数据传输中...
DataIsOk=数据传输完毕！

SB1=正在下载员工资料...
SB2=正在下载考勤记录...
SB3=正在上传部门...
SB4=正在上传员工资料...
SB5=正在清除员工资料...
SB6=正在清除考勤记录...
SB7=正在更新员工门禁许可...
SB8=更新员工门禁许可完成！
SB9=上传员工资料完成！
SB10=正在上传员工指纹...
SB11=上传员工指纹完成！
SB12=正在下载员工指纹...
SB13=下载员工指纹完成！

Msg1=用户名称设置成功！
Msg2=管理员密码 设置成功！
Msg3=考勤机日期 设置成功！
Msg4=考勤机时间 设置成功！
Msg5=考勤机时间误差每24小时自动调整 设置成功！
Msg6=无考勤多少时间进入休眠状态 设置成功！
Msg7=管理状态无操作多少时间自动转到考勤状态 设置成功！
Msg8=指纹比对精度 设置成功！
Msg9=清除考勤机上的员工资料完成！
Msg10=清除考勤机上的考勤记录完成！
Msg11=发布通知信息完成！
Msg12=控制电锁打开后的延时时间 设置成功！
Msg13= 初始化考勤机成功！
Msg14=上传员工资料完成，员工总数： %d
Msg15=下载员工资料完成，记录总数： %d ，下载成功：%d
Msg16=下载考勤记录完成，记录总数：%d ，下载成功：%d 

Msg17=用户名称设置失败！
Msg18=管理员密码 设置失败！
Msg19=考勤机日期 设置失败！
Msg20=考勤机时间 设置失败！
Msg21=考勤机时间误差每24小时自动调整 设置失败！
Msg22=无考勤多少时间进入休眠状态 设置失败！
Msg23=管理状态无操作多少时间自动转到考勤状态 设置失败！
Msg24=指纹比对精度 设置失败！
Msg25=清除考勤机上的员工资料失败！
Msg26=清除考勤机上的考勤记录失败！
Msg27=发布通知信息失败！
Msg28=控制电锁打开后的延时时间 设置失败！
Msg29=初始化考勤机失败！

Msg30=确定要上传员工指纹到考勤机吗？
Msg31=确定要下载员工指纹到计算机吗？

Msg32=确定要删除选中的设定吗？
Msg33=确定要删除全部的定时收集考勤记录设定吗？
Msg34=输入的序列号不存在，请重新输入！
Msg35=输入的收集时间格式不正确，请检查！

Msg36=考勤机中没有考勤记录！
Msg37=考勤机中没有新的考勤记录！

Msg38=考勤机管理密码错误！
Msg39=网络参数设置完成，需要重新进行连接！