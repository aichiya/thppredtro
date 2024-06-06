UPDATE: This repository compiles with RGBDS v0.6.0

# Instructions

These instructions explain how to set up the tools required to build **shinpokered**, including [**rgbds**](https://github.com/gbdev/rgbds), which assembles the source files into a ROM.

## Windows

Download [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** for 64-bit Windows, **setup-x86.exe** for 32-bit.

Run setup and leave the default settings. At the "**Select Packages**" step, choose to install the following, all of which are in the "**Devel**" category:

- `make`
- `git`
- `gcc-core`
- `vim`
- `vim-common`

**Note:** The vim and vim-common packages are necessary for the randoshinred bash script (if you want to randomize a compiled rom).

Double click on the text that says "**Skip**" next to each package to select the most recent version to install.

Then follow the [**rgbds** install instructions](https://rgbds.gbdev.io/install/windows) for Windows with Cygwin to install **rgbds 0.6.0**.

**Note:** If you already have an older rgbds, you will need to update to 0.6.0. Ignore this if you have never installed rgbds before. If a version newer than 0.6.0 does not work, try downloading 0.6.0.

Now open the **Cygwin terminal** and enter the following commands.

Cygwin has its own file system that's within Windows, at **C:\cygwin64\home\\*\<user>***. If you don't want to store pokered there, you'll have to change the **current working directory** every time you open Cygwin.

For example, if you want to store pokered in **C:\Users\\*\<user>*\Desktop**:

```bash
cd /cygdrive/c/Users/<user>/Desktop
```

(The Windows `C:\` drive is called `/cygdrive/c/` in Cygwin. Replace *\<user>* in the example path with your username.)

Now you're ready to [build **shinpokered**](#build-shinpokered).



## macOS

Install [**Homebrew**](https://brew.sh/). Follow the official instructions.

Open **Terminal** and prepare to enter commands.

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install/macos) for macOS to install **rgbds 0.6.0**.

Now you're ready to [build **shinpokered**](#build-shinpokered).



## Linux

Open **Terminal** and enter the following commands, depending on which distro you're using.

### Debian or Ubuntu

To install the software required for **shinpokered**:

```bash
sudo apt-get install make gcc git
```

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install/source) to build **rgbds 0.6.0** from source.

### OpenSUSE

To install the software required for **shinpokered**:

```bash
sudo zypper install make gcc git
```

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install/source) to build **rgbds 0.6.0** from source.

### Arch Linux

To install the software required for **shinpokered**:

```bash
sudo pacman -S make gcc git
```

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install/arch) for Arch Linux to install **rgbds 0.6.0**.

If you want to compile and install **rgbds** yourself instead, then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install/source) to build **rgbds 0.6.0** from source.

### Termux

To install the software required for **shinpokered**:

```bash
sudo apt install make clang git sed
```

To install **rgbds**:

```bash
sudo apt install rgbds
```

If you want to compile and install **rgbds** yourself instead, then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install/source) to build **rgbds 0.6.0** from source.



## Build shinpokered

To download the **shinpokered master** branch source files:

```bash
git clone https://github.com/jojobear13/shinpokered/ --branch master
cd shinpokered
```
To download the **shinpokered lite** branch source files:

```bash
git clone https://github.com/jojobear13/shinpokered/ --branch lite
cd shinpokered
```

To build **pokered.gbc** and **pokeblue.gbc** and **pokegreen.gbc**:

```bash
make
```

### Build with a local rgbds version

If you have different projects that require different versions of `rgbds`, it might not be convenient to install rgbds 0.6.0 globally. Instead, you can put its files in a directory within shinpokered, such as `shinpokered/rgbds-0.6.0/`. Then specify it when you run `make`:

```bash
make RGBDS=rgbds-0.6.0/
```