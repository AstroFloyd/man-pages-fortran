! FORTRAN INTRINSIC PROCEDURE
!    transfer()
! 
! 
! DESCRIPTION
!    Interprets the bitwise representation of SOURCE in memory as if it
!    is the representation of a variable or array of the same type and type
!    parameters as MOLD.
! 
!    This is approximately equivalent to the C concept of casting one
!    type to another.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function transfer(source, mold [, size])

! 
! 
! ARGUMENTS
! 
!    SOURCE Shall be a scalar or an array of any type. 
!    MOLD   Shall be a scalar or an array of any type. 
!    SIZE   (Optional) shall be a scalar of type
!    INTEGER.
! 
! 
! RETURN VALUE
!    The result has the same type as MOLD, with the bit level
!    representation of SOURCE.  If SIZE is present, the result is
!    a one-dimensional array of length SIZE.  If SIZE is absent
!    but MOLD is an array (of any size or shape), the result is a one-
!    dimensional array of the minimum length needed to contain the entirety
!    of the bitwise representation of SOURCE.   If SIZE is absent
!    and MOLD is a scalar, the result is a scalar.
! 
!    If the bitwise representation of the result is longer than that of
!    SOURCE, then the leading bits of the result correspond to those of
!    SOURCE and any trailing bits are filled arbitrarily.
! 
!    When the resulting bit representation does not correspond to a valid
!    representation of a variable of the same type as MOLD, the results
!    are undefined, and subsequent operations on the result cannot be
!    guaranteed to produce sensible behavior.  For example, it is possible to
!    create LOGICAL variables for which VAR and
!    .NOT.VAR both appear to be true.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_transfer
!                integer :: x = 2143289344
!                print *, transfer(x, 1.0)    ! prints "NaN" on i686
!              END PROGRAM
! 
! 
! AUTHOR
!    This information was taken from the GFortran documentation (https://gcc.gnu.org/onlinedocs/gcc-5.3.0/gfortran/) and converted to a manpage by AstroFloyd (http://astrofloyd.org).
! 
!      
! COPYRIGHT      
!      Copyright (C) 1999-2015 Free Software Foundation, Inc.
!      
!      Permission is granted to copy, distribute and/or modify this document
!      under the terms of the GNU Free Documentation License, Version 1.3 or
!      any later version published by the Free Software Foundation; with the
!      Invariant Sections being Funding Free Software
!      Texts being (a) (see below), and with the Back-Cover Texts being (b)
!      (see below).  A copy of the license is included in the section entitled
!      GNU Free Documentation License''.
!      
!      (a) The FSF
!      
!           A GNU Manual
!      
!      (b) The FSF
!      
!           You have freedom to copy and modify this GNU Manual, like GNU
!           software.  Copies published by the Free Software Foundation raise
!           funds for GNU development.
!      
