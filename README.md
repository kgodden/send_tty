# send_tty
A bash script for sending a string to a serial (rs232) port and waiting for a response.

Use it like this:
	
`./send_tty.sh "my-command" /dev/ttyPS0`

This will send the text "my-command" to /dev/ttyPS0, wait for a response, and then output the response to stdout.  The response must be terminated by an EOL character.

Some more info and a discuyssion can be found [here](https://www.ridgesolutions.ie/index.php/2019/03/08/bash-send-data-to-serial-rs232-port-and-wait-for-response/).
