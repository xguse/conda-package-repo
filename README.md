### Welcome to Gus Dunn's Conda-package-repo
This site and associated github repo ([Conda-package-repo](https://github.com/xguse/conda-package-repo)) are in the public domain. Note that this statement does _not_ reflect __in any way, shape or form__ the licenses of the packages therein.  Each package has its own associated license and you are bound by the terms of each you download and/or use.

***

### Using this conda repo channel

#### Adding the channel to your conda config

1. run `conda config --add channels http://xguse.github.io/conda-package-repo/pkgs/channel/` to prepend the repo to your channel list.
2. if you get an error complaining that the yaml file can not be parsed, you have two options:  
    a. open the file in your favorite text editor and add the channel URL to the YAML list named 'channels'

    ```YAML
    channels:
      - http://xguse.github.io/conda-package-repo/pkgs/channel/
      - defaults
    ```  

    b. run `conda config -f --add channels http://xguse.github.io/conda-package-repo/pkgs/channel/` which will remove the incorrect formatting and any comments present, then add the channel.


#### Searching for packages on this channel specifically

To search for the `bowtie2` package specifically within this and __only this__ channel:

```bash
conda search -c http://xguse.github.io/conda-package-repo/pkgs/channel/ --override-channels bowtie2
```

### Repo packages

Most packages will exist only for 64 bit linux because that is what I generally use.
But if you know me and I like you, feel free to request a specific build architecture.
If I can accommodate you, I will.

Here are the files hosted for various architectures:

- [linux-32](pkgs/channel/linux-32)
- [linux-64](pkgs/channel/linux-64)
- [osx-64](pkgs/channel/osx-64)
- [win-32](pkgs/channel/win-32)
- [win-64](pkgs/channel/win-64)
