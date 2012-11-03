if Meteor.isClient

	Template.NewProject.events = 

		"click .createProjectButton": (event) ->
  		Projects.insert(name: $('#newProjectName').val(), details: $('#newProjectDetails').val())
  		$('#newProjectModal').modal('hide')