# Alien Swarm SDK
This is the latest SDK code release of Alien Swarm publicly released on Steam!

# A bit of history
Technically this is the most modern version of Source that you'll ever get from Valve. This branch happens to be just behind Portal 2's branch so you'll enjoy *mostly* all the fancy updates made to Source!

# How to use
I'll paste this one from the VDC page, asuming you'll be working with Visual Studio 2010:
- Go inside the game/server folder and double click on `swarm_sdk_server.vcproj`. This will load the project into visual studio.
In the solution explorer, right click on solution and choose Add -> Existing project. Add both these projects to your solution:
```
    game/client/swarm_sdk_client.vcproj
    game/missionchooser/swarm_sdk_missionchooser.vcproj
```
- Do File -> Save All and it will prompt you to save your solution somewhere, e.g. `game/mymod.sln`
- Once you've imported all three projects, you will need to rename the Solutions for the client and server before you can build...
    1) Right-click on the Client (Swarm) solution, and rename it to Client.
    2) Right-click on the Server (Swarm) solution, and rename it to Server.

# Extra notes
- You might want to delete Post-Compile scripts, so Visual Studio won't attempt to copy the .dll files to an missing directory.
- Compiled DLLs are either inside the respective folders (client, missionchooser, server) inside `src/game` folder, under an folder prefixed with your build type (ex: `Release` or `Release_(modname)`) or inside `game/swarm/bin` folder outside `src` folder.
- Compiling on Debug might be broken and might not be fixed in this branch (if so, checkout other branches in this repository!), compiling on Release works fine.
