/**
 * Created with IntelliJ IDEA.
 * User: farhad
 * Date: 8/23/14
 * Time: 2:38 PM
 * To change this template use File | Settings | File Templates.
 */


var count=1;
function loadAddfeature(){

    $(document).ready(function(){
        var newInput = $("<div class='row' style='margin-top: 1%;'><div class='col-lg-3'><div class='input-group'><span class='input-group-addon'><i class='fa fa-key'></i></span><input type='text' class='form-control' name='songfeaturekey" + count + "'/></div></div><div class='col-lg-3'><div class='input-group'><span class='input-group-addon'><i class='fa fa-vimeo-square'></i></span><input type='text' class='form-control' name='songfeaturevalue"+ count +"'/></div></div></div>");
        $('div#input-group2').after(newInput);


    });
    count++;
    console.log(count);
    $('div#input-group2').after("<input type='hidden' name='textboxcount' value='"+count+"'/>" );
}


