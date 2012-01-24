#!/usr/local/bin/perl5 -w

package hostupd_conf;

use Exporter;
use strict;

@Hostupd::ISA = qw(Exporter);
@Hostupd::Conf::Exporter = qw();
@Hostupd::Conf::Exporter_OK = qw();

#
# CONFIGURATIONS, FELL FREE TO CHANGE
#
use constant RESOLVCONF => "/etc/resolv.conf";
use constant SIGNED_UPDATE => 0; # Put 0 to disable; 1 to enable.
use constant UPDATE_KEYNAME => 'KEYNAME_STRING'; # The nsupdate key name.
use constant UPDATE_KEY => 'KEY_STRING'; # The nsupdate key.


#
# OTHER DEFINE STUFF
#
use constant VERSION => "0.93";
use constant OPERATION_ADD	=> 1;
use constant OPERATION_DEL	=> 2;

use constant VERBOSITY_NONE	=> 0;
use constant VERBOSITY_NORMAL	=> 1; # Default
use constant VERBOSITY_HIGH	=> 2;


#
# ERROR DEFINITIONS
#
use constant ERROR_WRONGOP		=> 1;
use constant ERROR_NOHOST		=> 2;
use constant ERROR_NORDATA		=> 3;
use constant ERROR_ALREADY_EXISTS_ADD	=> 4;
use constant ERROR_DNS_CRITICAL		=> 5;
use constant ERROR_DNS_CANT_UPDATE	=> 6;
use constant ERROR_NO_PTR_ZONE		=> 7;
use constant ERROR_CANT_RESOLVE		=> 8;
use constant ERROR_TOO_MUCH2UPDATE	=> 9;
use constant ERROR_CANT_GET_DOMAIN	=> 10;
use constant ERROR_CANT_OPEN		=> 11;
use constant ERROR_CANT_GET_DNS_SERVER	=> 12;
use constant ERROR_BAD_PARAM		=> 13;
use constant ERROR_BAD_IP		=> 14;
use constant ERROR_BAD_CNAME		=> 15;
use constant ERROR_BAD_MX		=> 16;
use constant ERROR_ALREADY_EXISTS_DEL	=> 17;
use constant ERROR_DIDNT_WORK		=> 18;
use constant ERROR_DUP			=> 19;
use constant ERROR_CANT_MODIFY_PTR	=> 20;


1;
