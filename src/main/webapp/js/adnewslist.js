/**
 * Created by Simrit on 2017/7/30.
 */
function pageFunc(page){
    $('#page').val(page);
    $('#newsPageFrom').submit();
}
function deleteItem(id) {
    //发送post请求
    $.post(
        'newsDelete',
        {
            id:id
        },
        function(data,status){
            if(status=="success"){
                alert("删除成功" );
            }
            else {
                alert("删除失败");
            }
        }
    );
}
