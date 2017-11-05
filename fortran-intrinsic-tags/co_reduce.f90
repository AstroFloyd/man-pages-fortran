! FORTRAN INTRINSIC PROCEDURE
!    co_reduce()
! 
! 
! DESCRIPTION
!    CO_REDUCE determines element-wise the reduction of the value of A
!    on all images of the current team.  The pure function passed as OPERATOR
!    is used to pairwise reduce the values of A by passing either the value
!    of A of different images or the result values of such a reduction as
!    argument.  If A is an array, the deduction is done element wise. If
!    RESULT_IMAGE is present, the result values are returned in A on
!    the specified image only and the value of A on the other images become
!    undefined.  If RESULT_IMAGE is not present, the value is returned on all
!    images.  If the execution was successful and STAT is present, it is
!    assigned the value zero.  If the execution failed, STAT gets assigned
!    a nonzero value and, if present, ERRMSG gets assigned a value describing
!    the occurred error.
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

subroutine co_reduce(a, operator,  [, result_image, stat, errmsg])

! 
! 
! ARGUMENTS
! 
!    A            is an INTENT(INOUT) argument and shall be
!    nonpolymorphic. If it is allocatable, it shall be allocated; if it is a pointer,
!    it shall be associated.  A shall have the same type and type parameters on
!    all images of the team; if it is an array, it shall have the same shape on all
!    images. 
!    OPERATOR     pure function with two scalar nonallocatable
!    arguments, which shall be nonpolymorphic and have the same type and type
!    parameters as A.  The function shall return a nonallocatable scalar of
!    the same type and type parameters as A.  The function shall be the same on
!    all images and with regards to the arguments mathematically commutative and
!    associative.  Note that OPERATOR may not be an elemental function, unless
!    it is an intrisic function. 
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
!                call co_reduce (val, result_image=1, operator=myprod)
!                if (this_image() == 1) then
!                  write(*,*) "Product value", val  ! prints num_images() factorial
!                end if
!              contains
!                pure function myprod(a, b)
!                  integer, value :: a, b
!                  integer :: myprod
!                  myprod = a * b
!                end function myprod
!              end program test
! 
! NOTE
!    While the rules permit in principle an intrinsic function, none of the
!    intrinsics in the standard fulfill the criteria of having a specific
!    function, which takes two arguments of the same type and returning that
!    type as result.
! 
! 
! SEE ALSO
!    CO_MIN, CO_MAX, CO_SUM, CO_BROADCAST
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
