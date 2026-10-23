# PandaCode Homebrew tap

Homebrew packages for [PandaCode](https://github.com/aicodeking/pandacode), a
desktop workspace for coding agents.

## Install

macOS 12 or later (Apple silicon or Intel):

```sh
brew install --cask aicodeking/pandacode/pandacode
```

Linux (x86_64 or aarch64), installs the AppImage as `pandacode`:

```sh
brew install aicodeking/pandacode/pandacode
```

PandaCode updates itself, so `brew upgrade` skips the cask unless you pass
`--greedy`. `brew uninstall --zap --cask pandacode` also removes PandaCode's
settings and caches from `~/Library`.

## How it stays current

`.github/workflows/update.yml` runs every 3 hours, on demand, and on a
`pandacode-release` repository dispatch. It reads the latest release tag of
`aicodeking/pandacode`, downloads the published `.sha256` files and commits the
new version and checksums with this repository's own `GITHUB_TOKEN`.
`.github/workflows/test.yml` runs `brew style` and `brew audit --strict` on
every push and pull request.

## Credits

Thanks to [Samuel Jędrzejewski (@238SAMIxD)](https://github.com/238SAMIxD),
who proposed and first built a PandaCode tap
([aicodeking/pandacode#85](https://github.com/aicodeking/pandacode/issues/85)).

## License

[MIT](LICENSE)
