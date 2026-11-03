<div class="card-body bg-white rounded">
    
<h1 class="item-title-page">Обратная связь</h1>

<div class="alert alert-info fs-13 mb-4">
<b>Уважаемые посетители нашего сайта!</b><br>
У Вас есть вопрос, мы будем рады Вас выслушать и постараемся ответить.<br>
Мы оставляем за собой право не отвечать на реплики и не публиковать письма.<br> 
Рекомендуем не использовать ненормативную лексику, поскольку такие сообщения удаляются автоматически.
</div>
    
<div class="row">

[not-logged]
<div class="col-lg-6"><div class="form-group">
<input placeholder="Ваше имя" type="text" maxlength="35" name="name" id="name" required>
</div></div>

<div class="col-lg-6"><div class="form-group">
<input placeholder="Ваш E-mail" type="email" maxlength="35" name="email" id="email" required>
</div></div>
[/not-logged]
    
<div class="col-lg-6"><div class="form-group">
<input placeholder="Тема сообщения" type="text" maxlength="45" name="subject" id="subject" required>
</div></div>

<div class="col-lg-6"><div class="form-group">
{recipient}
</div></div>

<div class="col-lg-12"><div class="form-group">
<textarea placeholder="Сообщение" name="message" id="message" rows="8" class="wide" required></textarea>
</div></div>

[attachments]
<div class="col-lg-12"><div class="form-group">
<input name="attachments[]" type="file" class="pt-2" multiple>
</div></div>
[/attachments]

[question]<div class="form-group"><label for="question_answer">{question}</label><input type="text" name="question_answer" id="question_answer" required></div>[/question]
[sec_code]<div class="form-group"><label for="sec_code">Код с картинки</label><div>{code}</div><input type="text" name="sec_code" id="sec_code" autocomplete="off" required></div>[/sec_code]
[recaptcha]
<div class="col-lg-12"><div class="form-group">
{recaptcha}
</div></div>
[/recaptcha]

<div class="col-lg-12">
<button class="btn btn-primary btn-block" type="submit" name="send_btn">Отправить сообщение</button>
</div>
    
</div></div>


