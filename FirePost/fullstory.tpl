<div class="block-box user-single-blog">
<div class="blog-content-wrap">

<div class="blog-entry-header">
<div class="entry-category">{link-category}</div>
<h1 class="entry-title">{title}</h1>
<div class="row align-items-center">
<div class="col-lg-8">
<ul class="entry-meta">
<li>{author}</li>
<li><i class="icofont-calendar"></i> {date}</li>
<li><i class="icofont-comment"></i> {comments-num}</li>
<li><i class="icofont-share"></i> {views}</li>
</ul>
</div>
<div class="col-lg-4">
<button type="button" class="btn btn-light share-article"><i class="icofont-share"></i> Поделиться</button><span class="share-status" role="status"></span>
</div>
</div></div>

<div class="blog-content text-justify mb-3">{full-story}</div>
[tags]<div class="post_tags mb-4"><i class="icofont-tags"></i> {tags}</div>[/tags]



<div class="fbtm fx-row fx-middle fbtm-one border-top pt-4 pb-4 border-bottom mb-5">
<div class="ferror fx-row fx-middle fx-1">
<div class="ferror-btns fx-row"><div>Ctrl</div> <div>Enter</div></div>
<div class="ferror-text fx-1"><button type="button" class="report-typo">Сообщить об ошибке</button><div>Выделите фрагмент до 255 символов и нажмите Ctrl+Enter или эту кнопку.</div></div>
</div>
[not-group=5]<div class="ffav">[add-favorites]<span class="icofont-book-mark"></span>Добавить <div>в мои закладки</div>[/add-favorites][del-favorites]<span class="icofont-book-mark"></span>Удалить <div>из моих закладок</div>[/del-favorites]</div>[/not-group]
[rating-type-4]<div class="frating fx-row">
<div class="flike">[rating-plus]<span class="icofont icofont-thumbs-up"></span>Нравится <span class="frating-counter">{likes}</span>[/rating-plus]</div>
<div class="fdislike">[rating-minus]<span class="icofont icofont-thumbs-down"></span>Не нравится <span class="frating-counter">{dislikes}</span>[/rating-minus]</div>					
</div>[/rating-type-4]
</div>

<div class="post-view" id="comments">
<div class="post-comment border-top-0">
<h3 class="item-title mb-4">Комментарии ({comments-num})</h3>
<div class="comment-list pl-0 pr-0 border-bottom-0">{comments}</div>
{navigation}
</div></div>


<div class="blog-comment-form mt-5">
<h3 class="item-title">Написать комментарий</h3>
{addcomments}
</div>

</div></div>

