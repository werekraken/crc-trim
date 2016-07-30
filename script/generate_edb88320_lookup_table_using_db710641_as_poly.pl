#!/usr/bin/env perl

for (0 .. 255) {
  my $sav = $_;
  for my $toss (0 .. 7) {
    if ($_ & 1) {
      $_ = (($_ ^ 0xdb710641) >> 1) | 0x80000000;
    } else {
      $_ >>= 1;
    }
  }
  printf "%02x %08x\n", $sav, $_;
}

=head1 AUTHOR

matt cover, C<< <werekraken@gmail.com> >>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2014-2016, matt cover <werekraken@gmail.com>. All rights reserved.

This program is free software: you can redistribute it and/or modify
it under the terms of the Artistic License 2.0.

=cut
