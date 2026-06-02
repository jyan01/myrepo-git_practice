#!/usr/bin/perl
%word_count = ();

while ($word = <STDIN>) {
    chomp($word);
    
    if ($word ne "") { 
        $word_count{$word}++;
    }
}

foreach $key (keys %word_count) { 
    print "$key: $word_count{$key}\n";
}
