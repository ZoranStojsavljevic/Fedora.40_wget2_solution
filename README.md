## wget2 fix for Fedora 40

### wget2 versus wget CLI options
* [differing cli options: wget versus wget2](https://gitlab.com/gnuwget/wget2/-/wikis/home#differing-cli-options-wgetwget2)

### Fedora 40 wget2 Problem definition
* [Fedora 40 wget2 Problem definition](https://www.reddit.com/r/Fedora/comments/1cf5jpu/switching_from_wget_to_wget2_suddenly_in_fedora/?rdt=40957)

### Fedora 40 wget2 Solution

#### (MANDATORY) Remove wget2 package from the Fedora 40 distro

	$ which wget
	  /usr/bin/wget

	$ sudo dnf rm wget
	  Dependencies resolved.
	  =========================================================
	  Package   Architecture   Version	Repository   Size
	  =========================================================
	  Removing:
	  wget	    x86_64	   1.24.5-1.1	@System      723k

	  Transaction Summary
	  =========================================================
	  Remove  1 Package

	  Freed space: 723k
	  Is this ok [y/N]: y
	  Running transaction check
	  Transaction check succeeded.
	  Running transaction test
	  Transaction test succeeded.
	  Running transaction
	  Preparing	:					1/1
	  Erasing	: 	wget-1.24.5-1.1.x86_64		1/1
	  Running scriptlet: wget-1.24.5-1.1.x86_64		1/1
	  Installed products updated.

	  Removed:
	  wget-1.24.5-1.1.x86_64

	  Complete!

	$ which wget
	  /usr/bin/which: no wget in (/usr/local/lib:/usr/include:...

#### RPM resource wget page
http://www.rpmfind.net/linux/rpm2html/search.php?query=wget

From the RPM resource wget page download the following file:

	wget-1.24.5-1.1.x86_64.rpm

#### Install wget using wget-1.24.5-1.1.x86_64.rpm

	$ sudo rpm -i wget-1.24.5-1.1.x86_64.rpm

	$ which wget
	  /usr/bin/wget

#### Check the installed wget-1.24.5 version to be sure

	$ wget --version
	  GNU Wget 1.24.5 built on linux-gnu.
	  ...[snap]...
	  Copyright (C) 2015 Free Software Foundation, Inc.
	  License GPLv3+: GNU GPL version 3 or later
	  <http://www.gnu.org/licenses/gpl.html>.
	  Originally written by Hrvoje Niksic <hniksic@xemacs.org>.
	  Please send bug reports and questions to <bug-wget@gnu.org>.

