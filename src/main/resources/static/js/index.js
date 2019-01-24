var mods = [
  'element', 'sidebar', 'mockjs', 'select',
  'tabs', 'menu', 'route', 'utils', 'component', 'kit', 'echarts'
];

layui.define(mods, function(exports) {
  var element = layui.element,
    utils = layui.utils,
    $ = layui.jquery,
    _ = layui.lodash,
    route = layui.route,
    tabs = layui.tabs,
    layer = layui.layer,
    menu = layui.menu,
    component = layui.component,
    kit = layui.kit;


  var Admin = function() {
    this.config = {
      elem: '#app',
      loadType: 'SPA'
    };
    this.version = '1.0.0';
  };

  Admin.prototype.ready = function(callback) {
    var that = this,
      config = that.config;

    // 初始化加载方式
    var getItem = utils.localStorage.getItem;
    var setting = getItem("KITADMIN_SETTING_LOADTYPE");
    if (setting !== null && setting.loadType !== undefined) {
      config.loadType = setting.loadType;
    }

    kit.set({
      type: config.loadType
    }).init();

    // 初始化路由
    _private.routeInit(config);
    // 初始化选项卡
    if (config.loadType === 'TABS') {
      _private.tabsInit();
    }
    // 初始化左侧菜单
    _private.menuInit(config);
    // 跳转至首页
    if (location.hash === '') {
      utils.setUrlState('主页', '#/');
    }

    // // 处理 sidebar
    // layui.sidebar.render({
    //   elem: '#ccleft',
    //   //content:'', 
    //   title: '这是左侧打开的栗子',
    //   shade: true,
    //   // shadeClose:false,
    //   direction: 'left',
    //   dynamicRender: true,
    //   url: 'components/table/teble2.html',
    //   width: '50%', //可以设置百分比和px
    // });

    // $('#cc').on('click', function() {
    //   var that = this;
    //   layui.sidebar.render({
    //     elem: that,
    //     //content:'', 
    //     title: '这是表单盒子',
    //     shade: true,
    //     // shadeClose:false,
    //     // direction: 'left'
    //     dynamicRender: true,
    //     url: 'components/form/index.html',
    //     width: '50%', //可以设置百分比和px
    //   });
    // });
    // 监听头部右侧 nav
    component.on('nav(header_right)', function(_that) {
      var target = _that.elem.attr('kit-target');
      if (target === 'setting') {
        // 绑定sidebar
        layui.sidebar.render({
          elem: _that.elem,
          //content:'', 
          title: '设置',
          shade: true,
          // shadeClose:false,
          // direction: 'left'
          dynamicRender: true,
          url: 'common/setting',
          // width: '50%', //可以设置百分比和px
        });
      } else if (target === 'help') {
        layer.alert('QQ:602817433');
      } else if (target === 'editpassword'){
        // 修改密码
    	  var index = layer.open({
              type: 2
             ,content: '/user/edit-password'
             ,area: ['500px', '230px']
             ,btnAlign: 'c'
             ,shade: 0.8
             ,title: '修改密码'
             ,maxmin: true
             ,btn: ['确认', '取消']
             ,yes: function(){
                 var body = layer.getChildFrame('body', index);
                 updatePassword(layer, body);
             }
         });
      } /*else if (target === 'lock') {
          var url = window.location.pathname + window.location.hash;
          url = url.replace("#",",");
          $.ajax({
              async:false,
              type:"GET",
              url:"/user/lock?url="+url,
              dataType:"json",
              success:function (result) {
                  if(result && result.code != 200){
                      layer.msg(result.msg, {offset: 70, shift: 0});
                  }else{
                      window.location.href="/user/lock.html";
                  }
              }
          });
      }*/
    });

    // 注入mock
    layui.mockjs.inject(APIs);

    // 初始化渲染
    if (config.loadType === 'SPA') {
      route.render();
    }
    that.render();

    // 执行回调函数
    typeof callback === 'function' && callback();
  }
  Admin.prototype.render = function() {
    var that = this;
    return that;
  }

  //渲染菜单
 var routes = [];
      $.ajax({
          async:false,
          type:"GET",
          url:"/menu/buildMenuUrl",
          dataType:"json",
          success:function (data) {
              routes = data;
          }
      });
      //主页
 routes.push({path: "/", component: "/common/app", name: "主页"})
  var _private = {
    routeInit: function(config) {
      var that = this;
      // 配置路由
      var routeOpts = {
        routes:routes
      };
      if (config.loadType === 'TABS') {
        routeOpts.onChanged = function() {
          // 如果当前hash不存在选项卡列表中
          if (!tabs.existsByPath(location.hash)) {
            // 新增一个选项卡
            that.addTab(location.hash, new Date().getTime());
          } else {
            // 切换到已存在的选项卡
            tabs.switchByPath(location.hash);
          }
        }
      }
      // 设置路由
      route.setRoutes(routeOpts);
      return this;
    },
    addTab: function(href, layid) {
      var r = route.getRoute(href);
      if (r) {
        tabs.add({
          id: layid,
          title: r.name,
          path: href,
          component: r.component,
          rendered: false,
          icon: '&#xe62e;'
        });
      }
    },
    menuInit: function(config) {
      var that = this;
      // 配置menu
      menu.set({
        dynamicRender: false,
        isJump: config.loadType === 'SPA',
        onClicked: function(obj) {
          if (config.loadType === 'TABS') {
            if (!obj.hasChild) {
              var data = obj.data;
              var href = data.href;
              var layid = data.layid;
              that.addTab(href, layid);
            }
          }
        },
        elem: '#menu-box',
        remote: {
          url: '/api/getmenus',
          method: 'post'
        },
        cached: false
      }).render();
      return this;
    },
    tabsInit: function() {
      tabs.set({
        onChanged: function(layid) {
          // var tab = tabs.get(layid);
          // if (tab !== null) {
          //   utils.setUrlState(tab.title, tab.path);
          // }
        }
      }).render(function(obj) {
        // 如果只有首页的选项卡
        if (obj.isIndex) {
          route.render('#/');
        }
      });
    }
  }

  var admin = new Admin();
  admin.ready(function() {
  });

  //输出admin接口
  exports('index', {});
});

/**
 * 更新用户密码
 * @param layer
 * @param body
 */
function updatePassword(layer, body) {
    var pwd = body.contents().find("#password").val();
    var repwd = body.contents().find("#repassword").val();
    var regx=/^[a-zA-Z][a-zA-Z0-9]{7,15}$/;
    if(regx.test(pwd) == false){
    	layer.msg("密码为以字母开头加数字，长度为8-16位", {icon: 5, time:2000});
    	 return;
    }
    
    if(pwd == '' || pwd == null || repwd == '' || repwd == null) {
        layer.msg("密码不能为空", {icon: 5, time:2000});
        return;
    }

    if(pwd.length < 8 || pwd.length > 16 || pwd.repwd < 8 || pwd.repwd > 16) {
        layer.msg("密码长度应为8-16个字符", {icon: 5, time:2000});
        return;
    }

    if(pwd !== repwd) {
        layer.msg("两次输入密码不一致", {icon: 5, time:2000});
        return;
    }
    pwd = MD5(pwd);
    $.ajax({
        url: "/user/update-password",
        type: "PUT",
        data: {password:pwd},
        dataType: "json",
        success: function(data){
            if(data.code == 200){
                layer.msg("密码修改成功", {icon:6, time: 2000}, function() {
                    layer.closeAll();
                });
            }else {
                layer.msg(data.msg, {icon: 5});
            }
        }
    });
}