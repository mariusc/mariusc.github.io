---
title: UIViewContentModes
date: 2015-11-29 10:46 UTC
tags:
background_image: /img/blogposts/naesseslot.jpg
---

This is going to be a very simple and visual post, showing the differences in what an image looks like using different `UIViewContentMode`s. It's something I really needed in my early days as an iOS developer. So a couple of years later, I decided to make this visual guide.

We'll use this [image here](http://cache-graphicslib.viator.com/graphicslib/thumbs674x446/12254/SITours/day-trip-to-sinaia-from-bucharest-including-peles-castle-in-sinaia-211359.jpg) of the Peleș castle in Romania:
<center><img src = "img/blogposts/inline/peles_castle.jpg" class="img-responsive"/></center>

And we will show it in a square 200 x 200 `UIImageView`, going through all the possible `UIViewContentMode`s. The 1x asset used in this project was sized to 224 x 148, with the @2x and @3x being scaled proportionally. For a better understanding, the background color of the `UIImageView` was set to black and `clipsToBounds` was set to `false`. Here are the results:

<center><img src = "img/blogposts/inline/Scale_to_fill.png" width=33%/><img src = "img/blogposts/inline/Aspect_fit.png" width=33%/><img src = "img/blogposts/inline/Aspect_fill_no_clip.png" width=33%/></center>
<center><img src = "img/blogposts/inline/Redraw.png" width=33%/><img src = "img/blogposts/inline/Center.png" width=33%/><img src = "img/blogposts/inline/Top.png" width=33%/></center>
<center><img src = "img/blogposts/inline/Bottom.png" width=33%/><img src = "img/blogposts/inline/Left.png" width=33%/><img src = "img/blogposts/inline/Right.png" width=33%/></center>
<center><img src = "img/blogposts/inline/Top_left.png" width=33%/><img src = "img/blogposts/inline/Top_right.png" width=33%/><img src = "img/blogposts/inline/Bottom_left.png" width=33%/></center>
<center><img src = "img/blogposts/inline/Bottom_right.png" class="img-responsive" width=33%/></center>

Some observations:

* `Aspect fit`, `Aspect fill`, `Center`, `Top`, `Bottom`, `Left`, `Right`, `Top left`, `Top right`, `Bottom left` and `Bottom right` are non-distorting content modes, they keep the original aspect ratio.
* `Aspect fit` will scale the image while keeping the aspect ratio in order to fit the whole image in the `UIImageView`. So its biggest side will fit perfectly in the view, and its smallest side will be scaled proportionally.
* `Aspect fill` will scale the image while keeping the aspect ratio in order to fill the whole `UIImageView`. So its smallest side will fit perfectly in the view, and its biggest side will be scaled proportionally. This one will be bigger than the view, so depending on the `clipsToBounds` value, it will either go out of the `UIImageView`, or show only the portion that fits in it.
* `Scale to fill` will scale both sides of the image to fill the entire view. This will obviously change the aspect ration and stretch the image.
