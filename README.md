# GitConfig

A scripting tool to help with configuration files in git

## Purpose

Have you ever had a file in a git repo that you had to make changes to, but knew you would never actually commit those changes? It's annoying having those files clutter your worktree. Well git actually has a solution to that. `update-index --skip-worktree` will tell git to assume that the given file is unchanged no matter what changes you make to it. So problem solved! Not quite...

## The Problem

The solution above works if you're the only person working on the project and only with one branch, but it begins to have problems when you scale. Git seems to have inconsisten behaviors revolving around this when you start switching between branches while you have files ignored. Sometimes the files will become unignored after a branch swap and then you have to re-ignore files one at a time. This can get incredibly tedious when switching branches regularly or when other people actually do need to commit changes to these files.

## The Solution

This program adds a command called `conf` that uses a few subcommands to keep track of which files you would want to hide from git and let you easily hide or show them whenever you want. This way, if git unignores your files, you can reignore all of your files with two words on the terminal.

## How to use

You can start by adding files for conf to track.

```bash
conf add myfile.txt aconfigfile.config
```

Now conf knows about these files and we can hide them from git with 

```bash
conf hide
```

If we need to see these files again (so we can commit a new config variable/etc.) we can run

```bash
conf show
```

If we want to see all the files conf knows about, we can run

```bash
conf list
```

And if we no longer want to ignore `myfile.txt` we can do

```bash
conf remove myfile.txt
```

Any time you forget the commands or how they work we can run

```bash
conf
```

or

```bash
conf help <command>
```

to get the list of commands or specific command information respectively.

## Ways to improve/things for the future

### bugs?

- Doesn't always play nicely when filepaths have spaces
- Can only be used from the root git directory (relative pathing all over is hard)

### new features

- Sort the file store alphabetically
- add a command to unhide and stash config files
