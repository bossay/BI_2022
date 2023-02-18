# Project #5 Let's make our professor perfect!

## 1. Prepare the workspace

### 1.1. Create a directory for files and results

```ruby
mkdir WorkshpoBI/Project5/
cd WorkshpoBI/Project5/
```

### 1.2. Download raw data

Downloading our professor's data from [GoogleDrive](https://drive.google.com/file/d/1QJkwJe5Xl_jSVpqdTSNXP7sqlYfI666j/view).

## 2. File conversion 

### 2.1. Download PLINK

PLINK - a program widely used in population genetics. Download the version for your OS from [from the official PLINK site](https://www.cog-genomics.org/plink/).

### 2.2. Conversion by PLINK

```ruby
cd plink
./plink.exe --23file ../SNP_raw_v4_Full_20170514175358.txt --recode vcf --out snps_clean --output-chr MT --snps-only just-acgt
```

## 3. Origins, haplogroups

### 3.1. Maternal (mtDNA) haplogroup

Use [James Lick's mtHap utility](https://dna.jameslick.com/mthap/) - tool for checking and assigning mtDNA haplogroups on an individual basis.

>Maternal (mtDNA) haplogroup - H2a2a1

### 3.1. Paternal (Y chromosome) haplogroup

Use [YSEQ Clade Finder](https://cladefinder.yseq.net/). Provides a haplogroup assignment based on the YFull tree. 

>Paternal (Y chromosome) haplogroup - R-M417

## 4. Annotation - sex and eye colour

- [rs12913832](https://www.snpedia.com/index.php/Rs12913832) - AG (brown eye color)
- [rs12203592](https://www.snpedia.com/index.php/Rs12203592) - CT (primarily in Europeans; likely presence of freckles, brown hair and high sensitivity of skin to sun exposure)
- [rs16891982](https://www.snpedia.com/index.php/Rs16891982) - CG (if European, 7x more likely to have black hair)

>European man with brown eyes and black hair.

## 5. Annotation of all SNPs, selection of clinically relevant ones.

### 5.1. Annotation by VEP

 Use [Variant Effect Predictor (VEP)](http://grch37.ensembl.org/Homo_sapiens/Tools/VEP) tool with default settings was used to annotate all SNPs and identify clinically significant variants 

| **Category**                   | **Count**                   |
|--------------------------------|------------------------------|
| Variants processed             | 164638                       |
| Variants filtered out          | 0                            |
| Novel / existing variants      | 76489 (46.5) / 88149 (53.5)  |
| Overlapped genes               | 27951                        |
| Overlapped transcripts         | 106698                       |
| Overlapped regulatory features | 33643                        |

### 5.2. Select clinically significant invariants

We assessed the clinical significance of the variants based on:
- their frequency in the [Genome Aggregation Database (gnomAD v2.1.1)](https://gnomad.broadinstitute.org/)
- gene-disease associations in the [Online Mendelian Inheritance in Man database (OMIM)](https://www.omim.org/)
- descriptions in the [ClinVar](https://www.ncbi.nlm.nih.gov/clinvar/).

We identified missense variants in the CFH and CYP21A2 genes and a variant that affects splicing in the IRF5 gene.


| **Coordinates (GRCh37)**       | **1-196716319-C-T**                                               | **6-32008312-C-T**                                                       | **7-128578301-G-T**                                        |
|--------------------------------|-------------------------------------------------------------------|--------------------------------------------------------------------------|-------------------------------------------------------------|
| Nucleotide                     | c.3572C>T                                                         | c.1069C>T                                                                | c.-12+198=                                                  |
| Protein                        | p.Ser1191Leu                                                      | p.Arg357Trp                                                              | -                                                           |
| rsID                           | rs460897                                                          | rs7769409                                                                | rs2004640                                                   |
| Molecular consequence          | Missense variant                                                  | Missense variant                                                         | Splice donor variant                                        |
| Genotype                       | Het (0/1)                                                         | Het (0/1)                                                                | Het (0/1)                                                   |
| Gene                           | CFH                                                               | CYP21A2                                                                  | IRF5                                                        |
| Associated disease (OMIM)      | Susceptibility to hemolytic uremic syndrome, atypical, 1 (235400) | Congenital adrenal hyperplasia due to 21-hydroxylase deficiency (201910) | Susceptibility to systemic lupus erythematosus, 10 (612251) |
| Inheritance                    | AR                                                                | AR                                                                       | -                                                           |
| Allele frequency, %            | 0.000                                                             | 0.002                                                                    | 47.070                                                      |
| Classification by ClinVar (ID) | Pathogenic (16545)                                               | Pathogenic (12152)                                                       | Pathogenic, risk factor (3396)                             |

## 6. SNPs to correct and add bonus traits

We also suggest editing 6 SNPs to improve the phenotype.

| **rsID**      | **Gene** | **Professor's genotype** | **How to fix/improve** |
|----------------|-----------|---------------------------|-------------------------|
| **rs460897**  | CFH       | CT                        | CC                      |
| **rs7769409** | CYP21A2   | CT                        | CC                      |
| **rs2004640** | IRF5      | GT                        | GG                      |
| **rs4680**    | COMT      | AG                        | AA                      |
| **rs6265**    | BDNF      | AG                        | GG                      |
| **rs2802292** | FOXO3     | GT                        | GG                      |

## Ready! You`re incredible!