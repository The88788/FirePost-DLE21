<div class="card-body bg-white rounded">
    
<h1 class="item-title-page">Восстановление пароля</h1>
    
<div class="form-group">
<label for="lostname">Логин или электронная почта</label>
<input type="text" name="lostname" id="lostname" required autocomplete="username" placeholder="Логин или E-mail">
</div>
		
[sec_code]<div class="form-group"><label for="sec_code">Код с картинки</label><div>{code}</div><input type="text" name="sec_code" id="sec_code" autocomplete="off" required></div>[/sec_code]
[recaptcha]
<div class="form-group">
{recaptcha}
</div>
[/recaptcha]

<button class="bbcodes" name="submit" type="submit">Восстановить</button>
    
</div>

