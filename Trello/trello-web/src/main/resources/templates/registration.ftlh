<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>


<section class="login__section">
    <header class="login__header">
        <div class="logo__login">
            <h2 class="logo__header__text">Trello</h2>
        </div>
    </header>
    <div class="login__content">
        <form class="login__form" method="post">
            <div id="error" class="error__block">
                <p class="error__message">
                    Аккаунт с таким адресом электронной почты не существует
                </p>
            </div>
            <h1 class="login__form--title">Вход в Trello</h1>
            <div class="form__group">
                <input type="text" name="email" class="login__form--field"
                       placeholder="Укажите адрес электронной почты">
            </div>
            <div class="form__group">
                <input type="password" name="password" class="login__form--field" placeholder="Введите пароль">
            </div>
            <a  href="/oauth2/authorization/google" class="login__btn--vk">
                <span class="btn__vk--text"></span>Войти через Google
            </a>
            <button type="submit" class="login__btn--input">Зарегистрироваться</button>
        </form>
    </div>
</section>

</body>
</html>