Kinds of repos under the hybrid system:

* master repos (so far just one, stupidly called hybrid)
	* makestuff is a submodule 
	* other repos (mostly container repos) are clones
	* other content is mostly notes

* container repos
	* makestuff is a symbolic link up the chain (usually to master repo)
	* other repos (mostly working repos) are clones
	* other content is mostly notes

* working repos
	* makestuff is a submodule 
	* repos we depend on are mostly submodules
	* repos that depend on us (or that we just want to refer to) are mostly clones
	* a working repo makes non-trivial stuff

* Display repos
	* like gh-pages...
	* not so sure about choices here. can makestuff be an uplink again?
