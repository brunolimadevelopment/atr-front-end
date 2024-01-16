<!DOCTYPE HTML>
<html lang="pt-BR">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width initial-scale=1 maximum-scale=1.0">
  <title><?php wp_title(); ?></title>
  <?php wp_head(); ?>
  <link rel="alternate" type="application/rss+xml" title="<?php echo get_bloginfo('name'); ?> Feed" href="<?php echo esc_url(get_feed_link()); ?>">
  <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.png" rel="apple-touch-icon">
  <?php echo '<link rel="icon" href="' . get_stylesheet_directory_uri() . '/_lib/_admin/assets/images/favicon.icon" type="image/x-icon">'; ?>
  <?php echo '<link rel="shortcut icon" href="' . get_stylesheet_directory_uri() . '/_lib/_admin/assets/images/favicon.ico" type="image/x-icon">'; ?>
</head>
<body <?php body_class(); ?>>