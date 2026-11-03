<section class="card-body bg-white rounded mb-4 firepost-pm"><h1 class="item-title-page">Личные сообщения</h1>
<nav class="pm-menu mb-4" aria-label="Личные сообщения">[inbox]<span class="btn btn-light">Диалоги</span>[/inbox] [new_pm]<span class="btn btn-primary">Написать сообщение</span>[/new_pm]</nav>
<div class="mb-4">{pm-progress-bar}<small>Заполнено {proc-pm-limit}% из {pm-limit} сообщений</small></div>
[pmlist]<div class="table-responsive">{pmlist}</div>[/pmlist]
[newpm]<div class="form-group"><label for="pm_to">Получатель</label><input type="text" name="name" id="pm_to" value="{author}" required></div>
<div class="form-group"><label for="pm_subject">Тема</label><input type="text" name="subj" id="pm_subject" value="{subj}" required></div>
<div class="form-group" id="comment-editor">{editor}</div>
[sec_code]<div class="form-group"><label for="sec_code">Код с картинки</label>{sec_code}<input name="sec_code" id="sec_code" required></div>[/sec_code]
[recaptcha]<div class="form-group">{recaptcha}</div>[/recaptcha]
[question]<div class="form-group"><label for="question_answer">{question}</label><input name="question_answer" id="question_answer" required></div>[/question]
<button name="add" type="submit" class="btn btn-primary">Отправить</button> <button type="button" class="btn btn-light" onclick="dlePMPreview()">Предпросмотр</button>[/newpm]
</section>
[readpm]<section class="card-body bg-white rounded mb-4 firepost-pm"><h2 class="h4">{subj}</h2>[not-self-dialog]<p>Переписка: {user-dialog}</p>[/not-self-dialog]
<div class="pm-thread">[messages]<article class="pm-message[pm-author] pm-own[/pm-author]">
<div class="media mb-2"><img src="{foto}" alt="" width="44" height="44" class="rounded-circle mr-3"><div class="media-body">{author}<br><small>{date}</small></div></div>
<div class="pm-text">{text}</div>[signature]<div class="text-muted">{signature}</div>[/signature]
<div class="pm-actions">[reply]Цитировать[/reply] [pm-edit]Редактировать[/pm-edit] [del]Удалить[/del]</div>
</article>[/messages]</div><h3 class="h5 mt-4">Ответить</h3><div id="comment-editor">{editor}</div><button type="submit" name="submit" class="btn btn-primary mt-3">Ответить</button>
</section>[/readpm]

