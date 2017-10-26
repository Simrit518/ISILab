<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<div class="modal fade" id="updateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">更新</h4>
            </div>
            <div class="modal-body">
                确认要更新?
            </div>
            <div class="modal-footer">
                <form action="docUpdatePage" id="updateForm">
                    <input name="id" id="updateid" type="hidden" value=""/>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" onclick="updateConfirm()">确认</button>
                </form>
            </div>
        </div>
    </div>
</div>