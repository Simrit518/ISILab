<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div class="footer">
	<div class="footer-inner">
		<div class="footer-content">
			<span class="bigger-120"> <span class="blue bolder">华宁巡检</span>
				管理系统 &copy; 2016
			</span> &nbsp; &nbsp;
		</div>
	</div>
</div>
<!-- 正在处理框 -->
<div class="processingDialog">
	<img class="processingImg" src="images/processing.gif"/>
	<p class="processingP">正在处理...</p>
</div>
<!-- 正在处理框over -->
<!-- 处理成功框 -->
<div class="processingSuccessDialog">
	<img class="processingImg" src="images/processing_success.png"/>
	<p class="processingP">操作成功！</p>
</div>
<!-- 处理成功框over -->
<!-- 处理失败框 -->
<div class="processingFailedDialog">
	<img class="processingImg" src="images/processing_failed.png"/>
	<p class="processingP">操作失败！</p>
</div>
<!-- 处理失败框over -->
	<!-- 重置密码dialog -->
	<div class="modal fade" id="adminPwdModify" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改管理员密码</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluit">
						<div class="row">
							<div class="col-xs-12 col-sm-12">
								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="oldInput">原密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="oldInput" placeholder="输入旧密码"/>
										</div>
									</div><div class="form-group">
										<label class="col-sm-2 control-label" for="newInput">新密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="newInput" placeholder="输入新密码"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="newInput2">重复密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="newInput2" placeholder="重复新密码"/>
										</div>
									</div>
								</form>
							</div>
						</div>

					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" onclick="adminPwdFunc()">确认重置</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 重置密码dialog over -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <!-- page specific plugin scripts -->
    <!-- ace scripts -->
    <script src="js/ace/elements.scroller.js"></script>
    <script src="js/ace/elements.colorpicker.js"></script>
    <script src="js/ace/elements.fileinput.js"></script>
    <script src="js/ace/elements.typeahead.js"></script>
    <script src="js/ace/elements.wysiwyg.js"></script>
    <script src="js/ace/elements.spinner.js"></script>
    <script src="js/ace/elements.treeview.js"></script>
    <script src="js/ace/elements.wizard.js"></script>
    <script src="js/ace/elements.aside.js"></script>
    <script src="js/ace/ace.js"></script>
    <script src="js/ace/ace.ajax-content.js"></script>
    <script src="js/ace/ace.touch-drag.js"></script>
    <script src="js/ace/ace.sidebar.js"></script>
    <script src="js/ace/ace.sidebar-scroll-1.js"></script>
    <script src="js/ace/ace.submenu-hover.js"></script>
    <script src="js/ace/ace.widget-box.js"></script>
    <script src="js/ace/ace.settings.js"></script>
    <script src="js/ace/ace.settings-rtl.js"></script>
    <script src="js/ace/ace.settings-skin.js"></script>
    <script src="js/ace/ace.widget-on-reload.js"></script>
    <script src="js/ace/ace.searchbox-autocomplete.js"></script>
    <script src="js/ace-extra.js"></script>
    <script src="js/processing.js"></script> 

	<script type="text/javascript">
		function adminPwdModifyFunc(){
			$('#adminPwdModify').modal('show');
		}
		function adminPwdFunc(){
			$('#adminPwdModify').modal('hide');
			
			var oldPwd = $('#oldInput').val();
			var newPwd = $('#newInput').val();
			var newPwd2 = $('#newInput2').val();
			
			dialogProcessing();
			//发送post请求
			$.post(
					'adminPwdModify',
					{
						oldPwd:oldPwd,
						newPwd:newPwd,
						newPwd2:newPwd2
					},
					function(data,status){
						//如果返回成功
						if(data == MSG_SUCCESS){
							dialogSuccess();
						}
						//如果返回失败
						else if(data == MSG_FAILED){
							dialogFailed();
						}
					}
			);
		}
	</script>
    
    <!-- inline scripts related to this page -->