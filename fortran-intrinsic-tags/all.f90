! FORTRAN INTRINSIC PROCEDURE
!    all()
! 
! 
! DESCRIPTION
!    ALL(MASK  [, DIM]) determines if all the values are true in MASK
!    in the array along dimension DIM.
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

function all(mask  [, dim])

! 
! 
! ARGUMENTS
! 
!    MASK The type of the argument shall be LOGICAL and
!    it shall not be scalar. 
!    DIM  (Optional) DIM shall be a scalar integer
!    with a value that lies between one and the rank of MASK.
! 
! 
! RETURN VALUE
!    ALL(MASK) returns a scalar value of type LOGICAL where
!    the kind type parameter is the same as the kind type parameter of
!    MASK.  If DIM is present, then ALL(MASK, DIM) returns
!    an array with the rank of MASK minus 1.  The shape is determined from
!    the shape of MASK where the DIM dimension is elided.
! 
! 
!    (A) ALL(MASK) is true if all elements of MASK are true. 
!    It also is true if MASK has zero size; otherwise, it is false. 
! 
!    (B) If the rank of MASK is one, then ALL(MASK,DIM) is equivalent
!    to ALL(MASK).  If the rank is greater than one, then ALL(MASK,DIM)
!    is determined by applying ALL to the array sections. 
! 
! 
! EXAMPLE
! 
!              program test_all
!                logical l
!                l = all((/.true., .true., .true./))
!                print *, l
!                call section
!                contains
!                  subroutine section
!                    integer a(2,3), b(2,3)
!                    a = 1
!                    b = 1
!                    b(2,2) = 2
!                    print *, all(a .eq. b, 1)
!                    print *, all(a .eq. b, 2)
!                  end subroutine section
!              end program test_all
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
