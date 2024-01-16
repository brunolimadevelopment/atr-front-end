<?php
/*
* Admin Style functions
* Desenvolvedor: Bruno Lima
*/

add_action('login_head', 'custom_login_logo');
function custom_login_logo() {

$nocolor            = 'rgba(0,0,0,0)';
$bg_color           = '#288F45'; //COR DO BAGROUND DA PÁGINA
$lb_color           = '#72777c'; //COR DOS LABEL'S DO FORM

$in_focus_shadow    = '#a1bae0'; //COR DA SOMBRA DOS CAMPOS (FOCUS)
$in_focus_border    = '#ccc'; //COR DA BORDA DOS CAMPOS (FOCUS)

$lg_text_color      = '#fff';    //COR DO TEXTO DO BOTÃO PRIMRÁRIO
$lg_text_color_h    = '#fff';    //COR DO TEXTO DO BOTÃO PRIMRÁRIO (HOVER)
$lg_color           = '#d17913'; //COR DO BOTÃO PRIMÁRIO
$lg_color_hover     = '#d17913'; //COR DA BOTÃO PRIMÁRIO HOVER
$lg_color_shadow    = $nocolor;  //COR DA SOMBRA DO BOTÃO PRIMRÁRIO
$lg_color_shadow_h  = $nocolor;  //COR DA SOMBRA DO BOTÃO PRIMRÁRIO (HOVER)
//$lg_border_color    = $nocolor;  //COR DA BORDA DO BOTÃO PRIMRÁRIO
$lg_border_color_h  = $nocolor;  //COR DA BORDA DO BOTÃO PRIMRÁRIO (HOVER)

$bt_color           = '#F49322'; //COR DO BOTÃO SECUNDÁRIO
$bt_color_h         = '#d17913'; //COR DO BOTÃO SECUNDÁRIO (HOVER)
$bt_text_color      = '#fff';    //COR DO TEXTO DO BOTÃO SECUNDÁRIO (HOVER)
$bt_text_color_h    = '#fff';    //COR DO TEXTO DO BOTÃO SECUNDÁRIO (HOVER)

$logow              = '170px';   //DIMENSÕES DO LOGO - LARGURA
$logoh              = '60px';    //DIMENSÕES DO LOGO - ALTURA

echo '
<style type="text/css">

body.login {
  background: '.$bg_color.' !important;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

#login {
  padding-top: 0;
  margin: 0;
}

.login h1 a {
  background-image: url('.get_bloginfo('template_directory').'/_lib/_admin/assets/images/atratis.svg) !important;
  background-size: contain !important;
  height: '.$logoh.' !important;width: '.$logow.' !important;
  padding-bottom: 0px;
  margin: 0px auto!important;
}


.login label {color: '.$lb_color.' !important;font-weight: bold;}
#login_error, .login .message {display: none;}

.wp-core-ui .button-primary {
  background: '.$lg_color.' !important;color: '.$lg_text_color.' !important;
  box-shadow: 0 1px 0 '.$lg_color_shadow.' !important;
  text-shadow: none;
  border: 0;
}

.wp-core-ui .button-primary:hover {
    background: '.$lg_color_hover.' !important;color: '.$lg_text_color_h.' !important;
}

.login #backtoblog, .login #nav {
  color: '.$bt_text_color.' !important;
  background: '.$bt_color.';
  border-radius: 5px;
  float: left;
  margin: 15px 0 0px !important;
  padding: 10px 0px !important;
  text-align: center;
  width: 100%;
}
.login #backtoblog:hover, .login #nav:hover {
    background: '.$bt_color_h.' !important;
    color: '.$bt_text_color_h.' !important;
}
.login #backtoblog a, .login #nav a {color: inherit !important;}


</style>';
}