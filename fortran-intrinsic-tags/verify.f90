! FORTRAN INTRINSIC PROCEDURE
!    verify()
! 
! 
! DESCRIPTION
!    Verifies that all the characters in STRING belong to the set of
!    characters in SET.
! 
!    If BACK is either absent or equals FALSE, this function
!    returns the position of the leftmost character of STRING that is
!    not in SET. If BACK equals TRUE, the rightmost
!    position is returned. If all characters of STRING are found in
!    SET, the result is zero.
! 
! 
! STANDARD
!    Fortran 95 and later, with KIND argument Fortran 2003 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function verify(string, set [, back  [, kind]])

! 
! 
! ARGUMENTS
! 
!    STRING Shall be of type CHARACTER. 
!    SET    Shall be of type CHARACTER. 
!    BACK   (Optional) shall be of type LOGICAL. 
!    KIND   (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of kind KIND. If
!    KIND is absent, the return value is of default integer kind.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_verify
!                WRITE(*,*) VERIFY("FORTRAN", "AO")           ! 1, found 'F'
!                WRITE(*,*) VERIFY("FORTRAN", "FOO")          ! 3, found 'R'
!                WRITE(*,*) VERIFY("FORTRAN", "C++")          ! 1, found 'F'
!                WRITE(*,*) VERIFY("FORTRAN", "C++", .TRUE.)  ! 7, found 'N'
!                WRITE(*,*) VERIFY("FORTRAN", "FORTRAN")      ! 0' found none
!              END PROGRAM
! 
! SEE ALSO
!    SCAN, INDEX
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
