#!/bin/bash

#Codigos de error para exit
E_NODIR=21
E_NONUM=22
E_NOOP=23
E_MASTRES=24 

#Otras variables 
MISCRIPT=`basename $0`

#Comprobar el numero de argumentos
case $# in
0) month=`date +'%B'` year=`date +'%Y'`;;
1) case $1 in
    01|1|Enero|enero|January|january|Ene|ene|Jan|jan) month=01 year=`date +'%Y'`;;
    02|2|Febrero|febrero|February|february|Feb|feb) month=02 year=`date +'%Y'`;;
    03|3|Marzo|marzo|March|march|Mar|mar) month=03 year=`date +'%Y'`;;
    04|4|Abril|abril|April|april|Apr|apr) month=04 year=`date +'%Y'`;;
    05|5|Mayo|mayo|May|may) month=05 year=`date +'%Y'`;;
    06|6|Junio|junio|June|june|Jun|jun) month=06 year=`date +'%Y'`;;
    07|7|Julio|julio|July|july|Jul|jul) month=07 year=`date +'%Y'`;;
    08|8|Agosto|agosto|August|august|Aug|aug) month=08 year=`date +'%Y'`;;
    09|9|Septiembre|septiembre|September|september|Sep|sep|Sept|sept) month=09 year=`date +'%Y'`;;
    10|October|october|Octubre|octubre|Oct|oct) month=10 year=`date +'%Y'`;;
    11|November|november|Noviembre|noviembre|Nov|nov) month=11 year=`date +'%Y'`;;
    12|December|december|Diciembre|diciembre|Dec|dec) month=12 year=`date +'%Y'`;;

    [0-9][0-9]) year=$1;;

    [0-9][0-9][0-9][0-9]) year=$1;;

    -help) echo "El comando mcal muestra un calendario del mes o año especificado. La sintaxis simplificada del comando es:
                cal [ [mes/año] año]
                [mes/año] Un solo comando es permitido ingresar mes con siguiente formato: 02,February, Feb
                          Un solo comando es permitido ingresar año con el siguiente formato: 18, 2018"; exit ${E_MASTRES};;

    *) echo "$1 Argumento invalido" >&2; exit ${E_NOOP};;

esac;;

2) month=$1 year=$2;;

#Más de tres argumentos
*) echo "Uso: incorrecto de ${MISCRIPT}, demasiados argumentos" >&2; exit ${E_MASTRES};;
esac
    cal $month $year
exit $?
