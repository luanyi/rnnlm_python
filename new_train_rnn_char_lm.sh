#!/usr/bin/env bash
#===============================================================================
#
#          FILE: train_rnn_char_lm.sh
# 
#         USAGE: ./new_train_rnn_char_lm.sh 
# 
#   DESCRIPTION: Train a char RNN language model using batch mode
# 
#         NOTES: ---
#       CREATED: 06/20/15 19:19
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e

trainfile=data/tinyshakespeare/train.txt
validfile=data/tinyshakespeare/valid.txt
vocabfile=data/tinyshakespeare/voc.txt
outmodel=expts/debug.char-lm.20150620
nhidden=50
initalpha=1e-1
batchsize=10
bptt=10

python ./src/new_train_rnn_lm.py \
  --trainfile ${trainfile} \
  --validfile ${validfile} \
  --vocabfile ${vocabfile} \
  --init-alpha ${initalpha} \
  --batchsize ${batchsize} \
  --nhidden ${nhidden} \
  --outmodel ${outmodel} \
  --bptt ${bptt} \
  --validate

