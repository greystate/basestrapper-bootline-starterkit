describe "echo", ->
	beforeEach ->
		spyOn console, "log"
	
	it "writes a message", ->
		echo "Hello World"
		(expect console.log).toHaveBeenCalledWith "Hello World"
