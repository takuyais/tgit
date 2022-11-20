# TGit
TGit is a wrapper command to convert commands and options from the git format to the TortoiseGitProc.exe format.

## Installation
1. Clone the repo.
    ```sh
    git clone https://github.com/takuyais/tgit
    ```
2. Make link to `tgit`.
    ```bat
    cd C:\msys64\home\%USERNAME%\.local\bin
    mklink tgit "%path_to_cloned_folder%\tgit"
    ```

If you need
* Change the 'Merge Tool' config of TortoiseGit Settings to 'TortoiseGitMerge' and run `tgit merge`.
* Configure git mergetool like `git config merge.tool=tortoisemerge` and run `git mergetool`.

## Usage
```sh
# Show status
tgit status
```

### Supported commands and options
* `blame` - Show the blame file using TortoiseGitBlame
    ```sh
    tgit blame [<rev>] <file>
    ```
* `clean` - Open the clean dialog
    ```sh
    tgit clean
    ```
* `diff`
    ```sh
    tgit diff [<options>] <commit>..<commit> [--] [<path>]
    tgit diff [<options>] <commit>...<commit> [--] [<path>]
    tgit diff <blob> <blob>
    ```
    * `--stat`
* `log` - Open the log dialog
    ```sh
    tgit log [<revision range>] [[--] <path>...]
    ```
* `show`
    ```sh
    tgit show [<commit>]
    ```
* `stash`
    ```sh
    tgit stash list
    tgit stash ( pop | apply )
    tgit stash [push]
    ```
* `status` - Open the check-for-modifications dialog
    ```sh
    tgit status
    ```
* `show-ref`
    ```sh
    tgit show-ref
    ```
Any other commands are passed to TortoiseGitProc.exe as it is. Available TortoiseGit commands are explained at [here](https://tortoisegit.org/docs/tortoisegit/tgit-automation.html#tgit-automation-basics).

### Configuration variables
<dl>
  <dt><code>tgit.tortoiseGitProcPath</code></dt>
  <dd>Override the path for the TortoiseGitProc.exe. This is useful in case TortoiseGitProc.exe is not in the PATH.</dd>

  <dt><code>tgit.alias.*</code></dt>
  <dd>Command aliases for the tgit command.</dd>
</dl>

### Other configurations
* `tgit merge`
    * Change the 'Merge Tool' config of TortoiseGit Settings to 'TortoiseGitMerge'.
* `git mergetool`
    * Configure git mergetool like `git config merge.tool=tortoisemerge`.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

