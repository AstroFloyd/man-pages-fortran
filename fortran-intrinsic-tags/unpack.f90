! FORTRAN INTRINSIC PROCEDURE
!    unpack()
! 
! 
! DESCRIPTION
!    Store the elements of VECTOR in an array of higher rank.
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

function unpack(vector, mask, field)

! 
! 
! ARGUMENTS
! 
!    VECTOR Shall be an array of any type and rank one. It
!    shall have at least as many elements as MASK has TRUE values. 
!    MASK   Shall be an array of type LOGICAL. 
!    FIELD  Shall be of the same type as VECTOR and have
!    the same shape as MASK.
! 
! 
! RETURN VALUE
!    The resulting array corresponds to FIELD with TRUE elements
!    of MASK replaced by values from VECTOR in array element order.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_unpack
!                integer :: vector(2)  = (/1,1/)
!                logical :: mask(4)  = (/ .TRUE., .FALSE., .FALSE., .TRUE. /)
!                integer :: field(2,2) = 0, unity(2,2)
! 
!                ! result: unity matrix
!                unity = unpack(vector, reshape(mask, (/2,2/)), field)
!              END PROGRAM
! 
! SEE ALSO
!    PACK, SPREAD
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
