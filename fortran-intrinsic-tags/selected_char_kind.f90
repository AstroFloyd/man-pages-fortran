! FORTRAN INTRINSIC PROCEDURE
!    selected_char_kind()
! 
! 
! DESCRIPTION
! 
!    SELECTED_CHAR_KIND(NAME) returns the kind value for the character
!    set named NAME, if a character set with such a name is supported,
!    or -1 otherwise. Currently, supported character sets include
!    "ASCII" and "DEFAULT", which are equivalent, and "ISO_10646"
!    (Universal Character Set, UCS-4) which is commonly known as Unicode.
! 
! 
! STANDARD
!    Fortran 2003 and later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function selected_char_kind(name)

! 
! 
! ARGUMENTS
! 
!    NAME Shall be a scalar and of the default character type.
! 
! 
! EXAMPLE
! 
!              program character_kind
!                use iso_fortran_env
!                implicit none
!                integer, parameter :: ascii = selected_char_kind ("ascii")
!                integer, parameter :: ucs4  = selected_char_kind ('ISO_10646')
! 
!                character(kind=ascii, len=26) :: alphabet
!                character(kind=ucs4,  len=30) :: hello_world
! 
!                alphabet = ascii_"abcdefghijklmnopqrstuvwxyz"
!                hello_world = ucs4_'Hello World and Ni Hao -- ' &
!                              // char (int (z'4F60'), ucs4)     &
!                              // char (int (z'597D'), ucs4)
! 
!                write (*,*) alphabet
! 
!                open (output_unit, encoding='UTF-8')
!                write (*,*) trim (hello_world)
!              end program character_kind
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
