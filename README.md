# Alien Swarm SDK
This is the latest untouched* SDK code release of Alien Swarm publicly released on Steam!

## A bit of history
Technically this is the most modern version of Source that you'll ever get from Valve. This branch happens to be just behind Portal 2's branch so you'll enjoy *mostly* all the fancy updates made to Source!

However, compared to the Source 2013 SDK you don't have the traditional map compilers (vbsp, vvis, vrad) or other miscellaneous tools/devtools, not even VPC for generating an solution file!

# Build Instructions
## Windows (Visual Studio)
I'll paste this one from the VDC page, asuming you'll be working with Visual Studio 2010 or 2022*:
- Go inside the `src/game/server` folder and double click on `swarm_sdk_server.vcproj`. This will load the project into Visual Studio.
In the solution explorer, right click on the solution and choose Add -> Existing project. Add both these projects to your solution:
```
    src/game/client/swarm_sdk_client.vcproj
    src/game/missionchooser/swarm_sdk_missionchooser.vcproj
```
- Do File -> Save All and it will prompt you to save your solution somewhere, e.g. `src/mymod.sln`
- Happy programming!

If you're compiling on newer systems like Visual Studio 2019 or 2022, the process for generating a .sln are more or less the same, the only difference is that you do not need to use or upgrade the .vcproj files, use the .vcxproj files instead.

## Windows (CMake)
Coming soon...

## Mac (CMake)
Apparently, there's no support (at a glance) for MacOS devices in the code, though I'll take a look as soon as Linux and CMake support reach some maturity.

## Linux (CMake)
Although Linux support is alleged to be included in this SDK, it's incomplete along with the build system. This will be fixed in the future with the inclusion of CMake, just checkout the `dev` branch on git!

# Why
Why not? This is for those that want the vanilla *experience* on Source SDK, often custom forks of the SDK add a lot of breaking changes that may affect severely the game, either for good or for bad.

You could say it's majorly for compatbility, but also for another purpose that I shall reveal at a later time, because... it's a surprise y'know.

# Acknowledgments
This project would not be the same or might've taken another direction without the public contributions of the following repositories where I *"borrowed"* code from:

- Alien Swarm: Reactive Drop: [https://github.com/ReactiveDrop/reactivedrop_public_src](https://github.com/ReactiveDrop/reactivedrop_public_src) which I used as a guide to patch the codebase so I can compile the SDK on newer compiler versions.

This list would be expanded as I continue to *"borrow"* code.

###### *: *"untouched" as in "no improvements or added functionality", bugfixes that exclusively allows the code to compile or improves QoL without deprecating platforms/tools are allowed.*
###### **: *At the time you're viewing this note, only Visual Studio 2010 and Visual Studio 2022 are tested by me as "working", 2005, 2008 and 2013 versions are alegged to work though unconfirmed by me. Visual Studio 2015, 2017, and 2019 might be broken according to external sources but should work without a problem if you modify/upgrade the vcxproj files by yourself.*