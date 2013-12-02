/**
 * Created by Jonezine on 29-10-2013.
 */
$(document).ready( function(){

    /*Alterar background da pagina welcome e animaçao*/
    var welcome = $('#welcometext');
    welcome.parent().parent().css( 'background-image', 'url("/assets/welcomeimage.jpg")');
    welcome.parent().parent().css( 'background-size', '110% auto');
    welcome.parent().parent().css( 'height', '450px');
    welcome.hide().fadeIn(1500);

    /*Accao do botao login*/
    $('#loginform').hide();
    $('#login').click( function(){
        $('#loginform').slideDown('fast');
        $(this).css("text-align","center") ;

    });
    $('#login').mouseleave( function(){
        $('#loginform').slideUp('fast');
    });

    /*Texto Notice ex:User password failed*/
    var notice = $('.notice');
    var alert = $('.alert');
    notice.css("color","green");
    alert.css("color","red");


});