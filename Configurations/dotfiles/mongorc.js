cmdCount = 1;

prompt = function() {
	return db + " " + (cmdCount++) + "> ";
}

/* Set the pretty print by default */
DBQuery.prototype._prettyShell = true