---
title: Self sizing UITableViewCells
date: 2015-02-21 18:45 UTC
tags:
background_image: /img/blogposts/mons_klint.JPG
---

Among all the new features brought by iOS 8, and the launching of Swift, there was also a minor thing that not many people talked about. iOS 8 brought auto-sizing table cells.

This is probably one of the iOS 8 features I was most excited about. Probably everyone who developed an iOS app has used a UITableView. It's one of the most basic and most used components. And we all know the pain of computing the `tableView:heightForRowAtIndexPath:` for custom cells with different heights depending, for example, on the data you get from an API. And then, setting frames by hand in the `layoutSubviews` in the UITableViewCell. It probably never was a good approach, but I've seen code like that and I've written code like that (not proud of it).

Then, Auto Layout came along, and we had a way to get rid of all the frame computing in the `layoutSubivews` in the cell. But we still had to compute the height of the cell in the view controller, and the only way I found to make Auto Layout work well with dynamically sized cells was to actually instantiate a table cell in `heightForRowAtIndexPath` and use it just for sizing the cell. Not very nice.

iOS 8 is the one that finally brings us a good solution: self-sizing cells. In other words, if you add the right Auto Layout constraints in your cells, you won't have to tell the tableView the height of the cells, but he will know to get it himself.

Before jumping with joy, please note that this is only possible in iOS 8. So if you have to support iOS 7 as well, this is not a good solution for you.

I created a small project, to test this new feature. We have a `UITableView` with custom cells. The data for the it will be fetched as a JSON from [here](https://api.myjson.com/bins/3x4p3). I'm not going in details about fetching data from a URL or parsing a JSON to custom objet, these are pretty basic things and don't make the object of this article. 

The key to get auto-resizing cells is to set the constraints inside the cell in the right way.

<center><img src = "img/blogposts/inline/self_sizing_cells_cell.png" class="img-responsive"/></center>

TitleLabel is pinned to top, left, right and has the bottom pinned to the nearest neightbour (the imageView). The UIImageView is pinned to the left, right, has the height set and its botton is pinned to the nearest neighbour (the DetailLabel). The DetailLabel is pinned to left, right and the bottom is pinned to the bottom of the cell.

That's it. This is all. You don't have to do anything else. Well, of course, set you tableView delegate and datasource, return the cell for each row, the nubmer of rows and that's it. No `heightForRowAtIndexPath`. And make sure you don't set any Row Height for the table view in the storyboard. Leave it the default (which is 44). Setting it to anything else seems to make all the cells that size.

You can find the demo project on [my GitHub](https://github.com/mariusc/SelfSizingCells). Don't try running it on iOS 7, because it will crash (conflicting constraints; it assumes the height is 44, but the inner constraints of the cell make its size to be much bigger; so it crashes).

I think the self sizing cells are a big step forward and I'm looking forward to have an iOS 8 - only app, so I can actually use them in production.

