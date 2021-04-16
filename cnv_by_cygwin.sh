#!/bin/sh
# BSD Lite Lisence, (C) 2021, DIGI-P, NERD.JP

OUTDIR='/cygdrive/c/ALLPCB'

mkdir -p $OUTDIR
echo mkdir the dir "$OUTDIR"

ls *.gbr *.drl | while read ITEMGBR 
do

echo $ITEMGBR | while read FNAME TYPHEN OTHERS 
do

#echo $ITEMGBR
#echo $FNAME
#echo $OTHERS

if test -d "$OUTDIR/$FNAME"
then
echo exist the dir "$OUTDIR/$FNAME"
else
echo mkdir the dir "$OUTDIR/$FNAME"
mkdir -p $OUTDIR/$FNAME
fi

OUTPUT="$OUTDIR/$FNAME"

if [ "$OTHERS" = 'Board Outline.gbr' ]
then
echo $ITEMGBR to $FNAME.GKO
cp "$ITEMGBR" "$OUTPUT/$FNAME.GKO"
fi

if [ "$OTHERS" = 'Bottom Silkscreen.gbr' ]
then
echo $FNAME.GBO
cp "$ITEMGBR" "$OUTPUT/$FNAME.GBO"
fi

#if [ "$OTHERS" = 'Bottom Copper (Paste).gbr' ]
#then
#echo N_A
#fi

if [ "$OTHERS" = 'Bottom Copper (Resist).gbr' ]
then
echo $FNAME.GBS
cp "$ITEMGBR" "$OUTPUT/$FNAME.GBS"
fi

if [ "$OTHERS" = 'Bottom Copper.gbr' ]
then
echo $FNAME.GBL
cp "$ITEMGBR" "$OUTPUT/$FNAME.GBL"
fi

#if [ "$OTHERS" = 'Drill Ident Drawing - [Through Hole].gbr' ]
#then
#echo N_A
#fi

#if [ "$OTHERS" = 'Top Copper (Paste).gbr' ]
#then
#echo N_A
#fi

if [ "$OTHERS" = 'Top Copper (Resist).gbr' ]
then
echo $FNAME.GTS
cp "$ITEMGBR" "$OUTPUT/$FNAME.GTS"
fi

if [ "$OTHERS" = 'Top Copper.gbr' ]
then
echo $FNAME.GTL
cp "$ITEMGBR" "$OUTPUT/$FNAME.GTL"
fi

if [ "$OTHERS" = 'Top Silkscreen.gbr' ]
then
echo $FNAME.GTO
cp "$ITEMGBR" "$OUTPUT/$FNAME.GTO"
fi

if [ "$OTHERS" = 'Drill Data - [Through Hole].drl' ]
then
echo $FNAME.TXT
cp "$ITEMGBR" "$OUTPUT/$FNAME.TXT"
fi


done

done

