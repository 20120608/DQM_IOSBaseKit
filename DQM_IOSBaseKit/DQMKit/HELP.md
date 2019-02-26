####  添加步骤  ####

//基本的
1.将DQMKit拉到项目中  记得勾选copy

2.创建PrefixHeader.pch  将dqmbasePrefix.pch引入  将 podfile文件拖动到顶层后删除后缀

3.在build settings增加Prefix header   将左侧的prefix拉入到框中,在target - building setting搜索prefix header并将PrefixHeader.pch拖入到框中

4.修改BaseControllers  DQMTabBarController.m的分页

5.移动动pod文件 到项目首页  并修改为项目名称   target 'DQM_IOSBaseKit' do

5.cocoaPod 导入







