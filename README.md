[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![DOI](https://zenodo.org/badge/85735930.svg)](https://zenodo.org/badge/latestdoi/85735930) [![GitHub release](https://github-basic-badges.herokuapp.com/release/DominikVogel/matching-ids.svg)](https://github.com/DominikVogel/matching-ids/releases)

# matching-ids

R code for generating unique identifiers for use in survey research. The code can be found in the file ``generating-ids.R``. 

The code is associated with the following publication:

Vogel, D. (2018). Matching survey responses with anonymity in environments with privacy concerns: A practical guide. *International Journal of Public Sector Management*, 31(7): 742–754. https://doi.org/10.1108/IJPSM-12-2017-0330. *Open Access Post-Print*: https://doi.org/10.31235/osf.io/nwjd7

# How to use

1. If not already done: install the packages ``random`` and ``writexl`` by typing ``install.packages("random", dep = TRUE)`` and ``install.packages("writexl", dep = TRUE)``
2. Download the file ``generating-ids.R`` or copy the content of the file
3. Modify the number of identifiers you need in line 18 (``amount <- 200``). Notice, that you cannot generate more than 10,000 IDs.
4. Modify the length of the identifiers in line 19 (``length <- 4``).
5. Run the code. It generates approx. the amount of required identifiers, deletes identifiers with characters with a high likelihood of confusion, and asks for a location to store the file with the identifiers.


# Packages

The script uses ``random`` (Eddelbuettel, 2017) to generate the identifiers and ``writexl`` (Ooms, 2017) to save the results in an Excel file.

# References

Eddelbuettel, D. (2017). *random: True Random Numbers using RANDOM.ORG*. Retrieved from https://CRAN.R-project.org/package=random

Ooms, J. (2017). writexl: Export Data Frames to ’xlsx’ Format. Retrieved from https://CRAN.R-project.org/package=writexl
