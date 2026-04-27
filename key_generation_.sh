#client (source):
#192.168.0.131
#server (destination):
#192.168.0.228
#generate the key!
[root@myfirstlinuxvm ~]# ssh-keygen
Generating public/private rsa key pair.
#leave it with the option suggested by default
Enter file in which to save the key (/root/.ssh/id_rsa):
#can be empty for lower environments but better to have some idea for production environments
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
#where the key is going to be saved at source machine

Your identification has been saved in /root/.ssh/id_rsa
Your public key has been saved in /root/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:tpCD0V/eBD7esCEGcjUXs3TqBAniG7u1loVnERpZo0k root@myfirstlinuxvm
The key's randomart image is:
+---[RSA 3072]----+
|    o E=B.*..    |
|   . *.*.O *     |
|    + = + X .    |
|     * = O O     |
|    + * S = o    |
|     o X .       |
|    . + .        |
|     .           |
|                 |
+----[SHA256]-----+

#copy your key file to destination
[root@myfirstlinuxvm ~]# ssh-copy-id root@192.168.0.228
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/root/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
#here you have to provide root credentials of DESTINATION machine root:
root@192.168.0.228's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'root@192.168.0.228'"
and check to make sure that only the key(s) you wanted were added.

#=============Now switching to destination host=============

[root@localhost ~]# pwd
/root
#you are interested in a hidden directory /root/.ssh
[root@localhost ~]# ls -alh
total 32K
dr-xr-x---.  4 root root 181 Apr 27 22:21 .
dr-xr-xr-x. 18 root root 235 Apr 25 15:07 ..
-rw-------.  1 root root 828 Apr 25 15:23 anaconda-ks.cfg
-rw-------.  1 root root  23 Apr 26 22:27 .bash_history
-rw-r--r--.  1 root root  18 May 27  2025 .bash_logout
-rw-r--r--.  1 root root 141 May 27  2025 .bash_profile
-rw-r--r--.  1 root root 429 May 27  2025 .bashrc
drwx------.  2 root root   6 Apr 25 15:26 .cache
-rw-r--r--.  1 root root 100 May 27  2025 .cshrc
drwx------.  2 root root  29 Apr 27 22:41 .ssh
-rw-r--r--.  1 root root 129 May 27  2025 .tcshrc
-rw-------.  1 root root  67 Apr 27 22:21 .xauthh2medl
#going to this hidden directory /root/.ssh
[root@localhost ~]# cd .ssh/
[root@localhost .ssh]# pwd
/root/.ssh
#checking files inside and see our key as a file which is not even hidden.
[root@localhost .ssh]# ls -l
total 4
-rw-------. 1 root root 573 Apr 27 22:41 authorized_keys
[root@localhost .ssh]# ls -altrh
total 4.0K
dr-xr-x---. 4 root root 181 Apr 27 22:21 ..
drwx------. 2 root root  29 Apr 27 22:41 .
-rw-------. 1 root root 573 Apr 27 22:41 authorized_keys
[root@localhost .ssh]# cat authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEc7TGOFTYEodKz2foKK8/gYt6jneldRJG79Hg+bOUl7r97tAdj0NBAe8q1lvEqjz0o3y7QoyvtslBGvHmlDt9KlqhcKyRJItlNiS/o6Aus014NNIcWt4IcVOkEzwmpUirWtOrUfwnDUqOUlejsDk3y3gBcxSh1fCbglZWuL89YWUaOrylcK5K5cFhx98fUVx/9O4m/ibp0tfrYDB+vPrmseYaEUR81h9C3ExwRVxS6R4pSQpEHQewLvgIJ5fIe7NrlxleEMP9r2BtxJ1bbUC1Nae9p1NyVgJi9zOubhy+kPGX1Gl9Ffrk5a5z/hkR1oR1Djv/QxnNEWynJKEEvhzJ3NdaCFLXi9FGmWd8YYZTRqNcFmMVRRSFl6D+RpuvlJq0lsybJCU/vC+nB+g0oTicZ25TT/L72HfEg8iG7x6NWO/Nxy5OaeNCVl0QadICLGjff1S6u2LhTdK/xgAeIjY5iPTO3fOXc9oV6mWpmboEyUal+FP28TyRTkLIYOK8ztU= root@myfirstlinuxvm
[root@localhost .ssh]#
