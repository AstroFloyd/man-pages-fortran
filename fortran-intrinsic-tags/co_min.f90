! FORTRAN INTRINSIC PROCEDURE
!    co_min()
! 
! 
! DESCRIPTION
!    CO_MIN determines element-wise the minimal value of A on all
!    images of the current team.  If RESULT_IMAGE is present, the minimal
!    values are returned in A on the specified image only and the value
!    of A on the other images become undefined.  If RESULT_IMAGE is
!    not present, the value is returned on all images.  If the execution was
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

subroutine co_min(a  [, result_image, stat, errmsg])

! 
! 
! ARGUMENTS
! 
!    A            shall be an integer, real or character variable,
!    which has the same type and type parameters on all images of the team. 
!    RESULT_IMAGE (optional) a scalar integer expression; if
!    present, it shall have the same the same value on all images and refer to an
!    image of the current team. 
!    STAT         (optional) a scalar integer variable
!    ERRMSG       (optional) a scalar character variable
! 
! 
! EXAMPLE
! 
!              program test
!                integer :: val
!                val = this_image ()
!                call co_min (val, result_image=1)
!                if (this_image() == 1) then
!                  write(*,*) "Minimal value", val  ! prints 1
!                end if
!              end program test
! 
! SEE ALSO
!    CO_MAX, CO_SUM, CO_REDUCE, CO_BROADCAST
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
