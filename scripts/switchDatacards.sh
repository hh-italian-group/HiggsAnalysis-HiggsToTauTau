#!/bin/bash

if [ $# -ne 2 ] ; then
    echo "Usage: card_dir card_suffix"
    exit
fi

SHAPE_PATH=auxiliaries/shapes/Italians

CARD_DIR=$1
CARD_SUFFIX=$2

cd $SHAPE_PATH

rm htt_et.inputs-Hhh-8TeV.root
rm htt_mt.inputs-Hhh-8TeV.root
rm htt_tt.inputs-Hhh-8TeV.root

ln -s $CARD_DIR/htt_et.inputs-Hhh-8TeV_$CARD_SUFFIX.root htt_et.inputs-Hhh-8TeV.root
ln -s $CARD_DIR/htt_mt.inputs-Hhh-8TeV_$CARD_SUFFIX.root htt_mt.inputs-Hhh-8TeV.root
ln -s $CARD_DIR/htt_tt.inputs-Hhh-8TeV_$CARD_SUFFIX.root htt_tt.inputs-Hhh-8TeV.root
