
MAKEFLAGS += " --no-print-directory "

ifdef NAME
  CNAME = $(NAME)
  LNAME = $(shell echo "$(NAME)" | tr '[:upper:]' '[:lower:]')
  UNAME = $(shell echo "$(NAME)" | tr '[:lower:]' '[:upper:]')
  YEAR  = date '+%Y'
  NLEN  = $(shell echo $(NAME) | wc -c)
  NDASH = $(shell printf '%$(NLEN)s' | tr " " "-" 
  NEQUL = $(shell printf '%$(NLEN)s' | tr " " "=" 
  NHASH = $(shell printf '%$(NLEN)s' | tr " " "#" 
  NSTAR = $(shell printf '%$(NLEN)s' | tr " " "*" 
endif


define HELP


    NAME=my_module make templatize
        prepares this copy of radical.template to host module radical.<NAME>
		NAME can be CamelCased.

    make prep_git
        Follow the guidelines to set up and populate a repository on github.

    make prep_rtd
        Follow the guidelines to set up readthedocs

    make prep_jenkins
        Follow the guidelines to set up Jenkins testing

    make prep_pypi
        Follow the guidelines to set up pypi poackaging and upload


endef

.PHONY: help
help:
	$(info $(HELP))
	@true


.PHONY: templetize
templetize::
ifndef NAME
	@printf "\n\n    Error: no project NAME given!\n"
	@$(MAKE) help
else
	@echo "CNAME: $(CNAME)"
	@echo "LNAME: $(LNAME)"
	@echo "UNAME: $(UNAME)"
	@echo rm -rf .git
	@find . -name '*###cname###*' | sed -e "p;s/###cname###/$(CNAME)/g" | xargs -r -n2 echo mv
	@find . -name '*###lname###*' | sed -e "p;s/###lname###/$(LNAME)/g" | xargs -r -n2 echo mv
	@find . -name '*###uname###*' | sed -e "p;s/###uname###/$(UNAME)/g" | xargs -r -n2 echo mv
	@grep -ilr '*###cname###*' | grep -v Makefile.in | xargs -n 1 -r echo sed -i 's/###cname###/$(CNAME)/g'
	@grep -ilr '*###lname###*' | grep -v Makefile.in | xargs -n 1 -r echo sed -i 's/###lname###/$(LNAME)/g'
	@grep -ilr '*###uname###*' | grep -v Makefile.in | xargs -n 1 -r echo sed -i 's/###uname###/$(UNAME)/g'
	@grep -ilr '*###year###*'  | grep -v Makefile.in | xargs -n 1 -r echo sed -i 's/###year###/$(YEAR)/g'
	@grep -ilr '*###ndash###*'  | grep -v Makefile.in | xargs -n 1 -r echo sed -i 's/###ndash###/$(NDASH)/g'
	@grep -ilr '*###nequl###*'  | grep -v Makefile.in | xargs -n 1 -r echo sed -i 's/###nequl###/$(NEQUL)/g'
	@grep -ilr '*###nhash###*'  | grep -v Makefile.in | xargs -n 1 -r echo sed -i 's/###nhash###/$(NHASH)/g'
	@grep -ilr '*###nstar###*'  | grep -v Makefile.in | xargs -n 1 -r echo sed -i 's/###nstar###/$(NSTAR)/g'
	@mv Makefile.in Makefile
endif



