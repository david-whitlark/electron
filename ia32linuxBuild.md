
# build requirements

* At least 25GB disk space and 8GB RAM.
* Python 2.7.x. Some distributions like CentOS 6.x still use Python 2.6.x so you may need to check your Python version with python -V.
* Node.js. There are various ways to install Node. You can download source code from Node.js and compile from source. Doing so permits installing Node on your own home directory as a standard user. Or try repositories such as NodeSource.
* Clang 3.4 or later.
* Development headers of GTK+ and libnotify.

On Ubuntu, install the following libraries:

```bash
$ sudo apt-get install build-essential clang libdbus-1-dev libgtk2.0-dev \
                       libnotify-dev libgnome-keyring-dev libgconf2-dev \
                       libasound2-dev libcap-dev libcups2-dev libxtst-dev \
                       libxss1 libnss3-dev gcc-multilib g++-multilib curl \
                       gperf bison
```

# build electron

run ia32linuxBuild.sh

# on a successful build

you should see a folder /dist/ with an electron binary inside

