# Man pages Fortran #

Man pages for the Fortran language


The description of the Fortran language in these man pages has been taken from the [GNU Fortran Compiler documentation](https://gcc.gnu.org/onlinedocs/gcc-5.3.0/gfortran/).  They contain elements that follow the Fortran standard, and elements that are GNU extentions.  This standard is indicated in the detailed man page for each procedure.  The Free Software Foundation, Inc. is the copyright holder of this documentation (see copyright statement below).  The documentation was converted from HTML to man-page format by [AstroFloyd](http://astrofloyd.org).


Man-pages-fortran is available in 
[Arch Linux](https://aur.archlinux.org/packages/man-pages-fortran/) and 
[Gentoo Linux](https://gitweb.gentoo.org/user/AstroFloyd.git/tree/sys-apps/man-pages-fortran).


---


## Fortran-intrinsic-tags ##

Documentation for intrinsic Fortran procedures for Fortran-tags in Emacs


As a spin off, I converted the man pages to Fortran comments, where only the SYNTAX lines are uncommented and function as a prototype definition.  Because these lines are uncommented, they can be found by [Fortran-tags](https://github.com/raullaasner/fortran-tags) for [GNU Emacs](https://www.gnu.org/software/emacs/).  When the directory `fortran-intrinsic-tags/` is included when generating the `FORTAGS` "database" file for Fortran-tags, the program will see the uncommented lines as a definition of the functions and subroutines and you will be carried to the source file when pressing `M-.`, where the procedure's syntax and examples can be found.


---


Copyright (C) 1999-2015 Free Software Foundation, Inc.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3 or
any later version published by the Free Software Foundation; with the
Invariant Sections being ''Funding Free Software'', the Front-Cover
Texts being (a) (see below), and with the Back-Cover Texts being (b)
(see below).  A copy of the license is included in the section entitled
''GNU Free Documentation License''.

(a) The FSF's Front-Cover Text is:
A GNU Manual

(b) The FSF's Back-Cover Text is:
You have freedom to copy and modify this GNU Manual, like GNU
software.  Copies published by the Free Software Foundation raise
funds for GNU development.
