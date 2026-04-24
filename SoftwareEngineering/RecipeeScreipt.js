$(document).ready(function(){
    $('#List').click(function(){
        var S = $('#ING').val();
        var T = $('#RI').val();
        $('#RI').val(T + S + "\n");
    });

    $('#SubmitRecipe').click(function(){
        
    });
});