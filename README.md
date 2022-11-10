# CPSC332TermProject
This repo stores the term project for Database Class CPSC 332 for CSUF

# Instructions on Work Flow
- Ensure that `sshpass` is installed
    - `apt-get install sshpass` for Debian-based OSes
- Ensure that `upload.sh` has permissions to run
    - `chmod 755 upload.sh`
- Ensure that the `password` file has the password to the VM in the first line
- Run `upload.sh` to transfer everything in `homepage` folder into the virtual machine.
- Use Visual Studio Code with Live Server Plugin and MySQL on local PC to locally test changes