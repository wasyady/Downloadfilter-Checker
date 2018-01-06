#pragma semicolon 1
#include <sourcemod>

public Plugin: myinfo =
{
	name = "Downloadfilter Checker",
	author = "TnTSCS",
	description = "Clients downloadfilter checker and kicker",
	version = "1.0",
	url = "https://forums.alliedmods.net/showpost.php?p=1975421&postcount=11"
};

public OnClientPostAdminCheck(client)
{
    QueryClientConVar(client, "cl_downloadfilter", QueryConVar);
}

public QueryConVar(QueryCookie:cookie, client, ConVarQueryResult:result, const String:cvarName[], const String:cvarValue[])
{
    // all = download everything
    // nosounds = download all but sounds
    // mapsonly = only download maps, nothing else
    // none = don't download anything
    if (strcmp(cvarValue, "all", false) == 0)
    {
        return;
    }
    
    PrintToConsole(client, "You have your cl_downloadfilter set to [%s], please change it to [all]", cvarValue);
    PrintToConsole(client, "You have your cl_downloadfilter set to [%s], please change it to [all]", cvarValue);
    PrintToConsole(client, "You have your cl_downloadfilter set to [%s], please change it to [all]", cvarValue);
    KickClient(client, "Your setting for cl_downloadfilter is wrong, please set it to ALL");
    
    return;
}  
