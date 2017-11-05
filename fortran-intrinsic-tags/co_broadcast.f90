! FORTRAN INTRINSIC PROCEDURE
!    co_broadcast()
! 
! 
! DESCRIPTION
!    CO_BROADCAST copies the value of argument A on the image with
!    image index SOURCE_IMAGE to all images in the current team.  A
!    becomes defined as if by intrinsic assignment.  If the execution was
!    successful and STAT is present, it is assigned the value zero.  If the
!    execution failed, STAT gets assigned a nonzero value and, if present,
!    ERRMSG gets assigned a value describing the occurred error.
! 
! 
! STANDARD
!    Technical Specification (TS) 18508 or later
! 
! 
! CLASS
!    Collective subroutine
! 
! 
! PROTOTYPE

subroutine co_broadcast(a, source_image  [, stat, errmsg])

! 
! 
! ARGUMENTS
! 
!    A            INTENT(INOUT) argument; shall have the same
!    dynamic type and type paramters on all images of the current team. If it
!    is an array, it shall have the same shape on all images. 
!    SOURCE_IMAGE a scalar integer expression. 
!    It shall have the same the same value on all images and refer to an
!    image of the current team. 
!    STAT         (optional) a scalar integer variable
!    ERRMSG       (optional) a scalar character variable
! 
! 
! EXAMPLE
! 
!              program test
!                integer :: val(3)
!                if (this_image() == 1) then
!                  val = [1, 5, 3]
!                end if
!                call co_broadcast (val, source_image=1)
!                print *, this_image, ":", val
!              end program test
! 
! SEE ALSO
!    CO_MAX, CO_MIN, CO_SUM, CO_REDUCE
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
