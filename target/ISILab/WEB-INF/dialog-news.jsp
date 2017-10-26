<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<div class="modal fade" id="updateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">更新新闻</h4>
            </div>
            <div class="modal-body">
                确认要更新这条新闻?
            </div>
            <div class="modal-footer">
                <form action="newsUpdatePage" id="updateForm">
                    <input name="id" id="updatenewsid" type="hidden" value=""/>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" onclick="updateConfirm()">确认</button>
                </form>
            </div>
        </div>
    </div>
</div>


<%--<!-- Modal -->--%>
<%--<div class="modal fade" id="deleteModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">--%>
<%--<div class="modal-dialog" role="document">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>--%>
<%--</button>--%>
<%--<h4 class="modal-title">删除新闻</h4>--%>
<%--</div>--%>
<%--<div class="modal-body">--%>
<%--确认要删除这条新闻<span id="newsid"></span>?--%>
<%--</div>--%>
<%--<div class="modal-footer">--%>
<%--<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>--%>
<%--<button type="button" class="btn btn-danger" onclick="deleteItem()">删除</button>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>