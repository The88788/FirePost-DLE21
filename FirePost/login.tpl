[not-group=5]
<button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-label="Меню пользователя" aria-expanded="false">
<span class="media">
<span class="media-body"><span class="item-title">{login}</span></span>
</span>
</button>

<div class="dropdown-menu dropdown-menu-right">
<ul class="admin-options">
[admin-link]<li><a href="{admin-link}" target="_blank" rel="noopener">Админпанель</a></li>[/admin-link]
<li><a href="{addnews-link}">Добавить пост</a></li>
<li><a href="{profile-link}">Профиль</a></li>
<li><a href="{pm-link}">Сообщения <span class="pull-right">({new-pm}-{all-pm})</span></a></li>
<li><a href="{favorites-link}">Избранное <span class="pull-right">({favorite-count})</span></a></li>
<li><a href="{newposts-link}">Непрочитанное</a></li>
<li><a href="{logout-link}">Выход</a></li>
</ul>
</div>
[/not-group]

[group=5]
<button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-label="Меню пользователя" aria-expanded="false">
<span class="media">
<span class="media-body"><span class="item-title">Войти</span></span>
</span>
</button>

<div class="dropdown-menu dropdown-menu-right" style="min-width:300px">
<form name="login-form" id="loginform" method="post" action="{THEME}/../../index.php" class="p-3">
<div class="form-group">
<label for="login_name">{login-method}</label>
<input type="text" name="login_name" id="login_name" autocomplete="username" required>
</div>
<div class="form-group">
<label for="login_password">Пароль</label>
<input type="password" name="login_password" id="login_password" autocomplete="current-password" required>
</div>
<div class="form-group mb-2">
<div class="admin_checkboxs">
<input type="checkbox" name="login_not_save" id="login_not_save" value="1"/>
<label for="login_not_save" style="font-weight:400">Не запоминать меня</label> 
</div>
</div>
<input type="submit" class="btn btn-primary mb-2 btn-block" value="Войти">
<input name="login" type="hidden" id="login" value="submit">
<a href="{registration-link}" class="btn btn-light btn-block">Регистрация на сайте</a>
<a href="{lostpassword-link}" class="btn btn-light btn-block">Восстановление пароля</a>
</form>
</div>
[/group]

