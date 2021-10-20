# HDL
Singularity wrapper for https://github.com/zhenin/HDL

The original reference and example data are included in this repository.
The referece data was extracted from .tar.gz files:

* UKB_imputed_SVD_eigen99_extraction.tar.gz - MD5 sum b1ba0081dc0f7cbf626c0e711e88a2e9
* UKB_imputed_hapmap2_SVD_eigen99_extraction.tar.gz - MD5 sum dba426aae48662ff2cb00daa246c2ade
* UKB_array_SVD_eigen90_extraction.tar.gz - MD5 sum ff3fadd7ea08bd29759b6c652618cd1f

If you use this package, please cite the original work and all reference data used in your analysis.

The history of changes is available in the [CHANGELOG.md](CHANGELOG.md) file.

# Getting started

Start by following the Wiki of the original software package: https://github.com/zhenin/HDL/wiki

Here is one example and how to execute it from singularity containers:

* https://github.com/zhenin/HDL/wiki/Example-of-HDL-with-an-array-reference-panel 

```
singularity exec --home $PWD:/home singularity/hdl.sif Rscript /tools/HDL/HDL.run.R \
gwas1.df=examples/gwas1.array.example.rds \
gwas2.df=examples/gwas2.array.example.rds \
LD.path=reference/UKB_array_SVD_eigen90_extraction \
output.file=test.Rout
```

which gives the following output:

```
Function arguments:
gwas1.df=examples/gwas1.array.example.rds
gwas2.df=examples/gwas2.array.example.rds
LD.path=reference/UKB_array_SVD_eigen90_extraction
output.file=test.Rout

Loading GWAS1 ...
Loading GWAS2 ...

HDL: High-definition likelihood inference of genetic correlations and heritabilities (HDL)
Version 1.4.0 (2021-04-15) installed
Author: Zheng Ning, Xia Shen
Maintainer: Zheng Ning <zheng.ning@ki.se>

Tutorial: https://github.com/zhenin/HDL

Use citation("HDL") to know how to cite this work.

Analysis starts on Wed Oct 20 10:22:51 2021
0 SNPs were removed in GWAS 1 due to missing N or missing test statistic.
0 SNPs were removed in GWAS 2 due to missing N or missing test statistic.
307519 out of 307519 (100%) SNPs in reference panel are available in GWAS 1.
307519 out of 307519 (100%) SNPs in reference panel are available in GWAS 2.
Estimation is ongoing ... 100%

Integrating piecewise results

Point estimates:
Heritability of phenotype 1:  0.1609
Heritability of phenotype 2:  0.0131
Genetic Covariance:  -0.0101
Genetic Correlation:  -0.2206

Continuing computing standard error with jackknife
Progress... 100%

Heritability of phenotype 1:  0.1609 (0.0075) 
Heritability of phenotype 2:  0.0131 (0.0012) 
Genetic Covariance:  -0.0101 (0.0018) 
Genetic Correlation:  -0.2206 (0.0391) 
P:  1.70e-08 

Analysis finished at Wed Oct 20 10:28:16 2021 
The results were saved to test.Rout
```
