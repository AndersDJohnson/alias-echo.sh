# alias-echo.sh

Like shell's `alias`, but first `echo`s the underlying command before running.

Useful for learning, so you don't look like an idiot when you stray from your own shell.

## Use

Import the script then define alias(es), e.g., in your shell init script:

```sh
source ~/libs/alias-echo.sh/alias-echo.sh

alias-echo grin grep -rin
```

Now you can use it:
```sh
> grin var ~/code
grep -rin var /Users/abc/code
/Users/abc/code/project/index.js:3: var name = 'project';
```

If you want to temporarily disable `echo`ing, e.g., to pipe output, set a value for the environment variable
`NO_ALIAS_ECHO`, e.g.:

```sh
NO_ALIAS_ECHO=1 grin var ~/code | whatever
```

Known to work in Bash and zsh.

## Used by

* [AndersDJohnson/dotfiles](https://github.com/AndersDJohnson/dotfiles)
