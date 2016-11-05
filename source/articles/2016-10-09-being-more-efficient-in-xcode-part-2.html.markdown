---
title: Being more efficient in Xcode - Part 2
date: 2016-10-09 10:25 UTC
tags:
background_image: /img/blogposts/oslo_opera.jpg
---

This is my second article in the "Being more efficient in Xcode" series. The first part, which you can read [here](http://mariusc.github.io/2016-08-29-being-more-efficient-in-xcode-part-1.html), was focused on keyboard shortcuts. 

Besides the keyboard shortcuts, there are other tips and tricks an iOS developer should know, to be able to improve his productivity when using Xcode.


### Breakpoints

It's a pretty good idea to add an 'All exceptions' breakpoint. This way, when your app crashes, you'll get stopped exactly when that happens and you can see the whole backtrace and debug the problem more easily. A good idea is to also add a debugger command action on that breakpoint to print the exception you're encountering. Open the breakpoint in the Breakpoint navigator, right click your All exception breakpoint, press Edit, press Add action and add this debugger command `po $arg1`

<center><img src = "img/blogposts/inline/XcodeShortcuts/backFwd.png" class="img-responsive"/></center>

However, sometimes (especially if you're using Swift), you might notice that your app always stops in the AppDelegate when launching it. You can manually continue over that, but it's still annoying. To stop that from happening, you can edit your exceptions breakpoint to only stop for Objective-C exceptions, ignoring other types of exceptions such as C++ ones. Depending on your project, this could be a bad idea, but in most cases it will be fine. 

<center><img src = "img/blogposts/inline/XcodeShortcuts2/objc_exceptions_breakopint.png" class="img-responsive"/></center>

You can also use breakpoints to print variables: just add a po command.


### Editor

As we all know and we've all been complaining about, there's no refactoring in Swift. There is, however, a better-than-nothing alternative, which in some cases can be used instead of rename-refactoring. Select a variable (double click on it), go to Editor - Edit all in scope. Enter the new name and it will be renamed everywhere in the current scope. 

<center><img src = "img/blogposts/inline/XcodeShortcuts2/EditAllInScope.gif" class="img-responsive"/></center>

As the name says, this only edits in the current scope.



Another command that affects only the current scope is 'Fix all in scope'. This makes the changes suggested by Xcode for all the warnings and errors. This also only affects the current scope. And sometimes, Xcode's suggestions are not exactly what you had in mind. Nevertheless, this command can still be useful sometimes.

<center><img src = "img/blogposts/inline/XcodeShortcuts2/FixAllInScope.gif" class="img-responsive"/></center>



### Code structure

Use the Document items list. Open the list (either press on it, or use the shortcut control - 6) and you can see all the classes, extensions, methods, etc in your file. If you start typing, it will begin filtering them in a way similar to quick open, but it will search for entries inside the currently open file. 

<center><img src = "img/blogposts/inline/XcodeShortcuts2/ListOfMethods.gif" class="img-responsive"/></center>



It's also a very good idea to use `//MARK:` in your source. This allows you to organize the methods and other items in your code in a better way. They're also visible in the Document items list. And also, if for example you have a `//MARK: - UITableViewDelegate` you can command - click on the `UITableViewDelegate` and it will take you to the UITableView interface, where you can see all the available methods and their documentation.

### Interface builder

And one last tip about interface builder. Did you ever need, for example, to move a button on top of another view, but not make it a subview of that view? By default, when you drop a button over a view, IB will make the button a subview of that view and you will also lose all its positioning constraints. But if you press **⌘** while dropping the button, it will not be a subview, but a sibling of that view.

<center><img src = "img/blogposts/inline/XcodeShortcuts2/Cmd.gif" class="img-responsive"/></center>



There are lots of shortcuts in Xcode, and lots of things you can do to increase your speed when using it. The important thing is to take them one at a time.

