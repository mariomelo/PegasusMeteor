if Meteor.isClient

	Template.Projects.AllProjects = ->
    	Projects.find {},
      		sort:
        		name: 1

	Template.Projects.events = "click .ProjectTitle": ->
  		printObject this
  		alert evento.target

	Template.Projects.events = 

		"blur, keypress .ProjectTitleEdit": (event) ->
			if event.keyCode is 13 or event.keyCode is undefined
				Projects.update @_id,
			    	$set:
			      		name: event.target.value
			  $(event.target).hide().siblings('.view').show()

		"click .ProjectTitle": (event) ->
  		$(event.target).hide().siblings('.edit').show().focus()

