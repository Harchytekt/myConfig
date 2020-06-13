-- To be placed in ~/Library/Scripts/Applications/Safari
tell application "Safari"
	set thisPage to URL of document 1 as string -- get URL
	set theCommand to "php -r 'print(urlencode(\"" & thisPage & "\"));'" -- encode the URL properly
	set thisEncodePage to do shell script theCommand -- execute the command
	open location "http://validator.w3.org/check?uri=" & thisEncodePage & "&charset=%28detect+automatically%29&doctype=Inline&group=0"
	activate -- to open in a new tab
end tell