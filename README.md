# YASE Project Template

Use the files in this repository as a starting point for your YASE projects. For more information about YASE, see the
[YASE Github Repo](https://github.com/klavins/yase).

# Getting Started

To build off of this template, do one of the following.

## Download the template code

If you are taking a class that uses YASE, you should make a github repository on your computer called something like EE399 to put all of your assignments into. Each assignment will be a subdirectory that starts out as a copy of the `yase-template` repo. So, assuming you have made the EE399 directory you chould open a terminal ad `cd` into it. 

Then, from a web browser go to https://github.com/klavins/yase-template and click on the green `Code` button and then on `Download ZIP`. This will put a file called `yase-template-main.zip` in your `Downloads` folder. 

Now on the command line from withing the `EE399` directory, do 
```bash
unzip ~/Downloads/yase-template-main.zip
mv yase-template-main hw1
cd hw1
make
./bin/my_project
```
From here you can start modifying the template files to your liking.

Note that the `Makefile` will compile and link an `*.cc` files in the directory. So you can add as many modules as you like by creating corresponding `*.cc` and `*.hh` files. 

You can also rename the executable, for example, to `sound_maker` by editing the `Makefile` and changing
```bash
TARGET      := my_project
```
to
```bash
TARGET      := sound_maker
```

## Create a Fork

1. Fork this repository. The easiest way to do this is to go to https://github.com/klavins/yase-template and click on the `Fork` button in upper right corner of the page. This will create a copy of the template, allowing you to use it as a starting point for a new project. You will have to give the project a name. Let's assume you call it `sound-maker`. 
2. Clone the code to your local computer. Click on the green `Code` button and copy the URL that looks like `https://github.com/yourgithubid/sound-maker'. Then, at a terminal execute the following command.
```bash
git clone https://github.com/yourgithubid/sound-maker
```
- `cd` into the new directory
- Edit the Makefile and change
```bash
TARGET      := my_project
```
to
```bash
TARGET      := sound_maker
```
- Make whatever other changes you would like. You might also replace the `README.md` file. to reflect the purpose of your project. 
- Run `make` to build the project. 
- Run `./bin/sound-maker` to run the project. 
- Commit and push the changes using
```bash
git add .
git commit -m "Description of your change"
git push origin main
```