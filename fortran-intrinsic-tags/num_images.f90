! FORTRAN INTRINSIC PROCEDURE
!    num_images()
! 
! 
! DESCRIPTION
!    Returns the number of images.
! 
! 
! STANDARD
!    Fortran 2008 and later. With DISTANCE or FAILED argument,
!    Technical Specification (TS) 18508 or later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function num_images(distance, failed)

! 
! 
! ARGUMENTS
! 
!    DISTANCE (optional, intent(in)) Nonnegative scalar integer
!    FAILED   (optional, intent(in)) Scalar logical expression
! 
! 
! RETURN VALUE
!    Scalar default-kind integer.  If DISTANCE is not present or has value 0,
!    the number of images in the current team is returned. For values smaller or
!    equal distance to the initial team, it returns the number of images index
!    on the ancestor team which has a distance of DISTANCE from the invoking
!    team. If DISTANCE is larger than the distance to the initial team, the
!    number of images of the initial team is returned. If FAILED is not present
!    the total number of images is returned; if it has the value .TRUE.,
!    the number of failed images is returned, otherwise, the number of images which
!    do have not the failed status.
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
! SEE ALSO
!    THIS_IMAGE, IMAGE_INDEX
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
