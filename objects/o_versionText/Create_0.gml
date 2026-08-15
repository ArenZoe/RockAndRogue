//send a request to view the windows options file on the github
//results will be send to the async HTTP event in this object
var _map_headers = ds_map_create();
request_id = http_get("https://raw.githubusercontent.com/ArenZoe/RockAndRogue/refs/heads/main/options/windows/options_windows.yy");
ds_map_destroy(_map_headers);