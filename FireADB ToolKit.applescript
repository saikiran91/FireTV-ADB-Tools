property defaultProxyPort : "8888"

-- Try to determine the adb path dynamically
set adbPath to do shell script "
if source ~/.bash_profile && which adb > /dev/null; then
   which adb
elif source ~/.zshrc && which adb > /dev/null; then
   which adb
elif source ~/.bashrc && which adb > /dev/null; then
   which adb
else
   echo 'adb not found'
fi"

-- Check if adb was found
if adbPath is "adb not found" then
	display dialog "ADB not found. Please ensure it's installed and available in PATH." buttons {"Back"} default button "Back"
	return
end if

repeat
	-- Main Menu
	set options to {"Find FireTV and adb connect", "Connect to proxy", "Verify proxy", "Delete proxy", "Launch ControlPanel"}
	set choice to choose from list options with title "Fire TV ADB tools" default items {"Find FireTV and adb connect"}
	
	if choice is false then
		-- User pressed "Cancel"
		exit repeat
	else
		set choice to item 1 of choice
	end if
	
	-- Perform actions based on user choice
	if choice is "Find FireTV and adb connect" then
		-- Finding Fire TV IP
		set fireTVIP to do shell script "arp -a | awk '/3c:e4:41/ {print $2}' | tr -d '()'"
		-- Connecting via adb
		set adbConnectResult to do shell script adbPath & " connect " & fireTVIP & ":5555"
		display dialog "Fire TV found at: " & fireTVIP & linefeed & adbConnectResult buttons {"Back"} default button "Back"
	else if choice is "Connect to proxy" then
		-- Prompt the user for the Proxy IP
		set proxyDialog to display dialog "Enter Proxy IP:" default answer (do shell script "ifconfig en0 | grep 'inet ' | awk '{print $2}'") buttons {"Back", "OK"} default button "OK"
		
		if button returned of proxyDialog is "Back" then
			return
		end if
		
		set macIP to text returned of proxyDialog
		
		-- Prompt the user for the Proxy Port
		set portDialog to display dialog "Enter Proxy Port:" default answer defaultProxyPort buttons {"Back", "OK"} default button "OK"
		
		if button returned of portDialog is "Back" then
			return
		end if
		
		set proxyPort to text returned of portDialog
		
		do shell script adbPath & " shell settings put global http_proxy " & macIP & ":" & proxyPort
		display dialog "Proxy set on Fire TV to " & macIP & ":" & proxyPort buttons {"Back"} default button "Back"
	else if choice is "Verify proxy" then
		set currentProxy to do shell script adbPath & " shell settings get global http_proxy"
		display dialog "Current proxy setting on Fire TV: " & currentProxy buttons {"Back"} default button "Back"
	else if choice is "Delete proxy" then
		do shell script adbPath & " shell settings put global http_proxy :0"
		display dialog "Proxy deleted from Fire TV." buttons {"Back"} default button "Back"
	else if choice is "Launch ControlPanel" then
		do shell script adbPath & " shell am start -n com.amazon.ssm/.ControlPanel"
		display dialog "ControlPanel launched on Fire TV." buttons {"Back"} default button "Back"
	end if
end repeat
