README For Jobs Directory
=========================

2/23/19: Created and ran jobs to create alignments of fastq files to reference in form of bam files

2/25/19: Created job to build hi-c matrix, I am able to install HiCExplorer but am unable to sucessfully run hicBuildMatrix function, unsure why.

3/5/19: Editted and successfully created hicBuildMatrix, hicCorrectMatrixDiag, hicCorrectMatrix, hicPlotMatrix jobs 

3/25/19: Created findRestSite job to find dpnII restriction sites in genome. Added the resulting .bed file to hicBuildMatrix job in place of default bin size.
Editted hicCorrectMatrix to output .cool file.

3/26/19: Editted hicBuildMatrix back to running on bin size following restriction site resolution errors. Editted hicCorrectMatrix job to specialized on 
specific chromosomes. Created hicConvertFormat job to convert file from .cool to .h5 for plotting purposes. Created hicFindTADs job to identify TADs. Created 
make_tracks job to convert the ouput of hicFindTADs into a plottable intermediate file .ini. Created hicPlotTADs job to plot the .ini file.

3/27/19: Editted make_tracks job so that output is placed in jobs folder for easy editting. 

3/28/19: Editted the intermediate files produced by make_tracks job and created compound jobs that merge all the jobs together for various resolutions.

3/30/19: Editted and sucessfully ran hicBuildMatrix with restriction enzyme level resolution.



