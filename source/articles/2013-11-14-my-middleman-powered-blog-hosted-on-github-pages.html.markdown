---
title: My Middleman powered blog, hosted on GitHub Pages
date: 2013-11-14 21:34 UTC
tags:
background_image: /img/blogposts/cracow.jpg
---

I would say I have quite some experience with Wordpress. I've first used it in 2007, and I've continued to use Wordpress as a CMS for almost all the websites I needed to create. I did this because it was an easy solution for what we needed.

###Why Middleman
But when I decided to create my own website, Wordpress wasn't really my first option. I'm not really sure why I chose Middleman, but now that I'm using it, I know exactly why I like it. 

Middleman builds static websites. There's no database required, all you need to do is write the articles using markdown, and they will be built into static html webpages. For me, the biggest advantage of this is that I can host it on GitHub Pages. I couldn't have installed Wordpress, for example, on a GitHub Pages website, because Wordpress needs a database on the server. Another very nice feature is that each article is basically a text file, which can be easily kept on git. Also, because it's written in markdown, it's very easy to add code in the articles, and it looks very good. And finally, writing your articles in a simple text editor (or maybe even in `vim`) gives you that geekish feel, which can't be accomplished by using Wordpress, Joomla or other WYSIWYG engines.

On the other hand, middleman is not as easy to use as Wordpress. For technical guys it's ok, but I wouldn't imagine, for example, my dentist using Middleman to maintain a blog. Wordpress is much more accessible.

###How I did it

Middleman comes as a Ruby gem. You have to open a terminal and then 
`sudo gem install middleman-blog`. Now you have the blogging extension of middleman installed on your computer. To start a website, all you have to do is `middleman init MYBLOG --template=blog`. This generates the following:

	MYBLOG
	- .gitignore
	- config.rb
	- Gemfile
	- Gemfile.lock
	- source
		- 2012-01-01-example-article.html.markdown
		- calendar.html.erb
		- feed.xml.builder
		- images
		- index.html.erb
		- javascripts
		- layout.erb
		- stylesheets
		- tag.html.erb

Of course you can replace `MYBLOG` with a name of your choice.

`Erb` is the default templating language of Middleman. `Haml`, `Sass`, `Scss` and others are also supported, but when I started this project, I didn't find any good reason to switch from the default. I still don't.

A very important file is the `config.rb`. This is where all the configurations of the site are. Middleman has a very god documentation, and it's easy to understand how it works. But just for inspiration, my sources are [public on GitHub](http://github.com/mariusc/blog).

To **add an article**, you can go to Terminal and write 

`middleman article "Your Title"`

A new file is created in the `source` folder, corresponding to this article. The articles are written in markdown language, and all they contains are the text, maybe images, links and metainfo such as date and tags. All the styling information is somewhere else, and we will talk about this in a short while. The file created in the `source` folder has only the title, date and an empty list of tags for the article. Write something as the content of the article.

At this moment, you can run `bundle exec middleman server` and go to the link shown in Terminal (`http://localhost:4567`). You will see a very plain html blog, with your first article.

To improve the appearance of the website, you will need to use your HTML and CSS knowledge and create or adapt a template. 
The file layout.erb is the one containing the layout of the website. Here you can add the code for the header, footer, maybe a sidebar, etc. The layour.erb is kind of a frame, which appears on all the pages of your blog. `<%= yield %>` is the part which is actually framed using this layout.
The `index.html.erb` file contains the styling of the content which is yielded in the layout.erb file. For example, here you can write and style the title, tags, date of an article.
My advice is to get a free HTML template you like and adjust it to fit you needs. Very important, in my opinion, is to choose a responsive layout, one that looks good on all resolutions, including phone or tablet. I learnt this the hard way, and in the beginnig of 2014 I will probably change the layout of my site.

###Publishing your blog on GitHub Pages

GitHub offers [GitHub Pages](http://pages.github.com/), mainly for creating a small site about each of your projects. But this can be used also to host your personal developer website :). I chose to have this blog as a separate repo than the rest of the site. The nice thing is that Middleman is perfectly integrated with GitHub pages, all thanks to the middleman-gh-pages gem. I included it in the Gemfile
	
`gem "middleman-gh-pages"`

and required it in a Rakefile:
	
`require 'middleman-gh-pages'`

Then you have to bundle install again, and now you are ready to push to your gh-pages branch, in order to publish your built website. And middleman-gh-pages does this for you, with
	
`bundle exec rake publish`

The contents of your `gh-pages` branch will then be published at `username.github.io/repo_name`. The `master` branch will contain the source files, and the `gh-pages` branch will contain the built website. Running the *publish* builds your website and pushes it to the `gh-pages`.

That's about it. There are some references I found very useful below, and the sources for this blog. For discussions about this articles, send me a [tweet](http://www.twitter.com/marius_const).

###Resources:
- [Middleman documentation: getting started](http://middlemanapp.com/getting-started/)
- [Middleman templating](http://middlemanapp.com/templates/)
- [12devs - building static websites with Middleman](http://12devs.co.uk/articles/204/)
- [Joey Aghion - Building a blog with Middleman and GitHub Pages](http://joey.aghion.com/building-a-blog-with-middleman-and-github-pages/)
- [Joel Hans - Building a middleman blog](http://designbyjoel.com/blog/2012-10-20-building-a-blog-in-middleman/)
- **[Repo for my blog](https://github.com/mariusc/blog)** - have a look at both the *master* and the *gh-pages* branch