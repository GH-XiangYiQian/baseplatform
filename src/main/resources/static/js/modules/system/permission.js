$(function(){
	layui.use(['jquery', 'sidebar', 'form' , 'treeGrid'], function () {
		var layer = layui.layer;
		var table = layui.table;
		var form = layui.form;
		var treeGrid = layui.treeGrid;
		//  表格渲染
		alert(treeGrid);
		treeGrid.render({
			id:'ID'
			,elem:'#permission_table'
			,idField:'id'
			,url:'/permission/findpermission'
			,treeId:'id'
			,treeUpId:'pid' // 树形父id字段名称
			,treeShowName:'permission'
			,height:'full-140'
			,isFilter:false
            ,iconOpen:false//是否显示图标【默认显示】
            ,isOpenDefault:true//节点默认是展开还是折叠【默认展开】
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page: false
            ,cols:[
            	[
	            	{field:'id', align:'center', width:70, title:'编号'}
	            	,{field:'permission', title:'权限名称'}
	            	,{field:'remark', title:'权限说明'}
	            	,{field:'gmtCreate', title:'创建日期'}
	            	,{field:'gmtModified', title:'更新日期'}
	            	,{field:'operation', align:'center', width:150, toolbar: '#operation', title:'操作'}
            	]
            ]
		});
	})
})