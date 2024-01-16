# Atratis

## 💻 Desktop

![Alt text](/assets/images/atratis.gif)

## 📱 Mobile

![Alt text](/assets/images/atratism.gif)

## 🚀 Technologies

This WP Theme was developed with the following technologies:

- HTML ✔
- CSS ✔
- JAVASCRIPT ✔
- JQUERY ✔
- BOOTSTRAP ✔
- GULP ✔
- PRE-PROCESSADOR SASS ✔
- PLUGIN ACF FREE ✔
- PLUGIN CONTACT FORM 7
- PHP

## How To Use

To clone and run this application, you'll need Git, installed on your computer. From your command line:

    # Clone this repository
        $ git clone https://github.com/brunolimadevelopment/atr-front-end

## Contact Form 7

Install the Contact Form 7 plugin then copy and paste this block of code to create your form.

```html
<div class="at-form">
  <h2 class="at-form__title">Deixe a sua mensagem</h2>
  <div class="at-form__row">
    <div class="at-form__input"><span>Nome</span>[text* nome id:nome]</div>
    <div class="at-form__input"><span>E-mail</span>[email* email id:email]</div>
  </div>
  <div class="at-form__row">
    <div class="at-form__input">
      <span>Telefone</span>[text* telefone id:tel]
    </div>
    <div class="at-form__input">
      <span>Endereço</span>[text* endereco id:endereco]
    </div>
  </div>
  <div class="at-form__row ">
    <div class="at-form__input at-form__input--textarea">
      <span>Mensagem</span>[textarea* observacao id:msg]
    </div>
  </div>
  <div class="at-form__row at-form__row--submit">
    [acceptance aceite optional class:iptAceite]
    <span class="texto"
      >Aceito as
      <a
        href="http://localhost:10023/privacy-policy/"
        title="termos de uso"
        target="_blank"
        >Políticas de Privacidade</a
      >.</span
    >[submit id:enviar class:at-btn "Enviar"]
  </div>
</div>
```

## Extra information

- Site Host: localhost
- Port: 10023
- Web Server: nginx
- PHP Version: 8.1.23
- Database: MySQL 8.0.16
- WordPress Version: 6.4.2
- Node Version: 20.5.0
- Npm: 10.3
- Gulp CLI: 0.0.4
- Gulp Local Version: 4.0.2
