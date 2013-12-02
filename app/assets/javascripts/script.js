/**
 * Created by Jonezine on 29-10-2013.
 */
$(document).ready( function(){

    /*Alterar background da pagina welcome*/
    var welcome = $('#welcometext');
    welcome.parent().parent().css( 'height', '450px');
    welcome.parent().parent().css( 'background', 'url("/assets/welcomeimage.jpg")');
    welcome.hide().fadeIn(1500);

    /*Accao do botao login*/
    $('#loginform').hide();
    $('#login').click( function(){
        $('')
        $('#loginform').slideDown('fast');
        $(this).css("text-align","center") ;

    });
    $('#login').mouseleave( function(){
        $('#loginform').slideUp('fast');
    });


});