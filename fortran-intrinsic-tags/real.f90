! FORTRAN INTRINSIC PROCEDURE
!    real()
! 
! 
! DESCRIPTION
!    REAL(A  [, KIND]) converts its argument A to a real type.  The
!    REALPART function is provided for compatibility with g77,
!    and its use is strongly discouraged.
! 
! 
! STANDARD
!    Fortran 77 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function real(a  [, kind])

function realpart(z)

! 
! 
! ARGUMENTS
! 
!    A    Shall be INTEGER, REAL, or
!    COMPLEX. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    These functions return a REAL variable or array under
!    the following rules:
! 
! 
!    (A) REAL(A) is converted to a default real type if A is an
!    integer or real variable. 
! 
!    (B) REAL(A) is converted to a real type with the kind type parameter
!    of A if A is a complex variable. 
! 
!    (C) REAL(A, KIND) is converted to a real type with kind type
!    parameter KIND if A is a complex, integer, or real
!    variable. 
! 
! 
! EXAMPLE
! 
!              program test_real
!                complex :: x = (1.0, 2.0)
!                print *, real(x), real(x,8), realpart(x)
!              end program test_real
! 
! SPECIFIC NAMES
! 
!    Name             Argument           Return type     Standard
!    FLOAT(A)  INTEGER(4)  REAL(4)  Fortran 77 and later
!    DFLOAT(A) INTEGER(4)  REAL(8)  GNU extension
!    SNGL(A)   INTEGER(8)  REAL(4)  Fortran 77 and later
! 
! 
! SEE ALSO
!    DBLE
! 
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
