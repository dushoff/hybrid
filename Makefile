# /home/dushoff/hybrid
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

clonedirs += org visual

.gitignore: Makefile

### Dushoff organization
org:
	git clone https://github.com/dushoff/org.git $@

### Displaying visual information (stats744)
visual.newhybrid:
visual:
	git clone https://github.com/dushoff/visualization.git $@

### Population ecology

Ignore += $(clonedirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/hybrid.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
