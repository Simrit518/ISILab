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
            if(data=='success'&&status=='success'){
                location.reload();
            }
            else {
                alert("删除失败");
            }
        }
    );
}

function updateModelShow(id){
    var id=id;
    $('#updateid').val(id);
    $('#updateModel').modal('show');
}

function updateConfirm(){
    $('#updateForm').submit();
}