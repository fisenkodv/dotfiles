# Update submodules to latest remote versions
[group('git')]
submodule-update:
    git submodule update --init --recursive --remote --merge

# Discard local changes in submodules and reset to committed versions
[group('git')]
submodule-discard:
    git submodule update --init --recursive
