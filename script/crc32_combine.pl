#!/usr/bin/env perl

use strict;
use warnings;

use Compress::Raw::Zlib;

if (@ARGV != 3) {
  print $0, " <crcA> <crcB> <lenB>\n";
  exit 1;
}

my ($crcA, $crcB, $lenB) = (hex($ARGV[0]), hex($ARGV[1]), $ARGV[2]);

my $crc = Compress::Raw::Zlib::crc32_combine($crcA, $crcB, $lenB);

printf "%08x\n", $crc;

=head1 AUTHOR

matt cover, C<< <werekraken@gmail.com> >>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2014-2016, matt cover <werekraken@gmail.com>. All rights reserved.

This program is free software: you can redistribute it and/or modify
it under the terms of the Artistic License 2.0.

=cut
