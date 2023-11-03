# Contributing
Thanks for taking your time on contributing to this project! In this document you'll find everything you'll need to know!

## Contents
- [Code of Conduct](#code-of-conduct)
- [Making issues and questions](#i-have-a-question)
- [Contributing to this project](#i-want-to-contribute)
- [Reporting bugs](#reporting-bugs)
- [Styleguides](#styleguides)

## Code of conduct
I'm not going to bore you at this one, just keep it cool and behave as a good person when interacting with other users, help them as much as you can do and don't harrass anyone. The owner and the mantainers of this repository reserve the right of rejecting your commits and editing/deleting your issues or comments if you do something unnapropriate, and YOU might get banned for it, or restricted permanently.

## Making issues and questions
Click [right here](https://gitlab.com/PANCHO7532/alienswarm-sdk/issues) to go the issues page on GitLab.

If you're on GitHub and you're wondering why is this, it's because the copy on GitHub is a "backup" synced regularly with the code stored on there as it is, in fact, the main repository and where all the development will take place. Also because I have some love/hate relationship with GitHub that I prefer to deal at the minimum.

Some tips on making issues!
1) First and foremost I encourage reading this page: [(click here)](https://stackoverflow.com/help/how-to-ask), this will cover everything you should know on writing up any issues that you might have, and it will help us better to understand. It's a long read, but trust me, its worth it. Have you read it? No? You skipped? Oh that's ok, continue to the next tip!
2) Whenever it applies, please attach a picture OR screenshot of the problem if it's complex enough to describe it with words
3) Be as brief and detailed as possible, but not too much, make sure to cover all the necessary bits as well, if you think that something's also odd or a small detail that contribute to the issue or might be barely related to the issue, include it as well!
4) Include ALL steps to reproduce your issue. Not saying you need to always start from the "Well I started my computer, booted windows, and..." but try to describe everything since you boot up the game, until you crash. What keys have you pressed? Did you move your mouse in some odd way? What possition (inside of a game, if it applies) you had when it occurred? Did you opened a third party application or service? If so, what program and where I could get it? And so and so...
5) Include ALWAYS your computer specs! It might or might not be related with your problem since not everyone has everything configured in their computers as yours.
6) Isolate. Clone the project, make any changes that you've made to the source code (if any) and identify what went wrong, then let us know.

Once you've submitted your issue we can label it properly, try to reproduce it and let you know if it has a solution (or if it's invalid)

## I want to contribute
##### TODO: Write these instructions better
The project is managed using git. You can find a quick guide on how to use it with a terminal by visiting [this link](https://www.baeldung.com/git-guide) but if you're using an IDE like Visual Studio/VSCode or CLion that has built-in git support you might want to search up a tutorial for it.

Now that you've learned how to use git, create an account on GitLab [here](https://gitlab.com/users/sign_up), then fork the repository onto your account and clone it to your machine.

Once you've done that, open the IDE of your choice and make some changes in a new branch, then make a pull request in our repository pointing to the `dev` branch as target, and your new branch as the source.
Write up an description of what your code does and/or fixes and submit your pull request! We'll take it from there.

### Important
We reserve the right of approving/commiting your pull request or code at any time, even if not by the pull request system of GitLab, in such case, you will always be credited for your contribution even if your commits don't make it through and are added at a later time by me or the administrators at our sole discretion.

### Important (for GitHub users)
If you submit a pull request on GitHub instead of GitLab we'll commit it as well and it will be synced with the one on GitLab, but be aware that we might not do it inmediately, since all of our notifications are set-up with GitLab and your pull request may eventually break as we commit through.

## Reporting bugs
I encourage you to read this [(click here)](https://www.chiark.greenend.org.uk/~sgtatham/bugs.html) and then submit a bug via the "issues" section of the repository, more info and tips on how to submit an issue are discussed on its own section [(click here)](#making-issues-and-questions) which all of its tips are encouraged and still applies to bugs.

If it's an bug that might affect the security of the code and the users who use it, you might want to disclose it privately by emailing me at <pancho7532@p7com.net>, remember to follow all the tips discussed previously when doing so.

Additionally, if it's a bug that might also affect other Source games by Valve, report it also by email at <security@valvesoftware.com>

## Styleguides
When coding, make sure to follow the rules on this section, while we leave this up to you if you want to follow it or not, we encourage you to do it so we can review it and understand what does it do faster when submitting an pull request, else we may just fix it for you at a later time. This section is under construction and subject to change at any time.

### Identation
Always ident using 4 (four) spaces, DO NOT USE TABS, this is mainly because each IDE interpret tabulations in a different way that may or may not screw the formatting of the code, making it unreadable or hard to debug.

### Conditionals
```cpp
// Do this:
if(condition) {
    //...
}

// Don't do this:
if(condition)
{
    //...
}
// Neither this:
if(condition) {
//...
}
// Or this:
if(condition) {
    /*code here*/}
// Respect spaces whenever possible, like this:
if(condition && anothercondition == true) {
    //...
}
// Not like this:
if(condition&&anothercondition==true){
    //...
}
// Or this:
if ( condition ) {
    //...
}
// Avoid this:
if(condition)
    action1();

///////////////////////////////////
// One liner conditionals        //
///////////////////////////////////
// One line conditionals are fine when used right, if it exceeds 200 columns and you have a lot of operations inside, and you start to lose the comprehension on it, then you probably shouldn't use it.
// When done right, should look like this:
if(condition) { for(int i = 0; i < 3; i++) { action1(); action2(); action3(); } return; } else { action3(); return; }
// Don't do this:
if(condition){action1();action2();action3();action1();action2();action3();action1();action2();action3();action1();action2();action3();return;}else{action1();action2();action3();return;}
// The same concept applies to ternary conditionals/operators (?:), specifically, try to use it if absolutely necessary or you are willing to format it well.
if(conditional) {
    return action1(2, 3) < 10 ? action2() : 0;
}
// This is also acceptable (and variations)
if(conditional) {
    return action1(2, 3) < 10 ?
        action2() : 0
}
```
### Switch cases
```cpp
// Like this:
switch(condition) {
    case 1:
        action1();
        action2();
        break;
    default:
        break;
}
// Not like this:
switch(condition) {
    case 1:
    action1();
    action2();
    action3();
    break;
    default:
    break;
}
// Neither like this:
switch(condition) {
case 1:
action1();
action2();
action3();
break;
default:
break;
}
```
### Naming conventions
All variables and functions should be named using camelCase, and constants should be named on ALLCAPS. You are allowed to ONLY use underscores EXCLUSIVELY on constants, don't use it on variables or functions and don't abuse them either. Don't use long names, don't abbreviate on excess and try to be as conscise as possible.
```cpp
// Some examples:
int integerVariable;
const int MAGICVALUE = 0x35587f;
int functionThatReturnsIntegers(int parameterOne, int parameterTwo) {
    return parameterOne + parameterTwo * MAGICVALUE;
}
// Don't
int IntegerVariablethatstoresnumbersTESTDONOTDELETE;
const int magicvalue = 0x45599e;
const int mv2 = 0x112233a;
int somefunction(int p1, int p2) {
    return p1 + p2 * (magicvalue >> mv2);
}
```