
# SuiteDocs

A repo to try out SuiteCRM Documentation with Hugo and Netlify.
=======
# Hugo Learn Theme

This repository contains a theme for [Hugo](https://gohugo.io/), based on great [Grav Learn Theme](http://learn.getgrav.org/).

Visit the [theme documentation](https://learn.netlify.com/en/) to see what is going on. It is actually built with this theme.

## Main features

- Automatic Search
- Multilingual mode
- Unlimited menu levels
- Automatic next/prev buttons to navigate through menu entries
- Image resizing, shadow…
- Attachments files
- List child pages
- Mermaid diagram (flowchart, sequence, gantt)
- Customizable look and feel and themes variants
- Buttons, Tip/Note/Info/Warning boxes, Expand

## Installation

Navigate to your themes folder in your Hugo site and use the following commands:

```
$ cd themes
$ git clone https://github.com/matcornic/hugo-theme-learn.git
```

Check that your Hugo version is minimum `0.25` with `hugo version`.

![Overview](https://github.com/matcornic/hugo-theme-learn/raw/master/images/tn.png)

## Usage

- [Visit the documentation](https://learn.netlify.com/en/)

## Download old versions (prior to 2.0.0)

If you need old version for compatibility purpose, either download [theme source code from releases](https://github.com/matcornic/hugo-theme-learn/releases) or use the right git tag. For example, with `1.1.0`

- Direct download way: https://github.com/matcornic/hugo-theme-learn/archive/1.1.0.zip
- Git way:

```shell
cd themes/hugo-theme-learn
git checkout tags/1.1.0
```

For both solutions, the documentation is available at https://github.com/matcornic/hugo-theme-learn/releases/download/1.1.0/hugo-learn-doc-1.1.0.zip

## Credits

Many thanks to [@vjeantet](https://github.com/vjeantet/) for the fork [docdock](https://github.com/vjeantet/hugo-theme-docdock). The v2 of this theme is mainly based on his work !


![](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fmatcornic%2Fhugo-theme-learn.svg?type=large)

## Releasing

Somewhat work-in-progress steps to release with gren

- Check all MRs assigned to the milestone are closed or pushed back to another release
- Close the milestone
- Check merged MRs on the milestone have a tag (Bug, Enhancement, etc.)
- Tag and push the repo

```
git tag <tag>
git push origin <tag>
```
- Generate CHANGELOG.md with gren

```
gren changelog  --override --generate --tags=all
```
- Fix the date for the current release in CHANGELOG.md
- Add the changelog to git and update the tag

```
git add CHANGELOG.md
git commit -m "Ship tag <tag>"
git push origin master
git tag -f <tag>
git push --force origin <tag>
```
- Generate release with gren
```
gren release -t <tag>
```
