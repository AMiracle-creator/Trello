<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<svg style="display: none">
    <symbol id="plus" viewBox="0 0 426.66667 426.66667">
        <g>
            <path
                    d="m405.332031 192h-170.664062v-170.667969c0-11.773437-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.558594-21.332031 21.332031v170.667969h-170.667969c-11.773437 0-21.332031 9.558594-21.332031 21.332031 0 11.777344 9.558594 21.335938 21.332031 21.335938h170.667969v170.664062c0 11.777344 9.558594 21.335938 21.332031 21.335938 11.777344 0 21.335938-9.558594 21.335938-21.335938v-170.664062h170.664062c11.777344 0 21.335938-9.558594 21.335938-21.335938 0-11.773437-9.558594-21.332031-21.335938-21.332031zm0 0"/>
        </g>
    </symbol>

    <symbol id="close" viewBox="0 0 14 14">
        <path fill-rule="evenodd" clip-rule="evenodd"
              d="M5.58579 7L0.292893 1.70711C-0.0976311 1.31658 -0.0976311 0.683418 0.292893 0.292893C0.683418 -0.0976311 1.31658 -0.0976311 1.70711 0.292893L7 5.58579L12.2929 0.292893C12.6834 -0.0976311 13.3166 -0.0976311 13.7071 0.292893C14.0976 0.683418 14.0976 1.31658 13.7071 1.70711L8.41421 7L13.7071 12.2929C14.0976 12.6834 14.0976 13.3166 13.7071 13.7071C13.3166 14.0976 12.6834 14.0976 12.2929 13.7071L7 8.41421L1.70711 13.7071C1.31658 14.0976 0.683418 14.0976 0.292893 13.7071C-0.0976311 13.3166 -0.0976311 12.6834 0.292893 12.2929L5.58579 7Z"
        ></path>
    </symbol>
</svg>

<section class="main__section board__section">
    <header class="main__header">
        <div class="main__header--right">
            <button class="main__header--block">
                Дом
            </button>
            <button class="main__header--dashboard">
                <span class="header__dashboard-text">Доски</span>
            </button>
        </div>
        <div class="main__header--middle">
            Trello
        </div>
        <div class="main__header--left">
            <button class="main__header--username">
                ДГ
            </button>
        </div>
    </header>
    <main class="main__content--board">
        <header class="header__board">
            <div class="header__board--right">
                <div class="header__board-item">
                    Best_coder mainer
                </div>
                <div class="vertical__line"></div>
                <div class="header__board-team">Best coders</div>
                <div class="vertical__line"></div>
                <div class="header__board--members">
                    <div class="header__board--member-block admin">
                        <button class="board__avatar">
                            ДГ
                        </button>
                        <span class="admin__symbol"></span>
                    </div>
                    <button class="board__avatar">
                        RM
                    </button>
                </div>

                <div class="vertical__line"></div>
                <div class="header__board-team" id="btnInvitation">Пригласить</div>
            </div>
            <div class="header__board--left">
                <button class="header__board-team header__board--menu" id="archiveBtn">Архив</button>
            </div>
        </header>

        <div class="lists__card" id="cards">
        </div>

        <div class="menu__board" id="archiveBoard">
            <div class="menu__board--title">
                Архив
                <svg class="symbol__close--menu">
                    <use xlink:href="#close"></use>
                </svg>
            </div>
            <div class="menu__board--content">
                <div class="menu__board--item">
                    <a href="#" class="menu__board--card notext-decoration">
                        <span class="archive__name">создание регистрации</span>
                    </a>
                    <p class="menu__board--action">
                        <a href="#" class="link__back">Вернуть на доску</a>
                        <span class="notext-decoration delitel"> - </span>
                        <a href="#" class="link__delete">Удалить</a>
                    </p>
                </div>
            </div>
        </div>

    </main>
    <!--    <app-card-content></app-card-content>-->

    <div class="header__board--popup" id="popup_member">
        <div class="header__board--title">
            <button class="board__avatar--popup">
                ДГ
            </button>
            <div class="header__popup--info">
                <span class="header__popup--username">Дмитрий Герасимов</span>
                <span class="header__popup--email">dmitry.iti.ger@gmail.com</span>
            </div>

            <svg class="symbol__close--popup">
                <use xlink:href="#close"></use>
            </svg>
        </div>
        <div class="header__popup--content">
            <a href="#" class="header__popup--a">Удалить с доски...</a>
        </div>
    </div>

    <div class="popup__section--invitation">
        <div class="popup__invitation">
            <svg class="symbol__close--invitation">
                <use xlink:href="#close"></use>
            </svg>
            <div class="popup__invitation--title">
                Пригласить на доску
            </div>
            <form class="popup__invitation--form">
                <div class="popup__invitation--group">
                    <input type="text" placeholder="Адрес электронной почты" class="popup__invitation--input">
                    <div class="popup__invitation--searched">
                        <a href="#" class="popup__invitation--item notext-decoration">
                            <div class="main__header--username board__avatar">
                                ДГ
                            </div>
                            <div class="popup__invitation--email">dmitryitit@gmail.com</div>
                        </a>

                    </div>
                </div>
                <button class="popup__invitation--btn">Отправить приглашение</button>
            </form>
        </div>
    </div>
</section>

<section class="menu__section">
    <header class="menu__header">
        Учетная запись
        <svg class="symbol__close">
            <use xlink:href="#close"></use>
        </svg>
    </header>
    <div class="menu__user">
        <button class="main__header--username menu__user--avatar">
            ДГ
        </button>
        <div class="menu__user--info">
            <div class="menu__user-name">Дмитрий Герасимов</div>
            <div class="menu__user-email">dmitry.itis.gg@gmail.com</div>
        </div>
    </div>
    <ul class="menu__user--ul">
        <li class="menu__user--li">Выйти</li>
    </ul>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://www.jsviews.com/download/jsrender.min.js"></script>

<script id="theTmpl" type="text/html">
    {{for lists}}
    <div class="card-list-container">
        <header class="card__list--title">
            {{:name }}
        </header>
        <div class="card__list--cards">
            {{for cards}}
            <div class="drag_start" draggable="true" v-on:dragstart="startDrag($event,card)"
                 v-for="card in getCards(list)">
                <div class="card-container" v-on:click="clickCard">
                    <div class="card-body">
                        <p>
                            {{:text }}
                        </p>
                    </div>
                </div>
            </div>
            {{/for}}
        </div>
        <div class="card__list--footer notext-decoration">
            <a href="#" v-if="listsRefs[i]" class="notext-decoration btn__add--card" v-on:click="addCard(i)">
                <svg class="symbol__plus">
                    <use xlink:href="#plus"></use>
                </svg>
                <div class="notext-decoration add__card">Добавить карточку</div>
            </a>
            <div v-if="!listsRefs[i]" class="card__textarea">
        <textarea class="card__add--textarea" name="card__text" id="card__text" cols="30" rows="10"
                  placeholder="Введите название карточки"></textarea>
                <div class="action__card">
                    <button class="card__add--btn" v-on:click="clickBtnCard(i)">Добавить карточку</button>
                    <svg class="symbol__close--cardAdd" v-on:click="closeCard(i)">
                        <use xlink:href="#close"></use>
                    </svg>
                </div>
            </div>
        </div>
    </div>

    {{/for}}
</script>

<script>
    const menu = $('.menu__section');
    const btnMenu = $('.main__header--username');
    const closeBtnMenu = $('.symbol__close');
    const memberBoard = $('#popup_member');
    const btnMember = $('.board__avatar');
    const closePopupMember = $('.symbol__close--popup');
    const popupInvitation = $('.popup__section--invitation');
    const btnPopupInvitation = $('#btnInvitation');
    const closePopupInvitation = $('.symbol__close--invitation');
    const archive = $('#archiveBoard');
    const btnArchive = $('#archiveBtn');
    const closeArchive = $('.symbol__close--menu');
    const exData = {
        address: {
            street: 'Main Street'
        }
    };

    const lists = {
        lists: [
            {
                id: 1,
                name: 'ListOne'
            },
            {
                id: 2,
                name: 'ListTwo',
            },
            {
                id: 3,
                name: 'ListThree'
            },
        ]
    };
    const cards = {
        cards: [{
            id: 1,
            text: 'gggg',
            name: 'ListOne'
        },
            {
                id: 2,
                text: 'dfsdf',
                name: 'ListOne'
            },

            {
                id: 3,
                text: 'dfsdfs',
                name: 'ListOne'
            },
            {
                id: 4,
                text: 'dfssfsdfdsdf',
                name: 'ListTwo'
            },
            {
                id: 5,
                text: 'fsdfs',
                name: 'ListThree'
            },
            {
                id: 6,
                text: 'fsdfs',
                name: 'ListThree'
            },
            {
                id: 7,
                text: 'fsdfs',
                name: 'ListThree'
            }]
    };

    window.onload = function () {

    };

    function getCards() {

    }

    btnMenu.click(function () {
        memberBoard.removeClass('popup__active');
        menu.toggleClass('menu__active');
    });

    closeBtnMenu.click(function () {
        menu.removeClass('menu__active');
    });

    btnMember.click(function () {
        memberBoard.toggleClass('popup__active');
    });

    closePopupMember.click(function () {
        memberBoard.removeClass('popup__active');
    });

    btnPopupInvitation.click(function () {
        memberBoard.removeClass('popup__active');
        menu.removeClass('menu__active');
        popupInvitation.addClass('active__invitation');
    });
    closePopupInvitation.click(function () {
        popupInvitation.removeClass('active__invitation');
    });

    btnArchive.click(function () {
        archive.addClass('active__menu');
    });

    closeArchive.click(function () {
        archive.removeClass('active__menu');
    });

    const tmpl = $.templates("#theTmpl");
    const htmlOutput = tmpl.render([lists, cards]);

    $('#cards').html(htmlOutput);

</script>
</body>
</html>