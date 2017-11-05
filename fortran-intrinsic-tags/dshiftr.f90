! FORTRAN INTRINSIC PROCEDURE
!    dshiftr()
! 
! 
! DESCRIPTION
!    DSHIFTR(I, J, SHIFT) combines bits of I and J. The
!    leftmost SHIFT bits of the result are the rightmost SHIFT
!    bits of I, and the remaining bits are the leftmost bits of
!    J.
! 
! 
! STANDARD
!    Fortran 2008 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function dshiftr(i, j, shift)

! 
! 
! ARGUMENTS
! 
!    I Shall be of type INTEGER or a BOZ constant. 
!    J Shall be of type INTEGER or a BOZ constant. 
!    If both I and J have integer type, then they shall have
!    the same kind type parameter. I and J shall not both be
!    BOZ constants. 
!    SHIFT Shall be of type INTEGER. It shall
!    be nonnegative.  If I is not a BOZ constant, then SHIFT
!    shall be less than or equal to BIT_SIZE(I); otherwise,
!    SHIFT shall be less than or equal to BIT_SIZE(J).
! 
! 
! RETURN VALUE
!    If either I or J is a BOZ constant, it is first converted
!    as if by the intrinsic function INT to an integer type with the
!    kind type parameter of the other.
! 
! 
! SEE ALSO
!    DSHIFTL
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
