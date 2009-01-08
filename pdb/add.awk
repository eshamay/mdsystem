NF > 2 {printf("ATOM%7d  %-3s %3s X % 4d    % 8.3f% 8.3f% 8.3f\n", $2 + 2698, $3, $4, $6, $7, $8, $9)}
$1 == "TER" {print $0}
