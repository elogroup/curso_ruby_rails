$(function(){
	$('#cria_nova_tarefa, #nova_tarefa_cancela').bind('click',function(){
		$('#form_tarefa').children().toggle();
	});
	
	$('#form_projeto_tarefa').bind('ajax:complete',function(xhr,status){
		$('#form_tarefa').children().toggle();
		$('#resutlado').html(status.responseText);
	});
});