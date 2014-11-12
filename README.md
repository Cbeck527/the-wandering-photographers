# The Wandering Photographers

The Wandering Photographers is a photo blog started by myself, Emily Shearing,
and Ted Rysz. As we found ourselves on different coasts after college, we
decided to document our our wanderings.

Adventurers. Explorers. Travelers. Wanderers. With every adventure we take, our
cameras are there to document it.

The Wandering Photographers is a collaborative photography project. The code is
open source, meaning anyone can fork, add their own images, and merge them back
in.

All photos on this site are royalty free, and under the MIT License

## Building your own copy

It's pretty easy to build a copy of my site. I used
[jekyll](http://jekyllrb.com/) which is a ruby program that compiles markdown
files into static HTML documents which makes it super easy to put on the web.

Clone this repo, cd into the folder, `bundle install` the ruby requirements, and
build away!

    $ git clone https://github.com/Cbeck527/the-wandering-photographers.git $ cd
the-wandering-photographers $ bundle install $ jekyll build

You'll have a new folder in the directory called `_site` that has all of the
compiled HTML files ready to be thrown at a web server. Pretty nifty!


## Adding your image

Once you have downloaded and installed all the requirements for this repo, you
can now add your own photo!

1. Copy the `TEMPLATE.md` file from _drafts to the _post directory
2. Rename `TEMPLATE.md` to the date that you are adding the post, with the
   format `YYYY-MM-DD-##` where `##` is the post number incremented by 1.
3. Open the post file in your favorite text editor
4. Replace the template information with the information about your image
5. Drop your image into `src/images`
6. Run `jekyll serve --watch` to preview your changes
7. Commit, and submit a pull request!
