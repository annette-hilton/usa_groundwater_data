# usa_groundwater_data

**Purpose:** 
This project is the compiliation of US Geological Survey well water data for all 50 US states, two US territories (Puerto Rico, Virgin Islands), and the District of Columbia. The purpose of sharing this repo is to make data import, wrangling, and compilation of the USGS well water data easier for future users. The code was designed for my own specific research purposes. If my code can be useful to you, please utilize it as you see fit. 

***Please note:*** This is an ongoing project and not in its finalized version. Some of the code may contain bugs and areas of work-in-progress. Several of the Rmd documents are edited and added to regularly (several times a week). If you catch any bugs, please feel free to report them to me via github. 

**Contained in the Repo** 

**Rmarkdown documents:** 

1. usa_groundwater_supplementary_info: This document contains metadata and information regarding the project objectives, USGS data download, and the data wrangling process. 

2. usa_groundwater_data_import: This document contains code that tests the import of the USGS data files and various experimental attempts to wrangle the data.

3. usa_groundwater_data_wrangling: This document contains the finalized version of the code used to import and wrangle the USGS data files. The code is annotated throughout for objectives and purposes of the data wrangling. All 53 US states/territories are read into Rstudio and tidied via a for-loop. The result is a data frame for each state/territory of identical columns. All 53 state/territories are also merged into a final compilation data frame. This document additionally contains latitude/longitude data of the location of USGS wells for purposes to map in ArcGIS.

4. usa_groundwater_data_constrain: This document contains first attempts to constrain the compiled data by various parameters such as number of well observations, date ranges, and well depth. 

**Folders:** 

**IMPORTANT Note on Data Files:** There are raw and produced data files in the repo at the moment. Early in the project, I included these in the repo and my commits to github. Since github cannot support large files, I stopped committing changes to these files and future large datafiles, prefering instead to keep code only. **If you are using this repo** I highly suggest downloading the raw data from USGS directly for your analysis. In Rmarkdown document "usa_groundwater_supplementary_info" instructions exist on how to download the original and most-up-to-date data directly from USGS. **This is a warning** that there may be improvements, corrections, or errors contained in the current data files. They are in the repo as an example only of how the repo is organized and how the code is run. 

1. raw_data: Contains the raw datafiles downloaded from USGS for direct import into Rstudio. 

2. test: Contains test datafiles used in "usa_groundwater_data_import" Rmd for experimental use of coding methods. 

3. lat_long_data: Contains the latitude and longitude files produced from the USGS data import/wrangling for use in ArcGIS. 

4. merged_state_data_csv: Output of for-loop in "usa_groundwater_data_wrangling" Rmd saved as csv files. 

5. merged_state_data_tsv: Output of for-loop in "usa_groundwater_data_wrangling" Rmd saved as tsv files. 

