! FORTRAN INTRINSIC PROCEDURE
!    this_image()
! 
! 
! DESCRIPTION
!    Returns the cosubscript for this image.
! 
! 
! STANDARD
!    Fortran 2008 and later. With DISTANCE argument,
!    Technical Specification (TS) 18508 or later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function this_image()

function this_image(distance)

function this_image(coarray  [, dim])

! 
! 
! ARGUMENTS
! 
!    DISTANCE (optional, intent(in)) Nonnegative scalar integer
!    (not permitted together with COARRAY). 
!    COARRAY Coarray of any type  (optional; if DIM
!    present, required). 
!    DIM     default integer scalar (optional). If present,
!    DIM shall be between one and the corank of COARRAY.
! 
! 
! RETURN VALUE
!    Default integer. If COARRAY is not present, it is scalar; if
!    DISTANCE is not present or has value 0, its value is the image index on
!    the invoking image for the current team, for values smaller or equal
!    distance to the initial team, it returns the image index on the ancestor team
!    which has a distance of DISTANCE from the invoking team. If
!    DISTANCE is larger than the distance to the initial team, the image
!    index of the initial team is returned. Otherwise when the COARRAY is
!    present, if DIM is not present, a rank-1 array with corank elements is
!    returned, containing the cosubscripts for COARRAY specifying the invoking
!    image. If DIM is present, a scalar is returned, with the value of
!    the DIM element of THIS_IMAGE(COARRAY).
! 
! 
! EXAMPLE
! 
!              INTEGER :: value[*]
!              INTEGER :: i
!              value = THIS_IMAGE()
!              SYNC ALL
!              IF (THIS_IMAGE() == 1) THEN
!                DO i = 1, NUM_IMAGES()
!                  WRITE(*,'(2(a,i0))') 'value[', i, '] is ', value[i]
!                END DO
!              END IF
! 
!              ! Check whether the current image is the initial image
!              IF (THIS_IMAGE(HUGE(1)) /= THIS_IMAGE())
!                error stop "something is rotten here"
! 
! SEE ALSO
!    NUM_IMAGES, IMAGE_INDEX
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
