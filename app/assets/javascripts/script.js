/**
 * Created by Jonezine on 29-10-2013.
 */
$(document).ready( function(){


    /*Accao do botao login*/
    $('#loginform').hide();
    $('#login').click( function(){
        $('#loginform').slideDown('fast');
        $(this).css("text-align","center") ;

    });
    $('#login').mouseleave( function(){
        $('#loginform').slideUp('fast');

    });


});