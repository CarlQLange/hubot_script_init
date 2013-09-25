fs = require 'fs'

###
# Usage:
# 	hubot_script_init mynewscript
###

main = () ->
	script_name = process.argv[2] or 'newscript'
	filename = "#{script_name}.coffee"
	template = """
module.exports = (robot) ->
	robot.respond /thanks/i, (msg) ->
		msg.reply "You're welcome!"
"""
	if not fs.exists filename
		fs.writeFile filename, template, -> "Created a new hubot script template at ./#{filename}. Enjoy!"

main()
