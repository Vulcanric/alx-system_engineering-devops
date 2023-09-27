## File Transfer Protocol

### Screenshots of Progress in doing the CMD CHALLENGE
- `0-first_9_tasks.png`
- `1-next_9_tasks.png`

The above files were pushed to GitHub using the **Secure File Transfer Protocol (SFTP)**.
The `SFTP` is a file transfer program used in activities such as uploading and downloading files or folders between
the local machine(Your Computer) and the remote machine(The Sandbox). This is done within a shell-like
command interpreter, using commands like:
- `ls [-a1lnt] [path]`: this is used to list out files and directories within the remote server environment
- `lls [-a1lnt] [path]`: this is used to list out files and directories within the local machine

Its has same commands as the SHELL, but limited. Such as:
- `cd [path]`
- `rm`
- `cp` or `copy`
- `mv`
- `chown [-h]`
- `chmod [-h]`
- `mkdir path`
- `pwd`
- `ln` And some others, which can be used for files and directory manipulation
All the above commands are used in files manipulation within the Remote server, but they do have their Local machine representation, this is done by adding a prefixing 'l' before a command. Examples are `lcp`, `lmkdir`, `lpwd` and others

The most important SFTP commands are the `get` and `put` command
- `get [-afpR] remote-path [local-path]`:
	Downloads the files or directory specified in the `remote-path` into the local machine, given the same name, unless 'name' is specified by the `local-path`.

- `put [-afpR] local-path [remote-path]`:
	It does similarly, except that it uploads the files or directories specified in `local-path` to the remote machine with the same name, unless specified by `remote-path`

### Steps Used In Pushing the Screenshots in png format to GitHub
- Firstly, screenshotted my screen during each progress and saved as name shown above using the PNG format
- Login to a Terminal and typed:
```Bash
$ sftp <USER_NAME>@<HOST_NAME>  # This is the Sandbox
password:
<sftp> 
```
- After obtaining access to its shell-like command interpreter, find what's inside both the Local and Remote machine using the `ls` command
```Bash
<sftp> ls  # What is inside the remote
 ...
<sftp> lls  # What is inside my computer
 ...
<sftp> 
```

- When the decision is made on what file or path to upload and to where, I did
```Bash
<sftp> put 0-first_9_tasks.png alx-system_engineering-devops/command_line_for_the_win
```
- After all the intended files has been uploaded, quit the SFTP using the `bye` or the `exit` command
```Bash
<sftp> bye
$ 
```

- Log into the Sandbox using the SSH command, same as login in using SFTP
```Bash
$ ssh <USER_NAME>@<HOST_NAME>
root$
```
- Navigate to where the PNG files are located and push to GitHub using `git`
```Bash
root$ git add 0-first_9_tasks.png
root$ git commit -m "progress 1"
...
root$ git push
```
And **Done!**
