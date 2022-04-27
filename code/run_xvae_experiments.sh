#!/bin/bash
for integ in 'Clin+mRNA' 'CNA+mRNA' 'Clin+CNA'
do
    for ds in 128 256 
    do
        for lsize in 32 64
        do
            for distance in 'kl' 'mmd'
            do
                for beta in 10 15 25  
                do
                    for dtype in  'ER'
                    do
                        for fold in 1 2 3 
                        do
                            python run_xvae.py --integration=${integ} --ds=${ds} --dtype=${dtype} --fold=${fold} --ls=${lsize} --distance=${distance} --beta=${beta} --writedir='results'
                        done
                    done
                done
            done
        done
    done
done
