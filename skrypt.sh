#!/bin/bash
case "$1" in
    --date)
        date
        ;;
    --logs)
        num=${2:-100}
        for i in $(seq 1 $num); do
            filename="log$i.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Utworzony przez: skrypt.sh" >> $filename
            echo "Data: $(date)" >> $filename
        done
        ;;
    --help)
        echo "Dostępne opcje:"
        echo "--date        - Wyświetla dzisiejszą datę"
        echo "--logs [num]  - Tworzy pliki log"
        echo "--help        - Wyświetla pomoc"
        ;;
esac
