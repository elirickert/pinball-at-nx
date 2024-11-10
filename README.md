# Pinball@NX
Code and Design Documentation for Pinball machines built by fun people working @Nexplore.

## Documenation
Please refer to the [github-page](https://elirickert.github.io/pinball-at-nx/) for more information. Contribution via PR's in docs-directory. This Repository is set up to facilitate simple documentation using [Obsidian](https://obsidian.md/).

## Contribution
Code is stored under `_Personal/Projekte/pinball-at-nx/source`. 

### MPF-Conda
This project requires a specific Python environment. Follow the instructions below to set up the Anaconda environment with all necessary dependencies. 
#### Prerequisites 
The following software needs to be installed on your system:
##### Anaconda or Miniconda
- [download Anaconda or Miniconda](https://docs.conda.io/en/latest/miniconda.html)
##### ~~GStreamer~~
Later when using mpf mc as well..
- ~~Runtime *AND* Development package  ([download here](https://gstreamer.freedesktop.org/download/#windows))~~
- ~~add to path if does not happen automatically - should be something like~~ 
	- ~~`C:\gstreamer\1.0\msvc_x86_64\bin`~~ 
	- 
- ~~run `gst-launch-1.0 --version` in a new terminal window to check installation~~
#### Setup Instructions 
```shell
# Clone the Repository
https://github.com/elirickert/pinball-at-nx.git

# create and activate conda environment from yml
cd pinball-at-nx/source/mpf-conda
conda env create -f environment.yml
conda activate my_env_name

# install the pip dependencies
pip install -r requirements.txt
```

#### Run the application
```shell
# mpf itself
mpf

# mpf-monitor to place and adjust switches on playfield
mpf monitor
```


### MPF-docker
```shell
docker build -t mpf-image .
docker run -it --rm -p 8000:8000 -v ${PWD}\your_machine:/mpf mpf-image bash
```

