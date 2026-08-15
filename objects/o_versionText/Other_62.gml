if (async_load[? "id"] != request_id) exit;
var newVersion= "0.0.0.0";
var _status = async_load[? "status"];
if (_status < 0)
{
    // Error occurred
    // do nothing, we don't want to bloat the game with extra checks
    exit;
}

if (_status == 1)
{
    // Downloading
    // do nothing, we don't need a loading bar for this
    exit;
}

if (_status == 0)
{
    // Request completed!
    
    if (async_load[? "http_status"] == 200)
    {
        // Request was succesful
		// we now have the data from the repo's windows options file
		
		//move the text on the page into the payload var
        var _dataPayload = async_load[? "result"];
		// parse the payload into a json struct
		var windowsOptions = json_parse(_dataPayload);
		//check if the version is in the struct
		//if it is, set the newVersion var to it
		if struct_exists(windowsOptions, "option_windows_version"){newVersion = windowsOptions.option_windows_version;}
		

		//split the version numbers into arrays for comparison
		var newVersionSplit = string_split(newVersion,".");
		var currentVersionSplit = string_split(GM_version,".");
		
		//if the version number is greater, then set update available to true
		if (newVersionSplit[0] > currentVersionSplit[0])
		{
			global.updateAvailable = true;
		}
		if ((newVersionSplit[1] > currentVersionSplit[1]) and (newVersionSplit[0] >= currentVersionSplit[0]))
		{
			global.updateAvailable = true;
		}
		if ((newVersionSplit[2] > currentVersionSplit[2]) and (newVersionSplit[1] >= currentVersionSplit[1]) and (newVersionSplit[0] >= currentVersionSplit[0]))
		{
			global.updateAvailable = true;
		}
		if ((newVersionSplit[3] > currentVersionSplit[3]) and (newVersionSplit[2] >= currentVersionSplit[2]) and (newVersionSplit[1] >= currentVersionSplit[1]) and (newVersionSplit[0] <= currentVersionSplit[0]))
		{
			global.updateAvailable = true;
		}
    }
}