// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function(){
	$('.remove-tarefa').bind('ajax:success', function(){
		var elemento_id = $(this).data('elemento_id');
		$('#'+elemento_id).remove();
	});	
})
