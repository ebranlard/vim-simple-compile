Vim-simple-compile
==============

Compile / run / view the results of your current file without creating a makefile.

The notion of compilation, running and viewing may be different or inadequate from language to language.

For linux users, this script should work out of the box for:
- python    (compilation and running are the same, no viewing)
- c,fortran (compilation with gnu, running ./a.out, no viewing)
- tex       (compilation with pdflatex, running and viewing are the same and done with evince)
- sh        (compilation and running are the same, no viewing)

Otherwise, the script is not general and requires some configuration of the user-prefered applications.
The principle is simple though and everything is gathered in one file.



Functionalities
----------------

Below is a list of functionalities. Defaultmappings are written within parenthesis and functions within brackets. 
Mappings can be overriden in your vimrc or directly in the plugin file.

Functionalities for simple and quick compilation:
- "Compile current file" (F2) []
- "Run current file"     (F4) []
- "View current file"    (F5) []

Mappings if makefile is present
- "Make"      (,m)  [make]
- "Make test" (,te) [make test]

Mappings for jumping in quickfix window:
- "Next error" (,n)
- "Previous error" (,N)

Installation - Vim
------------------

Copy the file "plugin/simple-compile.vim" into the equivalent location in your Vim config directory, e.g.: ~/.vim/plugin/ 


If you don't have a preferred installation method, I recommend installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and then simply copy and paste:
```bash
    cd ~/.vim/bundle
    git clone git://github.com/elmanuelito/vim-simple-compile.git
```

Languages not supported
-----------------------

I've omitted languages that I haven't used yet. Have a look at the script file, it's just a matter of configuring the applications you want for your language. Don't hesitate to share your additions to me by email.

Installation - System
------------------

For markdown compilation and html viewing functionality you'll have to install flavor.rb, and add reload-iceweasel-tab to your system path. 
Contributing
------------

Please do, and don't hesitate to contact me.

License
-------

Copyright (c) E. Branlard (lastname at gmail dot com).  Distributed under the same terms as Vim itself.
See `:help license`.
