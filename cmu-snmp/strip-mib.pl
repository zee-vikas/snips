#!/usr/bin/perl
# Program to strip the mib-file of all the DESCRIPTIONS
#
#	-vikas@navya_.com

my $doskip = 0;

while(<>)
{
  if (/^\s*DESCRIPTION\s*$/) {
    $doskip = 1;
    next;
  }
  if ($doskip && /\"\s*$/) {
    $doskip = 0;
    next;
  }
  next if ($doskip);
  s/
  print;
}