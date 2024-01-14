<?php

/*

* Scripts

* Desenvolvedor: Bruno Lima

*/

function call_script() {


    wp_enqueue_style('main', get_template_directory_uri() . '/assets/css/main.min.css', array(), '2.0', false);
    wp_register_script('main', get_template_directory_uri() . '/assets/js/main.min.js', array(), '1.0', false);

    wp_enqueue_script('main');

}

add_action('wp_enqueue_scripts', 'call_script', 100);