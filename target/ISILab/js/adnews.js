function pageFunc(page){
    $('#page').val(page);
    $('#newsPageForm').submit();
}
function updateModelShow(id){
    var id=id;
    $('#updatenewsid').val(id);
    $('#updateModel').modal('show');
}
function updateConfirm(){
    $('#updateForm').submit();
}

function deleteItem(id) {
    //发送post请求
    $.post(
        'newsDelete',
        {
            id:id
        },
        function(data,status){
            if(data=='success'&&status=='success'){
                location.reload();
            }
            else {
                alert("删除失败");
            }
        }
    );
}
/*function deleteItem() {
    $('#deleteModal').modal('hide');
    var id=$('#newsid').html();
    //发送post请求
    $.post(
        'newsDelete',
        {
            id:id
        },
        function(data,status){
            if(data=='success'&&status=='success'){
                location.reload();
            }
            else {
                alert("删除失败");
            }
        }
    );
}*/
