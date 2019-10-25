Starting Point
==============

I'll use this as a starting point for a webproject using CoffeeScript (or ES6) & Less.

Applications
------------

I use [TextMate][TM2] (2.0) for editing, [CodeKit][CK2] (3.10.1) for concatenation, compiling etc.) and [GitHub Desktop][GHD] for all the source control stuff.

[TM2]: https://macromates.com/
[CK2]: https://codekitapp.com/
[GHD]: https://desktop.github.com/

Structure
---------

At root level there are four folders: `src`, `build`, `vendor` and `test`.

### src

This folder holds the source files in these subfolders:

* `coffee`

	CoffeeScript source files are in here

* `js`

	Usually just a single `libs.js` file that imports whichever libraries I end
	up using. When this is saved, it's concatenated and minified into the
	`build/assets` folder.

* `less`

	In here, `app.less` should import any other `.less` file so they can all be
	output to a single CSS file to `buils/assets`.

* `views`

	Kit files/partials that generate HTML are here

### build

This is the folder that's generated and served by CodeKit for previewing, so
all the compiled and concatenated files go into the `assets` folder in here.
It's probably ignored by Git, since it should ideally be built/rebuilt whenever
a file changes.

### vendor

Any necessary third-party library goes in here, preferably in a subfolder, e.g.:

	.
	├── vendor
	│   ├── polyfills
	.   │   ├── element-closest.js
	.   │   └── array-foreach.js
	.   └── scrollreveal
	.       └── scrollreveal.min.js



### test

[Jasmine][JSM] comes preinstalled here, and should be fairly easy to get
started with - I've been known to write the specs in CoffeeScript too.
From time to time...

[JSM]: http://jasmine.github.io/

### The `config.codekit3.sample` file

If you're using CodeKit 3, you can use this file to align the settings with mine for the project. Just yank off the `.sample` extension so it's called `config.codekit3` and apply it to the project from within CodeKit.
