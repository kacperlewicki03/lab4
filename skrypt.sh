#!/bin/bash
case "$1" in
    --date|-d)
        date
        ;;
    --logs|-l)
        num=${2:-100}
        for i in $(seq 1 $num); do
            filename="log$i.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Utworzony przez: skrypt.sh" >> $filename
            echo "Data: $(date)" >> $filename
        done
        ;;
    --help|-h)
        echo "Dostępne opcje:"
        echo "--date, -d        - Wyświetla dzisiejszą datę"
        echo "--logs [num], -l [num]  - Tworzy pliki log"
        echo "--help, -h        - Wyświetla pomoc"
        ;;
esac
