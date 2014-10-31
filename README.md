
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

* Copy or clone this template into a fresh directory
* call `NAME=my_module make templatize`
* call `make prep_git`
  Follow the guidelines to set up and populate a repository on github.
* call `make prep_rtd`
  Follow the guidelines to set up readthedocs
* call `make prep_jenkins`
  Follow the guidelines to set up Jenkins testing
* call `make prep_pypi`
  Follow the guidelines to set up pypi poackaging and upload


Make Targets:
-------------

* install
  runs `pip install --upgrade .`
* clean
  remove tmp files (`*.pyc`, pycache files, vim/emacs swap files, etc.)
* test
  run the test suite via pytest
* pypi
  package and upload to pypi


   


