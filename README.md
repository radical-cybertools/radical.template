
Package radical.template
========================

This Python package represents a template for new radical python projects.  It
will place python modules into the `radical` namespace.  It provides an
installer, testing stubs, module stubs, and a Makefile which supports the most
common activities.   A Makefile is also used to customize this template to
a specific project name.


License
-------

This software is released under the 
[LGPL License v3.0](http://opensource.org/licenses/LGPL-3.0).


Usage
-----

* copy or clone this template into a fresh directory
* call `NAME=my_module make templatize`


How it works:
-------------

This repository comes with two make files `Makefile` and `Makefile.in`, and
a set of files which are templatized.  The first Makefile will apply a module
name to those templates, this converting this code tree into a viable,
installable and testable python module.  This is done by calling:

```
  NAME=violet make templatize
```

The example invocation above would morph the current file hierarchy in this
directory into a python module named `radical.violet`.

Note that the call to `make templatize` will (re)move the original git
repository, so that the slate is clean for setting up the module's actual git
origin (see 'Other Make Targets' below).

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


Other Make Targets
------------------

Once the templitization is completed, the new Makefile will provide guidance on
setting up a radical git repository, jenkins integgration, read-the-docs, and
pypi uploading. `make help` shows a short summary for each item:

```
> make help

    ----------------------------------------------------------------------------
    [...]

    make install
        use 'pip install' to install in virtualenv in ./ve/

    make pylint
        run pylint check on all python source files in radical/

    make pypi
        create source distribution and upload to pypi

    make test
        run unit tests via pytest

    make docs
        build documentation via sphinx

    make prep_git
        Follow the guidelines to set up and populate a repository on github.

    make prep_rtd
        Follow the guidelines to set up readthedocs

    make prep_pypi
        Follow the guidelines to set up pypi poackaging and upload

    make prep_jenkins
        Follow the guidelines to set up Jenkins testing
    ----------------------------------------------------------------------------
```

