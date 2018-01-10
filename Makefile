# /home/dushoff/hybrid
# This is a _master_ hybrid repo
# has makestuff and clone subdirectories

######################################################################

### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .ignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

##################################################################

## Content

### Dushoff organization
clonedirs += org
org:
	git clone https://github.com/dushoff/$@.git $@

### Displaying visual information (stats744)
clonedirs += visual
visual:
	git clone https://github.com/dushoff/visualization.git $@

### Population ecology
clonedirs += 3SS
3SS:
	git clone https://github.com/Bio3SS/$@.git $@

### Workshops (NTU, ICI3D, …
clonedirs += Workshops
Workshops:
	git clone https://github.com/dushoff/$@.git $@

### Ignore
Ignore += $(clonedirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/hybrid.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
