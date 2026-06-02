{
    if ($1 == "학번") {
        for (i = 1; i <= NF; i++) {
            printf "%s\t", $i
        }
        printf "총점\t평균\n"
        
        num_subjects = NF - 2
    }
    else {
        count++;
        sum = 0;
        
        printf "%s\t%s\t", $1, $2
        
        for (i = 3; i <= NF; i++) {
            sum += $i;
            subject_sum[i] += $i;
            printf "%d\t", $i;
        }
        
        avg = sum / num_subjects;
        
        printf "%d\t%.1f\n", sum, avg;
    }
}
END {
    if (count > 0) {
        printf "\t\t"
        
        for (i = 3; i <= num_subjects + 2; i++) {
            printf "%.1f\t", subject_sum[i] / count;
        }
        printf "\n"
    }
}
