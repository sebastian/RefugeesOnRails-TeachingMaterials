RefugeesOnRails teaching materials
==================================

This repository contains supporting material used during classes and workshops taught
as part of the [Refugees on Rails](http://refugeesonrails.org/) program.

# Organisation

This repository has one folder per class and one per workshop. These are named by the class and workshop
number to keep things easy to navigate. As a result, you should expect to find the supporting
material for the first class in a folder called `class-1`, and the materials needed for the first workshop in
`workshop-1`, etc.

The current approach taken is to write the slides in markdown and have them generated into
a [reveal.js](https://github.com/hakimel/reveal.js) slideshow using [pandoc](http://pandoc.org/). A utility
script called `create-slides.sh` exist to automate the slide generation process. To create the slides for
the first class, you would run it as: `./create-slides.sh class-1`. The slides will then be output as
`./class-1/slides.html`


# Contributing

The teaching material can only get as good as we can collectively make it.
Contributions are more than welcome, they are in fact highly sought after.

## If you have write access to this repository

If you have commit access to this repository, you are of course free to push
changes as you see fit. When doing so, please abide by the following simple rules
of hygiene:

- do your work on feature branches to avoid conflicts
- if you have any questions or want feedback, feel free to submit your changes as a pull-request for someone
  else to read through. In order to reduce the overhead, this should be the exception rather than the rule.
- be happy and content

## If you don't have write access to this repository

If you are frequent contributor, it might be worthwhile checking if you could get write access!

Feel free to fork this repository, make changes in your own copy, and then submit pull-requests back to the
main repository.

Thank you!

# License

The work found in this repository is licensed under the Apache License Version 2.
Please have a look at the [LICENSE](LICENSE)-file for further details.
