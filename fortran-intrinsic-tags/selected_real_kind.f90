! FORTRAN INTRINSIC PROCEDURE
!    selected_real_kind()
! 
! 
! DESCRIPTION
!    SELECTED_REAL_KIND(P,R) returns the kind value of a real data type
!    with decimal precision of at least P digits, exponent range of
!    at least R, and with a radix of RADIX.
! 
! 
! STANDARD
!    Fortran 95 and later, with RADIX Fortran 2008 or later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function selected_real_kind([p, r, radix])

! 
! 
! ARGUMENTS
! 
!    P (Optional) shall be a scalar and of type INTEGER. 
!    R (Optional) shall be a scalar and of type INTEGER. 
!    RADIX (Optional) shall be a scalar and of type INTEGER.
!    Before Fortran 2008, at least one of the arguments R or P shall
!    be present; since Fortran 2008, they are assumed to be zero if absent.
! 
! 
! RETURN VALUE
! 
!    SELECTED_REAL_KIND returns the value of the kind type parameter of
!    a real data type with decimal precision of at least P digits, a
!    decimal exponent range of at least R, and with the requested
!    RADIX. If the RADIX parameter is absent, real kinds with
!    any radix can be returned. If more than one real data type meet the
!    criteria, the kind of the data type with the smallest decimal precision
!    is returned. If no real data type matches the criteria, the result is
! 
! 
!    -1 if the processor does not support a real data type with a precision greater than or equal to P, but the R and
!    RADIX requirements can be fulfilled
! 
!    -2 if the processor does not support a real type with an exponent range greater than or equal to R, but P and RADIX
!    are fulfillable
! 
!    -3 if RADIX but not P and R requirements are fulfillable
! 
!    -4 if RADIX and either P or R requirements are fulfillable
! 
!    -5 if there is no real type with the given RADIX 
! 
! 
! SEE ALSO
!    PRECISION, RANGE, RADIX
! 
! 
! EXAMPLE
! 
!              program real_kinds
!                integer,parameter :: p6 = selected_real_kind(6)
!                integer,parameter :: p10r100 = selected_real_kind(10,100)
!                integer,parameter :: r400 = selected_real_kind(r=400)
!                real(kind=p6) :: x
!                real(kind=p10r100) :: y
!                real(kind=r400) :: z
! 
!                print *, precision(x), range(x)
!                print *, precision(y), range(y)
!                print *, precision(z), range(z)
!              end program real_kinds
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
