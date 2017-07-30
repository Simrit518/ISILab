<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div id="sidebar" class="sidebar responsive">
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'fixed');
		} catch (e) {
		}
	</script>

<!-- logout按钮 -->
	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<form action="userLogout">			
			<button type="submit"  class="btn btn-danger" style="width: 100%">
				<i class="ace-icon fa fa-power-off"></i>
			</button>
			</form>
		</div>
	</div>
<!-- logout按钮-over -->

		<ul class="nav nav-list">
			<%int temp = 2; %>
			<li class="<%if(temp == 2){%>active<%}%>"><a href="userPage"> <i
					class="menu-icon fa fa-user"></i> <span
					class="menu-text">用户列表</span>
			</a> <b class="arrow"></b></li>
			<li class="<%if(temp == 3){%>active<%}%>"><a href="mapShow"> <i class="menu-icon fa fa-picture-o"></i>
					<span class="menu-text">巡检地图</span>
			</a> <b class="arrow"></b></li>
			<li class="<%if(temp == 4){%>active<%}%>"><a href="detailShow"> <i class="menu-icon fa fa-list"></i>
					<span class="menu-text">巡检详情</span>
			</a> <b class="arrow"></b></li>
			<li class="<%if(temp == 5){%>active<%}%>"><a href="faultPage"> <i
					class="menu-icon fa fa-pencil-square-o"></i> <span
					class="menu-text">故障记录</span>
			</a> <b class="arrow"></b></li>
			<li class="<%if(temp == 6){%>active<%}%>"><a href="missionShow"> <i
					class="menu-icon fa fa-paper-plane-o"></i> <span
					class="menu-text">任务管理</span>
			</a> <b class="arrow"></b></li>
			<li class="<%if(temp == 7){%>active<%}%>"><a href="machinePage"> <i
					class="menu-icon fa fa-dot-circle-o"></i> <span
					class="menu-text">机械类型管理</span>
			</a> <b class="arrow"></b></li>
		</ul>
		<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
			<i class="ace-icon fa fa-angle-double-left"
				data-icon1="ace-icon fa fa-angle-double-left"
				data-icon2="ace-icon fa fa-angle-double-right"></i>
		</div>
		<script type="text/javascript">
			try {
				ace.settings.check('sidebar', 'collapsed')
			} catch (e) {
			}
		</script>
	</div>