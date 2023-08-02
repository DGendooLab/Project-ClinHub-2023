# Project-ClinHub-2023
A data compendium for genetic profiles - by Hanqing Zhao

# -[August 2nd, 2023] TCGA stuff completed

Now it is capable of:

① Downloading data from all the branches under TCGA portal.

② Rendering them into MultiAssayExperiments and saving them to local as R data objects.

Cautions:

① Some data will be unavailable if you run this code on Windows 10/11, because Windows 10/11 has set a maximum limit to the length of filepaths. As a result, it complains when extracting some specific files.

② If you want to run it on Windows 10/11, set the destination path as SHORT as possible.

③ Make sure you have enough space (at least 8 GB recommended) for downloading and extracting process.





# -[July 18th, 2023] TCGA stuff uploaded

I have organized my code into a project like this. It seems more decent :)

Now it is capable of:

① Downloading TCGA-BRCA, TCGA-COAD, TCGA-PAAD data.

② Extracting required part of data (experiments, pdata, etc.)

Something in construction:

① The function to fill our experiments and pdata into a MultiAssayExperiment.
