#!/usr/bin/perl
$count = 0;
$line_num = 0;
@subject_sum = ();

while ($line = <STDIN>) { 
    chomp($line); 
    @fields = split(/\s+/, $line);  
    $line_num++;

    if ($line_num == 1) {
        print "$line 총점 평균\n";
        $num_subjects = scalar(@fields) - 2; 
    } else {
        $sum = 0;
        printf "%-6s %-5s ", $fields[0], $fields[1];
        
        for ($i = 2; $i < scalar(@fields); $i++) { 
            $sum += $fields[$i];
            $subject_sum[$i] += $fields[$i];
            printf "%4d ", $fields[$i];
        }
        $avg = $sum / $num_subjects;
        $count++;
        printf "%5d %5.1f\n", $sum, $avg;
    }
}

if ($count > 0) {
    printf "%-12s ", "";
    for ($i = 2; $i < $num_subjects + 2; $i++) {
        printf "%4.1f ", $subject_sum[$i] / $count;
    }
    print "\n";
}
