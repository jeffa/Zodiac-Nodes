use strict;
use warnings;
use Date::Range;
use Date::Simple qw 'date';
use Data::Dumper;

my $date1 = date('2001-08-27');
my $date2 = date('1977-10-05');
my $range = Date::Range->new($date1, $date2);

my %month = (
    Jan => 1,
    Feb => 2,
    Mar => 3,
    Apr => 4,
    May => 5,
    Jun => 6,
    Jul => 7,
    Aug => 8,
    Sep => 9,
    Oct => 10,
    Nov => 11,
    Dec => 12,
);

print "my \@zodiac = (\n";
while (<DATA>) {
    chomp;

    if (/^\w/) {
        print "    [\n";
    } elsif (/^ \w/) {
        my @d;
        my @date = split '-', $_;
        for (@date) {
            s/ (?!\d)//g;
            my ($mon,$day,$year) = /(\w+)\s+(\d+),\s+(\d+)/; 
            push @d, sprintf "%4d-%02d-%02d", $year, $month{$mon}, $day;
        }
        printf "        [ date( '%s' ), date( '%s' ) ],\n", @d;
    } else {
        print "    ],\n";
    }
}
print "    ],\n);\n";

__DATA__
ARIES
 Jan 27, 1949 - Jul 26, 1950 
 Aug 20, 1967 - Apr 19, 1969 
 Apr 7, 1986  - Dec 2, 1987 
 Dec 27, 2004 - Jun 22, 2006 

TAURUS
 Aug 3, 1947  - Jan 26, 1949 
 Feb 20, 1966 - Aug 19, 1967 
 Sep 12, 1984 - Apr 6, 1986 
 Apr 15, 2003 - Dec 26, 2004

GEMINI
 Dec 14, 1945 - Aug 2, 1947 
 Aug 26, 1964 - Feb 19, 1966 
 Mar 17, 1983 - Sep 11, 1984 
 Oct 14, 2001 - Apr 14, 2003

CANCER
 May 12, 1944 - Dec 3, 1945 
 Dec 24, 1962 - Aug 25, 1964 
 Sep 25, 1981 - Mar 16, 1983 
 Apr 10, 2000 - Oct 13, 2001

LEO
 Nov 22, 1942 - May 11, 1944 
 Jun 11, 1961 - Dec 23, 1962 
 Jan 6, 1980  - Sep 24, 1981 
 Apr 10, 2000 - Oct 13, 2001 
 May 10, 2017 - Nov 6, 2018

VIRGO
 May 25, 1941 - Nov 21, 1942 
 Dec 16, 1959 - Jun 10, 1961 
 Jul 6, 1978  - Jan 5, 1980 
 Jan 26, 1997 - Oct 20, 1998 
 Nov 12, 2015 - May 9, 2017

LIBRA
 Jun 17, 1958 - Dec 15, 1959 
 Jan 8, 1977  - Jul 5, 1978 
 Aug 1, 1995  - Jan 25, 1997 
 Feb 19, 2014 - Nov 11, 2015

SCORPIO
 Oct 5, 1956  - Jun 16, 1958 
 Jul 10, 1975 - Jan 7, 1977 
 Feb 2, 1994  - Jul 31, 1995 
 Aug 30, 2012 - Feb 18, 2014

SAGITTARIUS
 Apr 3, 1955  - Oct 4, 1956 
 Oct 28, 1973 - Jul 9, 1975 
 Aug 2, 1992  - Feb 1, 1994 
 Mar 4, 2011  - Aug 29, 2012

CAPRICORN
 Oct 10, 1953 - Apr 2, 1955 
 Apr 28, 1972 - Oct 27, 1973 
 Nov 19, 1990 - Aug 1, 1992 
 Aug 22, 2009 - Mar 3, 2011

AQUARIUS
 Mar 29, 1952 - Oct 9, 1953 
 Nov 3, 1970  - Apr 27, 1972 
 May 23, 1989 - Nov 18, 1990 
 Dec 19, 2007 - Aug 21, 2009

PISCES
 Jul 27, 1950 - Mar 28, 1952 
 Apr 20, 1969 - Nov 2, 1970 
 Dec 3, 1987  - May 22, 1989 
 Jun 23, 2006 - Dec 18, 2007
