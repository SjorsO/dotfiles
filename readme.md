# Bash
If you cloned Tilde in your `~` directory, you can load the Bash helpers by putting the following in your `~/.bash_profile`
```bash
_tilde_root="$(echo ~)/tilde/bash/"
    
source "$_tilde_root""tilde.sh"
```
Then create your tilde config file:
```bash
cp ~/tilde/bash/tilde-config.example.sh tilde-config.sh
```

# Git aliases
To use the git aliases, copy them from `git/.gitconfig` to your own global git config file.

The git aliases contain a handful of useful helpers, most notably:
- `git st` is an alias for `status --short --branch`
- `git ca` is an alias for adding and committing all files (example: `git ca "initial commit"`)
- `git co` is an alias for `git checkout`

To see all available aliases, run `git alias`

# Global git ignore
To use the global gitignore file, add the path to the `.gitignore_global` file in your `~/.gitconfig`
