# Starting Point

I'll use this as a starting point for a project using CoffeeScript & LESS.

## Applications

I use [TextMate][TM2] (2.0) for editing, [CodeKit][CK2] (2.6.1) for concatenation, compiling etc.) and [GitHub Desktop][GHD] for all the source control stuff.

[TM2]: http://macromates.com/
[CK2]: http://incident57.com/codekit/
[GHD]: https://desktop.github.com/

## Structure

At root level there are three folders: `app`, `public` and `test`.

### app

This folder holds the source files in these subfolders:

* `coffee`

	All the CoffeeScript source files are in here

* `js`

	Usually just a single `libs.js` file that imports whichever libraries I end up using. When this is saved, it's concatenated and minified into the `public/assets` folder.

* `less`

	In here, `app.less` should import any other `.less` file so they can all be output to a single CSS file to `public/assets`.

* `vendor`

	Any necessary third-party library goes in here, preferably in a subfolder

* `views`

	Kit files/partials that generate HTML are here

### public

This is the folder that's served by CodeKit for previewing, so all the compiled and concatenated files go into the `assets` folder in here.

### test

[Jasmine][JSM] comes preinstalled here, and should be faily easy to get started with - I write the specs in CoffeeScript too.

[JSM]: http://jasmine.github.io/

### The `config.codekit.sample` file

If you're using CodeKit, you can use this file to align the settings with mine for the project. Just yank off the `.sample` extension so it's called `codekit.config` and apply it to the project from within CodeKit.

