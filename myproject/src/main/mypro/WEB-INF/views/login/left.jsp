<%@ page contentType="text/html;charset=UTF-8"%>
<!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
         <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                     <!-- <li class="nav-header">
                        <div class="dropdown profile-element">
                           <span><img alt="image" class="img-circle" src="./img/jfh.png" /></span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                               <span class="block m-t-xs"><strong class="font-bold">北京腾瑞明</strong></span>
                                <span class="text-muted text-xs block">${user.user_name}<b class="caret"></b></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a class="J_menuItem" href="login/editpass">修改密码</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="" method="get" class="J_tabExit">安全退出</a></li>
                                </li>
                            </ul>
                        </div>
                    </li> -->
					<li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">主页</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="Phone/list" data-index="0">短信管理</a>
                            </li>
                            <!--<li>
                                <a class="J_menuItem" href="login/updatepass" data-index="0">ceshi</a>
                            </li>-->
                            <li>
                                <a class="J_menuItem" href="Company/alllist" data-index="0">公司维护</a>
                            </li>
                             <li>
                             	<a class="J_menuItem" href="Company/index" data-index="0">积分黄页</a>
                                <!-- <a class="J_menuItem" href="Company/list" data-index="0">积分黄页</a>-->
                            </li>
                             <li>
                             	<a class="J_menuItem" href="Qb/list" data-index="0">电子券充值活动列表</a>
                            </li>
                            <li>
                             	<a class="J_menuItem" href="Qb/czlist" data-index="0">充值列表（查询）</a>
                            </li>
                        </ul>
                    </li>
<!--					<li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">采购订单</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="purchase/add" data-index="0">录入采购订单</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="purchase/list" data-index="0">采购订单列表</a>
                            </li>
                        </ul>

                    </li>
                   	<li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">销售订单</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="orderFlow/toImport" data-index="0">自动导入销售订单</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="orderFlow/add" data-index="0">录入销售订单</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="orderFlow/list" data-index="0">销售订单列表</a>
                            </li>
                            <!-- 
                            <li>
                                <a class="J_menuItem" href="index_v1.html" data-index="0">生成发货单</a>
                            </li>
                             -->
<!--                        </ul>
                    </li>
                    
                   <li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">库房出入库</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="warehouseFlow/importjsp" data-index="0">导入库房数据</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="warehouseFlow/toadd" data-index="0">出入库录入</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="warehouseFlow/list" data-index="0">出入库列表</a>
                            </li>
                        </ul>
                    </li>
                    
                     <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">统计报表</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="statistics/psi">PSI报表</a>
                            <!-- <li><a class="J_menuItem" href="statistics/psi?sales_daydiff=1">PSI报表减1天销售</a> -->
<!--                            <li><a class="J_menuItem" href="statistics/orderbyday">日销售统计</a>
                            <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=1">日销售统计(数量)</a>
                            <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=2">日销售统计(金额)</a></li>
                            <!-- <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=3">和网购销售统计</a></li>-->
<!--                            <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=8">公司销售统计(月)</a></li>
                            <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=4">品牌兑换量(月)统计</a></li>
                            <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=5">品牌统计(月)</a></li>
                            <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=6">品牌兑换量统计(日)</a></li>
                            <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=7">品牌统计(日)</a></li>
                            <li><a class="J_menuItem" href="statistics/orderbyday?num_sales=9">批量下单统计</a></li>
                            <!-- 
                            <li><a class="J_menuItem" href="form_validate.html">销售报表</a>
                            </li>
                            <li><a class="J_menuItem" href="form_advanced.html">采购报表</a>
                            </li>
                            <li><a class="J_menuItem" href="form_wizard.html">出入库报表</a>
                            </li> -->
<!--                        </ul>
                    </li>
                            
                    
                    <li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">基础信息配置</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="company/list" data-index="0">公司配置</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="warehouse/list" data-index="0">库房配置</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="channel/list" data-index="0">渠道配置</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="channelPass/list" data-index="0">渠道账户密码</a>
                            </li>
                            <li>
                            	<li><a class="J_menuItem" href="statistics/TimeOut">备份报表</a></li>
                            </li>
                            <li>
                            	<li><a class="J_menuItem" href="statistics/list">短信报表</a></li>
                            </li>
                            
                        </ul>
                    </li>
                    <!-- 
                    <li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">预警值配置</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="index_v1.html" data-index="0">产品库存预警</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="index_v1.html" data-index="0">渠道库存预警</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="index_v1.html" data-index="0">渠道销售异常预警</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="index_v1.html" data-index="0">采购订单逾期预警</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="index_v1.html" data-index="0">发货逾期预警</a>
                            </li>
                        </ul>
                    </li> -->
                    
                    
<!--                    <li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">系统配置</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="login/updatepass?userid=${user.id}" data-index="0">修改密码</a>
                            </li>
                            <li>
                                <!-- <a class="J_menuItem" href="login/qxgl" data-index="0">管理权限</a> -->
<!--                            </li>
                            <li>
                                <!-- <a class="J_menuItem" href="index_v1.html" data-index="0">退出系统</a> -->
<!--                                <a href="" method="get" class="J_tabExit">安全退出</li>
                            </li>
                        </ul>
                    </li>
-->                    
                  

                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->