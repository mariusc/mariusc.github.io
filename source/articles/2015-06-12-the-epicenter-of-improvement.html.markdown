---
title: The epicenter of improvement
date: 2015-06-12 07:48 UTC
tags:
background_image: /img/blogposts/aix.JPG
---

I've been paying more attention to WWDCs only recently. Probably, WWDC 2014 was people's favourite, because of the huge and revolutionary changes it brought. However, for me, WWDC 2015 is far better than the previous one, because it seems that we got what I always want form a platform and programming language that I use full time in my work: stability and improvements. Evolution and not revolution. I finally think that the Swift 2.0 that will come out of beta will be ready for production. 

The WWDC main keynote is becoming more and more an event for journalists and press, and less for the developers. Platforms State of the Union is actually much much more important for a developer. If you're an iOS developer and you're too busy to watch more than one video from the WWDC, that should definitely be Platforms State of the Union.

It looks like Apple is changing, it's becoming more open, more diverse. In the keynote and Platforms State of the Union, as well as in the other sessions, we saw more than only adult white males presenting. This is a great move by Apple, it shows that they want to change the current situation in the IT industry, and it will probably inspire more and more diverse people to join this industry. Another move, which I personally really appreciate, is that the recorded sessions are not screencasts anymore, and that they actually put a face on the persons behind the technologies we use every day. I hope this move will make people more ambitious, make them want to join Apple and/or contribute to the tools and technologies that allow us to do what we love to do. 

All in all, the WWDC brought us many improvements, out of which I'd like to highlight the ones that excited me the most.

* **Swift 2.0**. A lot of improvements here, and it looks like soon I will have no more reasons to prefere Objective-C over Swift. 

* **Objective-C generics**. Something that I missed when I moved from Java to Objective-C, which we saw in Swift and which is now also available in Objective-C. You will only get a compiler warning if you don't respect the collection's type, but that's good enough for me.

* **Multitasking for iPad**. iPad multitasking fuels the rumours of a 12 inch iPad Pro. But what I like most about the iPad multitasking is the brilliant way in which it was implemented. Size classes become now a huge deal, and using them makes supporting multitasking super easy.

<!-- * **No need to unregister the observers from notifications**. As far as I saw, the observers used for notifications are now weak, which means that they will be removed when the object that is observed is deallocated. *I saw this on Twitter, I'm pretty sure I found something in the Aple docs for mac (not iOS), but now I can't find the reference for this neither on Twitter nor on Apple Docs. So take this with a pinch of salt until I find the reference.*-->

* **UIStackView**. We now have a UIStackView, which as far as I can tell is great if you don't want to use a UICollectionView for a simple situation.

* **Address sanitizer in Xcode 7**. I saw the session that showed Address sanitizer, and it loks great. Finally, it looks like we have a better way to debug that annoying `EXC_BAD_ACCESS`.

* **UI testing in Xcode 7**. For someone that doesn't do much testing, I'm very impressed by the session showing how UI testing in Xcode works. It is possible to create UI tests, and also to record UI tests. I'm looking forward to giving it a try.

There were also other announcements that made me happy, such as improvements in storyboards, storyboard referencing and others as well.

Also, we saw a change in the Apple Developer Program membership. There's no need to have a developer account to run your app on your own device. Also, the mac developer program and iOS developer program have now merged. It is possible to register 100 devices of each type, not 100 in total (100 iPads, 100 iPhones, etc). And also, the Apple TV category appears now in the devices list, which raises my hope for a new Apple TV (maybe, an TV), with an SDK and lots of content. We'll see.

We have exciting times ahead of us. Let's take advantage of everything we have and build great stuff.
