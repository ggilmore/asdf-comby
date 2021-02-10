<div align="center">

# asdf-comby ![CI](https://github.com/ggilmore/asdf-comby/workflows/CI/badge.svg)

[comby](https://github.com/comby-tools/comby) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add comby
# or
asdf plugin add comby https://github.com/ggilmore/asdf-comby.git
```

comby:

```shell
# Show all installable versions
asdf list-all comby

# Install specific version
asdf install comby 1.0.0

# Set a version globally (on your ~/.tool-versions file)
asdf global comby 1.0.0

# Now comby commands are available
comby --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/ggilmore/asdf-comby/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Geoffrey Gilmore](https://github.com/ggilmore/)
