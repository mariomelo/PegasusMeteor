if Meteor.isClient

	Template.Projects.AllProjects = ->
    	Projects.find {},
      		sort:
        		name: 1

	Template.Projects.events = 

		"blur, keypress .ProjectEdit": (event) ->
			updatedField = {}
			updatedField[event.target.name] = event.target.value
			if event.keyCode is 13 or event.keyCode is undefined
				Projects.update @_id,
			    	$set:
			      		updatedField
			  $(event.target).hide().siblings('.view').show()
			  $(event.target).parent().removeClass('editing')

		"click .ProjectView": (event) ->
  		$(event.target).hide().next('.edit').show().focus()
  		$(event.target).parent().addClass('editing')

  	"mouseenter .ProjectTile": (event) ->
  		$(event.target).children('.detail').slideDown()

  	"mouseleave .ProjectTile": (event) ->
  		$(event.target).children('.detail').slideUp()

  	"click .createNewProject": (event) ->
  		$('#newProjectModal').modal()

