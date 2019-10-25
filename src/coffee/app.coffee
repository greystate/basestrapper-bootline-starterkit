# Global app object 
@app = window.app ? {}

# Main controller for the page's functions
class AppController
	constructor: () ->
		@setupThing()

	setupThing: () ->

# Start everything when the page is ready
if typeof $ is "function"
	$ ->
		app.controller = new AppController


# Imports
# @codekit-append "component.coffee"