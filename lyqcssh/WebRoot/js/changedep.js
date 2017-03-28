function changedep(obj){
    if (obj.value == '业务部') {
        $("#ocp_yewu").css("display", "table-row");
        $("#ocp_anjian").css("display", "none");
        $("#ocp_kafia").css("display", "none");
        $("#ocp_zonghe").css("display", "none");
        
    }
    else 
        if (obj.value = '安检部') {
            $("#ocp_yewu").css("display", "none");
            $("#ocp_anjian").css("display", "table-row");
            $("#ocp_kafia").css("display", "none");
            $("#ocp_zonghe").css("display", "none");
        }
        else 
            if (obj.value = '"开发部') {
                $("#ocp_yewu").css("display", "none");
                $("#ocp_anjian").css("display", "none");
                $("#ocp_kafia").css("display", "table-row");
                $("#ocp_zonghe").css("display", "none");
            }
            else 
                if (obj.value = '综合部') {
                    $("#ocp_yewu").css("display", "none");
                    $("#ocp_anjian").css("display", "none");
                    $("#ocp_kafia").css("display", "none");
                    $("#ocp_zonghe").css("display", "table-row");
                }
}
