! FORTRAN INTRINSIC PROCEDURE
!    fortran()
! 
! 
! DESCRIPTION
! 
!    The description of the Fortran language in these man pages has been taken from the GNU Fortran Compiler documentation (https://gcc.gnu.org/onlinedocs/gcc-5.3.0/gfortran/).  They contain elements that follow the Fortran standard, and elements that are GNU extentions.  This standard is indicated in the detailed man pages for each procedure.  The Free Software Foundation, Inc. is the copyright holder of this documentation (see COPYRIGHT below).
! 
!    The intrinsic procedures provided by GNU Fortran include all of the intrinsic procedures required by the Fortran 95 standard, a set of intrinsic procedures for backwards compatibility with G77, and a selection of intrinsic procedures from the Fortran 2003 and Fortran 2008 standards. Any conflict between a description here and a description in either the Fortran 95 standard, the Fortran 2003 standard or the Fortran 2008 standard is unintentional, and the standard(s) should be considered authoritative.
! 
!    The enumeration of the KIND type parameter is processor defined in the Fortran 95 standard. GNU Fortran defines the default integer type and default real type by INTEGER(KIND=4) and REAL(KIND=4), respectively. The standard mandates that both data types shall have another kind, which have more precision. On typical target architectures supported by gfortran, this kind type parameter is KIND=8. Hence, REAL(KIND=8) and DOUBLE PRECISION are equivalent. In the description of generic intrinsic procedures, the kind type parameter will be specified by KIND=*, and in the description of specific names for an intrinsic procedure the kind type parameter will be explicitly given (e.g., REAL(KIND=4) or REAL(KIND=8)). Finally, for brevity the optional KIND= syntax will be omitted.
! 
!    Many of the intrinsic procedures take one or more optional arguments. This document follows the convention used in the Fortran 95 standard, and denotes such arguments by square brackets.
! 
!    GNU Fortran offers the -std=f95 and -std=gnu options, which can be used to restrict the set of intrinsic procedures to a given standard. By default, gfortran sets the -std=gnu option, and so all intrinsic procedures described here are accepted. There is one caveat. For a select group of intrinsic procedures, g77 implemented both a function and a subroutine. Both classes have been implemented in gfortran for backwards compatibility with g77. It is noted here that these functions and subroutines cannot be intermixed in a given subprogram. In the descriptions that follow, the applicable standard for each intrinsic procedure is noted. 
! 
! 
! 
! 
! INTRINSIC PROCEDURES
! 
!    The detailed manual page for each procedure can be found in section 3f of the man pages, and read using the command man 3f <procedure>.
! 
!    abort \- Abort the program
! 
!    abs \- Absolute value
! 
!    access \- Checks file access modes
! 
!    achar \- Character in ASCII collating sequence
! 
!    acos \- Arccosine function
! 
!    acosh \- Inverse hyperbolic cosine function
! 
!    adjustl \- Left adjust a string
! 
!    adjustr \- Right adjust a string
! 
!    aimag \- Imaginary part of complex number
! 
!    aint \- Truncate to a whole number
! 
!    alarm \- Execute a routine after a given delay
! 
!    all \- All values in MASK along DIM are true
! 
!    allocated \- Status of an allocatable entity
! 
!    and \- Bitwise logical AND
! 
!    anint \- Nearest whole number
! 
!    any \- Any value in MASK along DIM is true
! 
!    asin \- Arcsine function
! 
!    asinh \- Inverse hyperbolic sine function
! 
!    associated \- Status of a pointer or pointer/target pair
! 
!    atan \- Arctangent function
! 
!    atan2 \- Arctangent function
! 
!    atanh \- Inverse hyperbolic tangent function
! 
!    atomic_add \- Atomic ADD operation
! 
!    atomic_and \- Atomic bitwise AND operation
! 
!    atomic_cas \- Atomic compare and swap
! 
!    atomic_define \- Setting a variable atomically
! 
!    atomic_fetch_add \- Atomic ADD operation with prior fetch
! 
!    atomic_fetch_and \- Atomic bitwise AND operation with prior fetch
! 
!    atomic_fetch_or \- Atomic bitwise OR operation with prior fetch
! 
!    atomic_fetch_xor \- Atomic bitwise XOR operation with prior fetch
! 
!    atomic_or \- Atomic bitwise OR operation
! 
!    atomic_ref \- Obtaining the value of a variable atomically
! 
!    atomic_xor \- Atomic bitwise OR operation
! 
!    backtrace \- Show a backtrace
! 
!    bessel_j0 \- Bessel function of the first kind of order 0
! 
!    bessel_j1 \- Bessel function of the first kind of order 1
! 
!    bessel_jn \- Bessel function of the first kind
! 
!    bessel_y0 \- Bessel function of the second kind of order 0
! 
!    bessel_y1 \- Bessel function of the second kind of order 1
! 
!    bessel_yn \- Bessel function of the second kind
! 
!    bge \- Bitwise greater than or equal to
! 
!    bgt \- Bitwise greater than
! 
!    bit_size \- Bit size inquiry function
! 
!    ble \- Bitwise less than or equal to
! 
!    blt \- Bitwise less than
! 
!    btest \- Bit test function
! 
!    c_associated \- Status of a C pointer
! 
!    c_f_pointer \- Convert C into Fortran pointer
! 
!    c_f_procpointer \- Convert C into Fortran procedure pointer
! 
!    c_funloc \- Obtain the C address of a procedure
! 
!    c_loc \- Obtain the C address of an object
! 
!    c_sizeof \- Size in bytes of an expression
! 
!    ceiling \- Integer ceiling function
! 
!    char \- Character conversion function
! 
!    chdir \- Change working directory
! 
!    chmod \- Change access permissions of files
! 
!    cmplx \- Complex conversion function
! 
!    co_broadcast \- Copy a value to all images the current set of images
! 
!    co_max \- Maximal value on the current set of images
! 
!    co_min \- Minimal value on the current set of images
! 
!    co_reduce \- Reduction of values on the current set of images
! 
!    co_sum \- Sum of values on the current set of images
! 
!    command_argument_count \- Get number of command line arguments
! 
!    compiler_options \- Options passed to the compiler
! 
!    compiler_version \- Compiler version string
! 
!    complex \- Complex conversion function
! 
!    conjg \- Complex conjugate function
! 
!    cos \- Cosine function
! 
!    cosh \- Hyperbolic cosine function
! 
!    count \- Count function
! 
!    cpu_time \- CPU elapsed time in seconds
! 
!    cshift \- Circular shift elements of an array
! 
!    ctime \- Convert a time into a string
! 
!    date_and_time \- Date and time subroutine
! 
!    dble \- Double conversion function
! 
!    dcmplx \- Double complex conversion function
! 
!    digits \- Significant binary digits function
! 
!    dim \- Positive difference
! 
!    dot_product \- Dot product function
! 
!    dprod \- Double product function
! 
!    dreal \- Double real part function
! 
!    dshiftl \- Combined left shift
! 
!    dshiftr \- Combined right shift
! 
!    dtime \- Execution time subroutine (or function)
! 
!    eoshift \- End-off shift elements of an array
! 
!    epsilon \- Epsilon function
! 
!    erf \- Error function
! 
!    erfc \- Error function
! 
!    erfc_scaled \- Error function
! 
!    etime \- Execution time subroutine (or function)
! 
!    execute_command_line \- Execute a shell command
! 
!    exit \- Exit the program with status.
! 
!    exp \- Exponential function
! 
!    exponent \- Exponent function
! 
!    extends_type_of \-  Query dynamic type for extension
! 
!    fdate \- Get the current time as a string
! 
!    fget \- Read a single character in stream mode from stdin
! 
!    fgetc \- Read a single character in stream mode
! 
!    floor \- Integer floor function
! 
!    flush \- Flush I/O unit(s)
! 
!    fnum \- File number function
! 
!    fput \- Write a single character in stream mode to stdout
! 
!    fputc \- Write a single character in stream mode
! 
!    fraction \- Fractional part of the model representation
! 
!    free \- Frees memory
! 
!    fseek \- Low level file positioning subroutine
! 
!    fstat \- Get file status
! 
!    ftell \- Current stream position
! 
!    gamma \- Gamma function
! 
!    gerror \- Get last system error message
! 
!    getarg \- Get command line arguments
! 
!    get_command \- Get the entire command line
! 
!    get_command_argument \- Get command line arguments
! 
!    getcwd \- Get current working directory
! 
!    getenv \- Get an environmental variable
! 
!    get_environment_variable \- Get an environmental variable
! 
!    getgid \- Group ID function
! 
!    getlog \- Get login name
! 
!    getpid \- Process ID function
! 
!    getuid \- User ID function
! 
!    gmtime \- Convert time to GMT info
! 
!    hostnm \- Get system host name
! 
!    huge \- Largest number of a kind
! 
!    hypot \- Euclidean distance function
! 
!    iachar \- Code in ASCII collating sequence
! 
!    iall \- Bitwise AND of array elements
! 
!    iand \- Bitwise logical and
! 
!    iany \- Bitwise OR of array elements
! 
!    iargc \- Get the number of command line arguments
! 
!    ibclr \- Clear bit
! 
!    ibits \- Bit extraction
! 
!    ibset \- Set bit
! 
!    ichar \- Character-to-integer conversion function
! 
!    idate \- Get current local time subroutine (day/month/year)
! 
!    ieor \- Bitwise logical exclusive or
! 
!    ierrno \- Get the last system error number
! 
!    image_index \- Function that converts a cosubscript to an image index
! 
!    index \- Position of a substring within a string
! 
!    int \- Convert to integer type
! 
!    int2 \- Convert to 16-bit integer type
! 
!    int8 \- Convert to 64-bit integer type
! 
!    ior \- Bitwise logical or
! 
!    iparity \- Bitwise XOR of array elements
! 
!    irand \- Integer pseudo-random number
! 
!    is_iostat_end \- Test for end-of-file value
! 
!    is_iostat_eor \- Test for end-of-record value
! 
!    isatty \- Whether a unit is a terminal device.
! 
!    ishft \- Shift bits
! 
!    ishftc \- Shift bits circularly
! 
!    isnan \- Test for a NaN
! 
!    itime \- Get current local time subroutine (hour/minutes/seconds)
! 
!    kill \- Send a signal to a process
! 
!    kind \- Kind of an entity
! 
!    lbound \- Lower dimension bounds of an array
! 
!    lcobound \- Lower codimension bounds of an array
! 
!    leadz \- Number of leading zero bits of an integer
! 
!    len \- Length of a character entity
! 
!    len_trim \- Length of a character entity without trailing blank characters
! 
!    lge \- Lexical greater than or equal
! 
!    lgt \- Lexical greater than
! 
!    link \- Create a hard link
! 
!    lle \- Lexical less than or equal
! 
!    llt \- Lexical less than
! 
!    lnblnk \- Index of the last non-blank character in a string
! 
!    loc \- Returns the address of a variable
! 
!    log \- Natural logarithm function
! 
!    log10 \- Base 10 logarithm function
! 
!    log_gamma \- Logarithm of the Gamma function
! 
!    logical \- Convert to logical type
! 
!    long \- Convert to integer type
! 
!    lshift \- Left shift bits
! 
!    lstat \- Get file status
! 
!    ltime \- Convert time to local time info
! 
!    malloc \- Allocate dynamic memory
! 
!    maskl \- Left justified mask
! 
!    maskr \- Right justified mask
! 
!    matmul \- matrix multiplication
! 
!    max \- Maximum value of an argument list
! 
!    maxexponent \- Maximum exponent of a real kind
! 
!    maxloc \- Location of the maximum value within an array
! 
!    maxval \- Maximum value of an array
! 
!    mclock \- Time function
! 
!    mclock8 \- Time function (64-bit)
! 
!    merge \- Merge variables
! 
!    merge_bits \- Merge of bits under mask
! 
!    min \- Minimum value of an argument list
! 
!    minexponent \- Minimum exponent of a real kind
! 
!    minloc \- Location of the minimum value within an array
! 
!    minval \- Minimum value of an array
! 
!    mod \- Remainder function
! 
!    modulo \- Modulo function
! 
!    move_alloc \- Move allocation from one object to another
! 
!    mvbits \- Move bits from one integer to another
! 
!    nearest \- Nearest representable number
! 
!    new_line \- New line character
! 
!    nint \- Nearest whole number
! 
!    norm2 \- Euclidean vector norms
! 
!    not \- Logical negation
! 
!    null \- Function that returns an disassociated pointer
! 
!    num_images \- Function that returns the number of images
! 
!    or \- Bitwise logical OR
! 
!    pack \- Pack an array into an array of rank one
! 
!    parity \- Reduction with exclusive OR
! 
!    perror \- Print system error message
! 
!    popcnt \- Number of bits set
! 
!    poppar \- Parity of the number of bits set
! 
!    precision \- Decimal precision of a real kind
! 
!    present \- Determine whether an optional dummy argument is specified
! 
!    product \- Product of array elements
! 
!    radix \- Base of a model number
! 
!    ran \- Real pseudo-random number
! 
!    rand \- Real pseudo-random number
! 
!    random_number \- Pseudo-random number
! 
!    random_seed \- Initialize a pseudo-random number sequence
! 
!    range \- Decimal exponent range
! 
!    rank \- Rank of a data object
! 
!    real \- Convert to real type
! 
!    rename \- Rename a file
! 
!    repeat \- Repeated string concatenation
! 
!    reshape \- Function to reshape an array
! 
!    rrspacing \- Reciprocal of the relative spacing
! 
!    rshift \- Right shift bits
! 
!    same_type_as \-  Query dynamic types for equality
! 
!    scale \- Scale a real value
! 
!    scan \- Scan a string for the presence of a set of characters
! 
!    secnds \- Time function
! 
!    second \- CPU time function
! 
!    selected_char_kind \- Choose character kind
! 
!    selected_int_kind \- Choose integer kind
! 
!    selected_real_kind \- Choose real kind
! 
!    set_exponent \- Set the exponent of the model
! 
!    shape \- Determine the shape of an array
! 
!    shifta \- Right shift with fill
! 
!    shiftl \- Left shift
! 
!    shiftr \- Right shift
! 
!    sign \- Sign copying function
! 
!    signal \- Signal handling subroutine (or function)
! 
!    sin \- Sine function
! 
!    sinh \- Hyperbolic sine function
! 
!    size \- Determine the size of an array
! 
!    sizeof \- Size in bytes of an expression
! 
!    sleep \- Sleep for the specified number of seconds
! 
!    spacing \- Smallest distance between two numbers of a given type
! 
!    spread \- Add a dimension to an array
! 
!    sqrt \- Square-root function
! 
!    srand \- Reinitialize the random number generator
! 
!    stat \- Get file status
! 
!    storage_size \- Storage size in bits
! 
!    sum \- Sum of array elements
! 
!    symlnk \- Create a symbolic link
! 
!    system \- Execute a shell command
! 
!    system_clock \- Time function
! 
!    tan \- Tangent function
! 
!    tanh \- Hyperbolic tangent function
! 
!    this_image \- Function that returns the cosubscript index of this image
! 
!    time \- Time function
! 
!    time8 \- Time function (64-bit)
! 
!    tiny \- Smallest positive number of a real kind
! 
!    trailz \- Number of trailing zero bits of an integer
! 
!    transfer \- Transfer bit patterns
! 
!    transpose \- Transpose an array of rank two
! 
!    trim \- Remove trailing blank characters of a string
! 
!    ttynam \- Get the name of a terminal device.
! 
!    ubound \- Upper dimension bounds of an array
! 
!    ucobound \- Upper codimension bounds of an array
! 
!    umask \- Set the file creation mask
! 
!    unlink \- Remove a file from the file system
! 
!    unpack \- Unpack an array of rank one into an array
! 
!    verify \- Scan a string for characters not a given set
! 
!    xor \- Bitwise logical exclusive OR
! 
! 
! 
! INTRINSIC MODULES
! 
!    Detailed man pages are not yet available for the intrinsic modules.
! 
!    iso_fortran_env
! 
!    iso_c_binding
! 
!    IEEE modules: ieee_exceptions, IEEE_ARITHMETIC, and IEEE_FEATURES
! 
!    OpenMP modules: omp_lib and OMP_LIB_KINDS
! 
!    OpenACC module: openacc
! 
! 
! COPYRIGHT
! 
! 
! AUTHOR
!    This information was taken from the GFortran documentation (https://gcc.gnu.org/onlinedocs/gcc-5.3.0/gfortran/) and converted to a man page by AstroFloyd (http://astrofloyd.org).
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
