<?php include_once( ABSPATH . 'wp-admin/includes/plugin.php' ); ?>
<section class="at-contact" id="contact">
    <div class="container">
        <div class="row at-contact-grid">
            <div class="col-md-3">
                <h2 class="at-title-section">Entre em contato com o time da Atratis</h2>
                <p class="at-description-section">Preencha o formulário e em breve nossa equipe entrará em contato..</p>
                <div>
                    <div class="at-contact__option"><i class="at-icon at-icon--whatsapp"></i><span>(85) 9.8194-1721</span></div>
                    <div class="at-contact__option"><i class="at-icon at-icon--location"></i><span>Av. Santos Dumont, 6740 Sala 1716, Cocó, Fortaleza • Ceará</span></div>
                </div>
            </div>
            <div class="col-md-7">
                <?php 
                    echo (is_plugin_active('contact-form-7/wp-contact-form-7.php')) 
                    ? do_shortcode('[contact-form-7 id="5a4363c" title="Contato"]') 
                    : 'Instale o plugin Contact Form 7.';
                    ?>
            </div>
        </div>
    </div>
</section>