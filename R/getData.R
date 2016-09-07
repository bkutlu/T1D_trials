library(Rlabkey)

# Select rows into a data frame called 'mydata'

mydata <- labkey.selectRows(
  baseUrl="http://NNRCLabkey:8080/labkey",
  folderPath="/T1D/Human Biomarkers/TIDBIT Study -- INS-4074",
  schemaName="study",
  queryName="Complete_Unblinded",
  viewName="",
  colFilter=NULL,
  containerFilter=NULL
)

l
http://NNRCLabkey:8080/labkey/query/T1D/Human%20Biomarkers/TIDBIT%20Study%20--%20INS-4074/executeQuery.view?schemaName=study&query.queryName=Complete_Unblinded&query.columns