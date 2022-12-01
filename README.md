# CPSC332TermProject
This repo stores the term project for Database Class CPSC 332 for CSUF

## Instructions on Work Flow
1) Ensure that `sshpass` is installed
    - `apt-get install sshpass` for Debian-based OSes
2) Ensure that `upload.sh` has permissions to run
    - `chmod 755 upload.sh`
3) Ensure that the `password` file is configured (see Step 7 below)
4) Run `upload.sh` to transfer everything in `homepage` folder into the virtual machine.
5) Use Visual Studio Code with Live Server Plugin and MySQL on local PC to locally test changes
6) In Bash run `php -S 127.0.0.1:5500` to be able to execute PHP files locally while using Live Server.

## Instructions to set up automation (already done for this repo)
1) create a file in called `password` (no file extensions)
2) commit and push
3) create a file in called `.gitignore`, and type `password` in the that file
4) commit and push
5) use the command `git rm --cached ./password` to tell Git to stop tracking the file
6) commit and push
7) After cloning on WSL, add the VM's password to the first line of the `password` file
    - On Ubuntu, use `nano ./password`
    - Type the password
    - `CTRL + O` and `CTRL + X` to save and exit
8) Alter `upload.sh` with the correct account number and `pwd` of the destination directory

## Extra

Link to the website: http://ecs.fullerton.edu/~cs332g20/