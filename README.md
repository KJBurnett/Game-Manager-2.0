# Game-Manager-2.0
A visually and functionally updated version of Game Buddy which can be found here: https://github.com/KJBurnett/GameBuddy

## Functionality
- Collect games from any game client into a single client for ease of access.
- Records user gameplay time and displays it in the upper left corner. [Steam Web API playtime functionality TBA]
- Displays most recent game screenshots. 
- Backs up and Restores offline game save files.

### About
This game manager utilizes a very cool front end library that allows you to design in an Android Material outline - written by ButchersBoy. Check out his work at http://materialdesigninxaml.net/

![Alt text](https://raw.githubusercontent.com/KJBurnett/Game-Manager-2.0/master/overwatch%20gamemanager.PNG "Video Game Manager 2.0")

## What's Inside
Game Manager utilizes the Steam Web API to query games owned by the user, all it needs is your SteamID (and make sure it's public!)
A glimpse at the cool code behind the scenes. If you're curious about more Steam Web API Querying, check out my full SteamUtil.cs over at 
https://github.com/KJBurnett/GameBuddy/blob/master/SteamUtil.cs

```C#
private string QueryOwnedGames()
        {
            string sourceCode = string.Empty;
            string steamID = File.ReadAllText("./SteamID.txt");

            try
            {
                System.Net.HttpWebRequest request;
                request = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create("http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=B6FA82B3BBB99EE246C60ED22365D929&steamid=" + steamID + "&format=xml");
                System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse();

                StreamReader sr = new StreamReader(response.GetResponseStream());
                sourceCode = sr.ReadToEnd();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Could not query Steam.\nError has been logged.");
                GameUtil.LogError(ex.ToString());
                return "error";
            }
            return sourceCode;
        }
```
