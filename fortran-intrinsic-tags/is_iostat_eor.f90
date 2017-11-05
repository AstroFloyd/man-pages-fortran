! FORTRAN INTRINSIC PROCEDURE
!    is_iostat_eor()
! 
! 
! DESCRIPTION
!    IS_IOSTAT_EOR tests whether an variable has the value of the I/O
!    status "end of record". The function is equivalent to comparing the
!    variable with the IOSTAT_EOR parameter of the intrinsic module
!    ISO_FORTRAN_ENV.
! 
! 
! STANDARD
!    Fortran 2003 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function is_iostat_eor(i)

! 
! 
! ARGUMENTS
! 
!    I Shall be of the type INTEGER.
! 
! 
! RETURN VALUE
!    Returns a LOGICAL of the default kind, which .TRUE. if
!    I has the value which indicates an end of file condition for
!    IOSTAT= specifiers, and is .FALSE. otherwise.
! 
! 
! EXAMPLE
! 
!              PROGRAM iostat
!                IMPLICIT NONE
!                INTEGER :: stat, i(50)
!                OPEN(88, FILE='test.dat', FORM='UNFORMATTED')
!                READ(88, IOSTAT=stat) i
!                IF(IS_IOSTAT_EOR(stat)) STOP 'END OF RECORD'
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
