# Description:
#  Wishes Members of SDSLabs Happy Birthday and also reminds other members :P
#
#
# Examples:
#   Happy Birthday Punit!! Turned {age} today..Chapo toh banti hai !!!
#
# Source of Data:
#	Takes data from Google Spreadsheet.
#
# Author:
#   Akashdeep Goel (@akash)
#   Developer at SDSLabs (@sdslabs)

http = require 'http'

date = 

b_boy = ""

module.exports = (robot) ->
	robot.hear /Birthdays/i, (res) ->
		robot.http(process.env.INFO_SPREADSHEET_URL).get() (err, resp, body) ->
      		response = JSON.parse body 
      		if response["version"]
      			res.send #{process.env.INFO_SPREADSHEET_URL}			