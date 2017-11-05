! FORTRAN INTRINSIC PROCEDURE
!    ishftc()
! 
! 
! DESCRIPTION
!    ISHFTC returns a value corresponding to I with the
!    rightmost SIZE bits shifted circularly SHIFT places; that
!    is, bits shifted out one end are shifted into the opposite end.  A value
!    of SHIFT greater than zero corresponds to a left shift, a value of
!    zero corresponds to no shift, and a value less than zero corresponds to
!    a right shift.  The absolute value of SHIFT must be less than
!    SIZE.  If the SIZE argument is omitted, it is taken to be
!    equivalent to BIT_SIZE(I).
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function ishftc(i, shift  [, size])

! 
! 
! ARGUMENTS
! 
!    I The type shall be INTEGER. 
!    SHIFT The type shall be INTEGER. 
!    SIZE (Optional) The type shall be INTEGER;
!    the value must be greater than zero and less than or equal to
!    BIT_SIZE(I).
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of the same kind as
!    I.
! 
! 
! SEE ALSO
!    ISHFT
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
