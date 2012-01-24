=======
Hostupd
=======

Project page
------------

For latest info, files, bug reports, pull request: https://github.com/orenhe/hostupd

What is hostupd?
----------------

hostupd is a simple DNS update command-line tool.
Its main goal is to simplify the dns-updating task, (e.g. a simpler alternative to nsupdate), yet remain flexible. 

Hostupd is written in perl and is based on the Net::DNS module, which implements the client side of rfc2136 (DNS UPDATE). It'll work only if the DNS server supports DNS updates.

Features
--------

Hostupd actually does what bind's nsupdate does, but contains additional
features which hopefully will make your life easier:

- Fast deletion of all the records of some type with a simple command (hostupd del domainname).

- Makes sure that your change was indeed commited, and lets you know if it wasn't.

- Friendly commands (hostupd add domainname 192.168.0.1).

- Simple updates (hostupd add domainname 192.168.0.2 -u).

- Automatically updates the PTR records when adding an A record, unless disabled.

and some more..

Requirements
------------

* Perl Net::DNS module

  * apt: apt-get install libnet-dns-perl

  * yum: yum install Perl-Net_DNS

  * Or manually from cpan...

Installation
------------

See the 'INSTALL' file.

License
-------

hostupd is released under the GPL, see the 'COPYING' file.

