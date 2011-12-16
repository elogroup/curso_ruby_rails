$(function(){
	$('#cria_nova_tarefa, #nova_tarefa_cancela').bind('click',function(){
		$('#form_tarefa').children().toggle();
	});
});