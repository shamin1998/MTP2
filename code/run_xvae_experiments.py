
import os


for integ in ['Clin+mRNA', 'CNA+mRNA', 'Clin+CNA']:
	for ds in [256, 512]:
		for lsize in [32, 64]:
			for distance in ['kl', 'mmd']:
				for beta in [15, 25, 50]: 
					for dtype in  ['ER']:
						for fold in [1, 2,]:
							os.system('python run_xvae.py -integration={} --ds={} --dtype={} --fold={} --ls={} --distance={} --beta={} --writedir={}'.format(integ,ds,dtype,fold,lsize,distance,beta,'result'))