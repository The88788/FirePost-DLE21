<!DOCTYPE html>
<html lang="ru">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
{headers}

<link rel="icon" href="{THEME}/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="{THEME}/css/bootstrap.min.css">
<link rel="stylesheet" href="{THEME}/css/icofont.min.css">

<link rel="stylesheet" href="{THEME}/css/app.css">
<link rel="stylesheet" href="{THEME}/css/engine.css">
<link rel="stylesheet" href="{THEME}/css/firepost.css?v=1.0.0">
</head>
<body class="bg-link-water">

{AJAX}
<div id="wrapper" class="wrapper">

{include file="modules/header.tpl"}

{include file="modules/sidemenu.tpl"}
    
<div class="page-content">
<div class="container">
    
<div class="row">

<div class="col-lg-[not-available=showfull|stats]8[/not-available][available=showfull|stats]12[/available]" id="article">
   
[available=main]
<div class="newsfeed-search">
<ul class="member-list">
<li class="active-member"><a href="{THEME}/../../"><span class="member-icon"><i class="icofont-page"></i></span><span class="member-text">Новые публикации</span></a></li>
</ul>
<ul class="search-list">
<li class="search-filter"><button class="drop-btn" type="button"><i class="icofont-abacus-alt"></i> <span style="font-size:13px">Сортировать</span></button>
<div class="drop-menu">{sort}</div></li>
</ul>
</div>
[/available]
    
[available=cat]<h1 class="item-title-page">{category-title}</h1>[/available]
[available=favorites]<h1 class="item-title-page">Ваши закладки</h1>[/available]
[available=lastcomments]<h1 class="item-title-page">Комментарии</h1><div class="post-view"><div class="post-comment border-top-0"><div class="comment-list pl-0 pr-0 border-bottom-0">[/available]
[available=newposts]<h1 class="item-title-page">Непрочитанное</h1>[/available]
    
{info}{content}
    
[available=lastcomments]</div></div></div>[/available]
    
</div>

[not-available=showfull|stats]{include file="modules/sidebar.tpl"}[/not-available]
    
</div></div></div>

{include file="modules/footer.tpl"}
    
</div>
    
<a href="#wrapper" data-type="section-switch" class="scrollup"><i class="icofont-bubble-up"></i></a>

<div id="header-search" class="header-search">
  <div class="header-search-form">
    <form method="post" action="{THEME}/../../index.php">
      <input type="hidden" name="do" value="search" />
      <input type="hidden" name="subaction" value="search" />
      <input type="search" name="story" placeholder="Поиск по сайту..." autofocus />
      <button class="search-btn" type="submit"><i class="icofont-search"></i></button>
    </form>
    <button class="close" type="button" aria-label="Close">&times;</button>
  </div>
</div>

<script src="{THEME}/js/firepost.js?v=1.0.0" defer></script>
</body>
</html>

