/**
 * Created by Jonezine on 29-10-2013.
 */
$(document).ready( function(){

    /*Alterar background da pagina welcome e animaçao*/
    var welcome = $('#welcometext');
    welcome.parent().parent().css( 'background-image', 'url("/images/welcomeimage.jpg")');
    welcome.parent().parent().css( 'background-size', '110% auto');
    welcome.parent().parent().css( 'height', '450px');
    welcome.hide().fadeIn(1500);



    /*Accao do botao login*/
    $('#loginform').hide();
    $('#loginform').css('text-align','center');
    $('#login').click( function(){
        $('.not_login').hide();
        $(this).css('background', '#477000');
        $(this).css('padding', '0 40px');
        $('#loginform').delay(300).slideDown();
    });
    $('#loginform').mouseleave( function(){
        $('.not_login').show();
        $('#login').css('padding', '0 10px');
        $('#login').css('background', '#6aa001');
        $('#loginform').slideUp();
    });



    /*Texto Notice ex:User password failed*/
    var notice = $('.notice');
    var alert = $('.alert');
    notice.css("color","green");
    alert.css("color","red");


});