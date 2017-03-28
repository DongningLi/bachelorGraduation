
$(document).ready(function(){

    $(".delname").click(function(){
        if (window.confirm("确定删除吗？")) {
            return true;
        }
        else {
            return false;
        }
    })
    
})

