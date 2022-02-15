# usa_groundwater_data

## Goals and Objectives for the project 

This project compiles existing groundwater data in the United States of America from the United States Geological Survey (USGS) across 50 states and 4 territories (District of Columbia, Guam, Puerto Rico, Virgin Islands). This code automatically downloads historical manually recorded groundwater levels from hydrological sites served by the USGS (~905,706 sites). 

The code automatically downloads these data from USGS sites using URLs with little user input, tidies data, and merges all data into one large file for the United States.  

***Please note:*** This is an ongoing project and not in its finalized version. Some of the code may contain bugs and areas of work-in-progress. If you catch any bugs, please feel free to report them to me via github. 

### Data sources 

#### United States Geological Survey 

USGS data are obtained through two different download portals:

- USGS Groundwater Levels REST Web Service URL Generation Tool
  - https://waterservices.usgs.gov/rest/GW-Levels-Test-Tool.html
  
- National Water Information System: Web Interface
  - https://nwis.waterdata.usgs.gov/nwis/si
  
### Parameters included in download 

**USGS Groundwater Levels REST Web Service URL Generation Tool** 

- agency_cd     Agency code
- site_no       USGS site number
- site_tp_cd    Site type code
- lev_dt        Date level measured
- lev_tm        Time level measured
- lev_tz_cd     Time datum
- lev_va        Water-level value in feet below land surface
- sl_lev_va     Water-level value in feet above specific vertical datum
- sl_datum_cd   Referenced vertical datum
- lev_status_cd Status
- lev_agency_cd Measuring agency
- lev_dt_acy_cd Water-level date-time accuracy
- lev_acy_cd    Water-level accuracy
- lev_src_cd    Source of measurement
- lev_meth_cd   Method of measurement
- lev_age_cd    Water-level approval status 

**USGS National Water Information System: Web Interface** 

- agency_cd       -- Agency
- site_no         -- Site identification number
- station_nm      -- Site name
- dec_lat_va      -- Decimal latitude
- dec_long_va     -- Decimal longitude
- coord_acy_cd    -- Latitude-longitude accuracy
- dec_coord_datum_cd -- Decimal Latitude-longitude datum
- state_cd        -- State code
- alt_va          -- Altitude of Gage/land surface
- alt_acy_va      -- Altitude accuracy
- alt_datum_cd    -- Altitude datum
- well_depth_va   -- Well depth
- hole_depth_va   -- Hole depth

## How to run code 

Fork and clone this github repo. In R/RStudio, use the Rmd `usgs_data_import_wrangling_2021` 

There is some user input required to run this code. You will need to create three folders and change parameters to your liking (date). 

**Step 1.** Create three folders in your Rproject.    
  a. "urls" (this folder contains the two folders below)   
    - "usgs_rest" (This is where the code will put raw data files from USGS REST)   
    - "usgs_gwn" (This is where the code will put raw data files from USGS Groundwater for the Nation)    
    
*"urls" folder contains the two folders "usgs_rest" and "usgs_gwn", both empty folders (do not include quotations in naming)* 

**Step 2.** Change Date and other Parameters  
  a. Change the date to download data in your preferred date range     
    *Currently set to download data from 01-01-1800 to 12-01-2021*     
  b. Add or change any parameters by editing the URL       
    *USGS notes on editing the URL here: https://waterservices.usgs.gov/rest/GW-Levels-Service.html*
