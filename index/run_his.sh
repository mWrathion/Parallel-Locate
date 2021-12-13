for lz77 in einstein
do
    for M in {2..10}
    do
        for T in 0, 4
        do
            echo "Ejecutando $lz77 con M = $M y Threads = $T"
            echo ""
            mkdir ./res/$lz77
            ./load_hsi ./his/64/$M/$lz77/$lz77 ./patterns/$lz77/$M/patterns.txt ./res/$lz77/ $M 5 $T $lz77
            echo ""
            echo "------------------------------------------------------------------------------------------------------------------"
        done
    done
done