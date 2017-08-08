function pageFunc(page){
    $('#page').val(page);
    $('#docPageFrom').submit();
}


function deleteItem(id) {
    //发送post请求
    $.post(
        'docDelete',
        {
            id:id
        },
        function(data,status){
            if(data==MSG_SUCCESS){
                alert("删除成功" );
            }
            else if(data==MSG_FAILED){
                alert("删除失败");
            }
        }
    );
}
