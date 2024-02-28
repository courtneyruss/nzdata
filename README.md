
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nzdata

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
<!-- badges: end -->

nzdata is an API wrapper for data.govt.nz

## Installation

You can install the development version of nzdata from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("courtneyruss/nzdata")
```

## Caveat

get_nz_data() will only work with resources that are ‘machine readable’.
These are marked with this icon: ![Data API](images/data_api.png)

## Useage

This example requests data from dataset [“A-Z listing of all Whanganui
streets”](https://catalogue.data.govt.nz/dataset/whanganui-streets-a-z/resource/2f4e30a7-091f-4aed-b18f-4b21cc19e6b4)

To find the resource ID, navigate to the resource page on
catalogue.data.govt.nz. The resource ID is the string after the last
backslash:

<figure>
<img src="images/path.png" alt="URL Path" />
<figcaption aria-hidden="true">URL Path</figcaption>
</figure>

``` r
library(nzdata)
streets <- get_nz_data('2f4e30a7-091f-4aed-b18f-4b21cc19e6b4')
head(streets, 10)
#>    _id          Abbot St
#> 1    1          Acton Pl
#> 2    2   Addenbrooke Tce
#> 3    3 Ahu Ahu Valley Rd
#> 4    4          Aiken Rd
#> 5    5        Airport Rd
#> 6    6        Akapuka Rd
#> 7    7         Akatea St
#> 8    8        Akepiro Pl
#> 9    9          Alexa Pl
#> 10  10      Alexander St

schools <- nz_dataset_metadata('directory-of-educational-institutions')
schools
#>                  author author_email                      creator_user_id
#> 1 Ministry of Education              df58f452-5866-4edb-b658-49e55ab53831
#>    frequency_of_update                                   id isopen     issued
#> 1 Continuously updated c1923d33-e781-46c9-9ea1-d9b850082be4   TRUE 2011-05-11
#>   language license_id                                  license_title
#> 1           CC-BY-4.0 Creative Commons Attribution 4.0 International
#>                                    license_url              maintainer
#> 1 https://creativecommons.org/licenses/by/4.0/ Education Data Requests
#>                     maintainer_email maintainer_phone
#> 1 education.counts@education.govt.nz                 
#>             metadata_created          metadata_modified   modified
#> 1 2020-08-12T03:09:39.230277 2024-02-27T20:34:29.764812 2020-08-19
#>                                    name
#> 1 directory-of-educational-institutions
#>                                                                                                                                                                    notes
#> 1 The Ministry of Education maintains the following databases that are updated regularly that include contact details, institution information and regional information.
#>   num_resources num_tags
#> 1             9        6
#>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           organization
#> 1 6be2dce8-6b51-48d2-b561-0b75337f06af, ministry-of-education, Ministry of Education, organization, The following key areas summarise the overall focus of the Ministry's work:\r\n\r\n1) More children gaining strong learning foundations;\r\n\r\n2) More students participating in and achieving in education;\r\n\r\n3) Provision of services - directly and indirectly - to children and young people with special education needs;\r\n\r\n4) Better quality schools and teachers;\r\n\r\n5) More people continuing to develop their capabilities;\r\n\r\n6) Maori education;\r\n\r\n7) Families and communities more strongly engaged in education;\r\n\r\n8) Increasing Ministry capability\r\n\r\nThe Ministry aims to build on the results already achieved so that we can make a significant difference to further the achievement of improved outcomes for our students, families and communities and enhance the country's long-term economic prosperity and social wellbeing., 2017-09-25-222139.948094download-1.png, 2017-02-18T21:11:52.754448, TRUE, approved, active
#>                              owner_org private rights
#> 1 6be2dce8-6b51-48d2-b561-0b75337f06af   FALSE       
#>                                 source_identifier spatial  state temporal
#> 1 https://www.educationcounts.govt.nz/directories         active         
#>       theme                                 title    type
#> 1 Education Directory of educational institutions dataset
#>                                               url version
#> 1 https://www.educationcounts.govt.nz/directories    NULL
#>                                                                                                                                                                                            groups
#> 1 , Education, 9c197059-f4c8-4df7-b175-d8f8936859b6, https://catalogue.data.govt.nz/uploads/group/2018-10-03-010228.692387MAI249946TePapaNormal-School-Christchurchfull.jpg, education, Education
#>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              resources
#> 1 NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 2023-12-06T22:57:34.232332, 2020-08-12T03:09:39.240688, 2023-12-06T22:59:40.330080, 2020-08-12T03:09:39.240698, 2020-08-12T03:09:39.240695, 2020-08-12T03:09:39.240714, 2020-08-12T03:09:39.240678, 2020-08-12T03:09:39.240692, 2020-08-12T03:09:39.240720, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, A list of New Zealand Early Childhood Services (ECEs), including their contact details and institutional information., A list of New Zealand Early Childhood Services (ECEs), including their contact details and institutional information. As of December 2023, this resource is marked as deprecated and will be decommissioned in the near future. Please use the new resource that is now available., A list of New Zealand Schools, including their contact details and institutional information., A list of New Zealand Schools, including their contact details and institutional information. As of December 2023, this resource is marked as deprecated and will be decommissioned in the near future. Please use the new resource that is now available., A list of New Zealand Schools where all, or some, of their students are taught curriculum subjects in the Māori language for at least 51 percent of the time., A list of New Zealand Tertiary Providers, including their contact details and institutional information., A list of New Zealand Early Childhood Services (ECEs), including their contact details and institutional information., A list of New Zealand Schools where all, or some, of their students are taught curriculum subjects in the Māori language for at least 51 percent of the time., Every year some schools may be merged, closed and opened.  The 'most recent' workbook on this page consists of the latest information available. Only changes that occurred in that year are included in each workbook., CSV, CSV, CSV, CSV, CSV, CSV, XLSX, XLSX, ZIP, , , , , , , , , , a9d65b07-8483-4b05-bdfd-d2abe4f38827, f65dfeb4-94be-4879-957c-e081d9570216, 4b292323-9fcc-41f8-814b-3c7b19cf14b3, 20b7c271-fd5a-4c9e-869b-481a0e2453cd, c3502ea6-e7dd-4f8d-8201-1f92bbd46596, 4c718954-5098-4499-bf74-198885fc1aa8, 5171453e-3b37-4d26-98e7-4a5f295ff078, ad297e71-05ff-4974-a058-f369d41918fa, 1201eb38-8221-429b-b999-253f120f6332, 2024-02-27T20:34:29.749043, 2024-02-27T17:00:31.479162, 2024-02-27T18:45:31.107265, 2024-02-27T19:30:17.931263, NA, NA, NA, NA, NA, 2024-02-27T20:34:29.770721, 2024-02-27T17:00:31.511755, 2024-02-27T18:45:31.127816, 2024-02-27T19:30:17.951981, 2024-01-22T23:52:46.619188, 2023-11-23T00:40:08.263726, 2023-11-23T00:35:38.064722, 2024-01-22T23:53:17.637419, 2023-11-23T00:45:03.017381, text/csv, text/csv, text/csv, text/csv, text/csv, text/csv, NA, NA, application/zip, NA, NA, NA, NA, NA, NA, NA, NA, NA, (New) Early Childhood Services (ECEs) Directory [.csv], (Deprecated) Early Childhood Services (ECEs) Directory [.csv], (New) Schools Directory [.csv], (Deprecated) Schools Directory [.csv], Māori Education Schools Directory [.csv], Tertiary Providers Directory [.csv], Early Childhood Services (ECEs) Directory [.xlsx], Māori Education Schools Directory [.xlsx], School mergers, closures and new schools [.zip], c1923d33-e781-46c9-9ea1-d9b850082be4, c1923d33-e781-46c9-9ea1-d9b850082be4, c1923d33-e781-46c9-9ea1-d9b850082be4, c1923d33-e781-46c9-9ea1-d9b850082be4, c1923d33-e781-46c9-9ea1-d9b850082be4, c1923d33-e781-46c9-9ea1-d9b850082be4, c1923d33-e781-46c9-9ea1-d9b850082be4, c1923d33-e781-46c9-9ea1-d9b850082be4, c1923d33-e781-46c9-9ea1-d9b850082be4, 0, 1, 2, 3, 4, 5, 6, 7, 8, NA, NA, NA, NA, NA, NA, NA, NA, NA, 2438246, 2239901, 1807651, 1586883, NA, NA, NA, NA, NA, active, active, active, active, active, active, active, active, active, https://catalogue.data.govt.nz/dataset/c1923d33-e781-46c9-9ea1-d9b850082be4/resource/a9d65b07-8483-4b05-bdfd-d2abe4f38827/download/ecedirectory-28-02-2024-093428.csv, https://catalogue.data.govt.nz/dataset/c1923d33-e781-46c9-9ea1-d9b850082be4/resource/f65dfeb4-94be-4879-957c-e081d9570216/download/ecedirectory-28-02-2024-060030.csv, https://catalogue.data.govt.nz/dataset/c1923d33-e781-46c9-9ea1-d9b850082be4/resource/4b292323-9fcc-41f8-814b-3c7b19cf14b3/download/schooldirectory-28-02-2024-074530.csv, https://catalogue.data.govt.nz/dataset/c1923d33-e781-46c9-9ea1-d9b850082be4/resource/20b7c271-fd5a-4c9e-869b-481a0e2453cd/download/schooldirectory-28-02-2024-083016.csv, https://www.educationcounts.govt.nz/directories/maori-medium-schools/directory-maori-medium-current.csv, https://www.educationcounts.govt.nz/directories/list-of-tertiary-providers/directory-tertiary-current.csv, https://www.educationcounts.govt.nz/__data/assets/excel_doc/0020/62570/Directory-ECE-Current.xlsx, https://www.educationcounts.govt.nz/directories/maori-medium-schools/directory-maori-medium-current.xlsx, https://www.educationcounts.govt.nz/directories/school-mergers/school-mergers-closures-and-new-schools.zip, upload, upload, upload, upload, , , , , 
#>                                                                                                                                                                                                                                                                                                                                                                                                                           tags
#> 1 Education, address, directory, locations, roll, schools, 65399142-f945-4162-a7e6-2bfac78f86c1, 89bc72c9-1a09-4983-a251-8faaf4c7f816, 7afd50c8-4b89-44a3-8aba-3990b355d938, 71e5125f-3467-460f-aa51-c2242ce9f36b, d84dd6e7-214f-4899-b118-e713acca18e9, 6a92c528-5c1b-4d5d-ac74-4f8210f54834, Education, address, directory, locations, roll, schools, active, active, active, active, active, active, NA, NA, NA, NA, NA, NA
#>   relationships_as_subject relationships_as_object
#> 1                     NULL                    NULL
```
