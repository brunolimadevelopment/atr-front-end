<?php
/**
* Custom Post Types
* Desenvolvedor: Bruno Lima
*/

function post_type_tratamentos_register() {
    $labels = array(
        'name' => 'Tratamentos',
        'singular_name' => 'Tratamento',
        'menu_name' => 'Tratamentos',
        'add_new' => _x('Adicionar Tratamentos', 'item'),
        'add_new_item' => __('Adicionar Novo Tratamento'),
        'edit_item' => __('Editar Tratamento'),
        'new_item' => __('Novo Tratamento')
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'tratamentos'),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => true,
        'menu_position' => 4,
        'menu_icon' => 'dashicons-plus-alt',
        'supports' => array('title','editor', 'thumbnail')
    );

    register_post_type('tratamentos', $args);
}
add_action('init', 'post_type_tratamentos_register');

function post_type_depoimentos_register() {
    $labels = array(
        'name' => 'Depoimentos',
        'singular_name' => 'Depoimento',
        'menu_name' => 'Depoimentos',
        'add_new' => _x('Adicionar Depoimentos', 'item'),
        'add_new_item' => __('Adicionar Novo Depoimento'),
        'edit_item' => __('Editar Depoimento'),
        'new_item' => __('Novo Depoimento')
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'depoimentos'),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => true,
        'menu_position' => 5,
        'menu_icon' => 'dashicons-megaphone',
        'supports' => array('title','editor', 'thumbnail')
    );

    register_post_type('depoimentos', $args);
}
add_action('init', 'post_type_depoimentos_register');