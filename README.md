
Package radical.template
========================

This Python package represents a template for new radical python projects.  It
will place python modules into the `radical` namespace.  It provides an
installer, testing stubs, module stubs, and a Makefile which supports the most
common activities.  The Makefile is also used to customize this template to
a specific project name.


License
-------

This software is released under the 
[MIT License](http://opensource.org/licenses/MIT).


Usage
-----

* copy or clone this template into a fresh directory
* call `NAME=my_module make templatize`

Make Targets:
-------------

* `make install`
  runs `pip install --upgrade .`
* `make clean`
  remove tmp files (`*.pyc`, pycache files, vim/emacs swap files, etc.)
* `make test`
  run the test suite via py.test
* `make pypi`
  package and upload to pypi
* `make pylint`
  perform pylint checks
* `make prep_git`
  follow the guidelines to set up and populate a repository on github.
* `make prep_rtd`
  follow the guidelines to set up readthedocs
* `make prep_jenkins`
  follow the guidelines to set up Jenkins testing
* `make prep_pypi`
  follow the guidelines to set up pypi poackaging and upload



How it works:
-------------

This repository comes with two make files `Makefile` and `Makefile.in`, and
a set of files which are templetized.  The first Makefile will apply a module
name to those templates, this converting this code tree into a viable,
installable and testable python module.  This is done by calling:

```
  NAME=violet make templetize
```
     
This will also replace the `Makefile` with `Makefile.in`, which is then able to
provide a very different set of commands.  The following ones should work out of
the box (some will create a virtualenv on the fly):

```
   make install
   make docs
   make test
   make pylint
   make clean
```

Other make targets (see `make help`) will provide guidance on setting up
a radical git repository, jenkins integgration, and read-the-docs.  Those
targets are not yet implemented though.

Note that the call to `make templetize` will (re)move the original git
repository, so that the slate is clean for setting up the module's actual git
origin.


