---
title: Singletons
date: 2014-04-08 20:55 UTC
tags:
background_image: /img/blogposts/calanques.jpg
---

I like Singletons. This was the first design pattern I learned while studying OOP and it's by far the one I'm most comfortable with at this point. 

In (almost) all my projects that need networking, I created a singleton NetworkManager, which handles all the network communication done throughout the app. I think that this is a very good example of a situation where a Singleton is useful.

###How I write my singletons
If there's nothing fancy about the classes I want to be singletons, I simply include the following code in the `.pch` file:

```
#ifndef SHARED_SINGLETON
    #define SHARED_SINGLETON(class)               \
    + (id)sharedInstance {                        \
        static dispatch_once_t pred = 0;          \
        __strong static id _shared##class = nil;  \
        dispatch_once(&pred, ^{                   \
            _shared##class = [[self alloc] init]; \
        });                                       \
        return _shared##class;                    \
    }
#endif
```

Then, in the header file of the class I want to make a singleton, I add the function 

```
+ (id)sharedInstance;
```
And in the associated .m, 

```
SHARED_SINGLETON(Open311);
```
is the implementation of the sharedInstance method. From now on, every time I need this object, I call it with `[ClassName sharedObject]`.

Of course, if you need to do other things when fetching that Singleton, you need to add the method in your .m file and do it there.

###Good or bad
This is quite subjective, and depends really on how you use this pattern. It can be both good and bad. And it depends on how you write your singletons. ALWAYS use `dispatch_once` to instantiate your shared instance. The older method of `@synchronized` is also acceptable, although arguably slower. This way, you are sure that your singleton is thread-safe.

Some refuse to use Singletons because they are just glorified globals. But where do you put that data instead, if you need it all through the app? AppDelegate? But.. surprise.. the app delegate is actually a Singleton.

###Conclusion
You can like or you can hate the Singleton pattern. Actually, as long as you know what you're doing, I don't see any point in avoiding singletons.

