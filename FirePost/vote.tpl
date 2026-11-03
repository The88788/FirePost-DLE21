<div class="widget-heading"><h3 class="widget-title">{title}</h3></div>

[votelist]
<form method="post" name="vote">
[/votelist]

<div class="vote_list text-muted">{list}</div>

[voteresult]
<div class="vote_votes grey">Проголосовало: {votes}</div>
[/voteresult]

[votelist]
<input type="hidden" name="vote_action" value="vote">
<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
<button class="btn btn-primary rounded btn-block mb-2" type="button" onclick="doVote('vote'); return false;">Голосовать</button>
<button class="btn btn-secondary rounded btn-block" type="button" onclick="doVote('results'); return false;">Результаты</button>

</form>
[/votelist]
