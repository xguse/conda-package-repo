### Welcome to Gus Dunn's Conda-package-repo
This site and associated github repo ([Conda-package-repo](https://github.com/xguse/conda-package-repo)) are in the public domain. Note that this statement does _not_ reflect __in any way, shape or form__ the licenses of the packages therein.  Each package has its own associated license and you are bound by the terms of each you download and/or use.

### Using this conda repo channel

#### Adding the channel to your conda config

1. run `conda config --add channels THIS_REPO_URL` to prepend the repo to your channel list.
2. if you get an error complaining that the yaml file can not be parsed, you have two options:  
    a. open the file in your favorite text editor and add the channel URL to the YAML list named 'channels'

    ```YAML
    channels:
      - THIS_REPO_URL
      - defaults
    ```  

    b. run `conda config -f --add channels THIS_REPO_URL` which will remove the incorrect formatting and any comments present, then add the channel.


#### Searching for packages on this channel specifically

To search for the `bowtie2` package specifically within this and __only this__ channel:

```bash
conda search -c THIS_REPO_URL --override-channels bowtie2
```
