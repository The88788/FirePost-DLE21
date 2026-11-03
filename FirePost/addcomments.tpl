[not-logged]<div class="row">
    
<div class="col-lg-6"><div class="form-group mb-3">
<input id="name" name="name" type="text" placeholder="Ваше имя" class="form-control">
</div></div>

<div class="col-lg-6"><div class="form-group mb-3">
<input id="mail" name="mail" type="email" placeholder="Ваш Email" class="form-control">
</div></div>
    
</div>[/not-logged]
    
<div class="form-group mb-3">{editor}</div>

[question]<div class="form-group"><label for="question_answer">{question}</label><input type="text" name="question_answer" id="question_answer" required></div>[/question]
[sec_code]<div class="form-group"><label for="sec_code">Код с картинки</label><div>{sec_code}</div><input type="text" name="sec_code" id="sec_code" autocomplete="off" required></div>[/sec_code]
[recaptcha]
<div class="form-group mb-3">
{recaptcha}
</div>
[/recaptcha]
    
<button name="submit" type="submit" id="submit" class="btn btn-block btn-primary">Отправить</button>
