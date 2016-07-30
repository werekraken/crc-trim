#!/usr/bin/env perl

for (0 .. 255) {
  my $sav = $_;
  $_ <<= 24;
  for my $toss (0 .. 7) {
    if ($_ & 0x80000000) {
      $_ = (($_ << 1) & 0xffffffff) ^ 0xdb710641;
    } else {
      $_ = ($_ << 1) & 0xffffffff;
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
