$ ->
	$('.add_switch').on 'ajax:success', (Event) ->
		location.reload()

	$('.add_switch').on 'ajax:error', (Event) ->
		console.log Event
