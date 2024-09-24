# libft

### Description

libft is a custom library developed as part of the 42 school curriculum. The goal of this project is to recode several functions from the standard C library, thereby gaining a deeper understanding of their inner workings. By building these functions from scratch, I learned how to construct and manage my own reusable C library, a foundational skill for systems programming.

### Features

This library implements a variety of essential functions that are typically included in the C standard library, with additional list manipulation functions. The project is split into two main parts: standard library functions and additional list-related functions.
#### Part 1: Standard C Library Functions

The functions provided here are frequently used utilities in C programming, including string manipulation, memory handling, and character type checking.

- Conversion and Memory Functions:\
  `ft_atoi`, `ft_bzero`, `ft_calloc`, `ft_memchr`, `ft_memcmp`, `ft_memcpy`, `ft_memmove`, `ft_memset`

- Character Handling:\
  `ft_isalnum`, `ft_isalpha`, `ft_isascii`, `ft_isdigit`, `ft_isprint`, `ft_tolower`,`ft_toupper`

- String Manipulation:\
  `ft_itoa`, `ft_split`, `ft_strchr`, `ft_strdup`,`ft_striteri`, `ft_strjoin`, `ft_strlcat`, `ft_strlcpy`,
    `ft_strlen`, `ft_strmapi`, `ft_strncmp`, `ft_strnstr`, `ft_strrchr`, `ft_strtrim`, `ft_substr`

- File Descriptor Functions:\
  `ft_putchar_fd`, `ft_putendl_fd`, `ft_putnbr_fd`, `ft_putstr_fd`

#### Part 2: Linked List Functions

This section contains functions designed to manipulate linked lists, a common data structure in C.

- List Creation and Management:\
    `ft_lstnew`, `ft_lstsize`, `ft_lstadd_front`, `ft_lstadd_back`, `ft_lstlast`

- List Deletion and Iteration:\
    `ft_lstdelone`, `ft_lstclear`, `ft_lstiter`, `ft_lstmap`
