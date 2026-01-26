# Shell Scripting
- `Kernel` - Interface between hardware and software, forwards commands from the shell to the hardware.
- `Shell` - Interface between users and kernel.
- `Shell script` - Executable file containing multiple shell commands that are executed sequentially.
- Find the shell:

```sh
    echo $0
```

- List all available shells:

```sh
    cat /etc/shells
    cat /etc/passwd # Shows the type of shell assigned to a user
```

> Types of Linux Shells
> - Examples: `Gnome`, `KDE`, `sh`, `bash`, `csh and tcsh`, `ksh`
>
> Contents of shell script
>   1) `Shell` (#!/bin/bash) - The 1st line of a shell script file.
>   2) `Comments` (# comments) - Description of the script.
>   3) `Commands` (echo, cp, grep etc.)
>   4) `Statements` (if, while, for etc.)
>
> - `N/B:`- A shell script should have executable permissions e.g. -rwx, r-x.
>         - A shell script has to be called from the absolute path.

### Basic Scripting
`Output to screen using echo`
- Create the directory `myscripts`:

```sh
    mkdir myscripts
    cd myscripts
```

- Create the shell script:

```sh
    vi output-screen
```

```sh
    #!/bin/bash

    echo Hello World
```

- Change the file permissions to allow it to be executable:

```sh
    chmod a+x output-screen
    ls -ltr # Confirm the file is now executable
```

- Run the shell script:

```sh
    ./output-screen
```

### Troubleshooting
- If you encounter such an error:

    ```
        $'\r': command not found
        syntax error near unexpected token `$'\r''
    ```

    - Solution:

    ```sh
        sed -i 's/\r$//' *
    ```