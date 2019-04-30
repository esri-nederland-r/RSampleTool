#Empty Example script R - ArcGIS Toolbox
tool_exec <- function(in_params, out_params)
{
  #Logging message
  cat(paste0("\n", "Start Script", "\n"))
  
  #Add and install packages
  if (!requireNamespace("raster", quietly = TRUE))
    install.packages("raster")
  require(raster)
  
  #Read input and output parameters
  cat(paste0("\n", "Loading datasets...", "\n"))
  dataset1 = in_params[[1]]
  dataset2 = in_params[[2]]
  
  out_raster = out_params[[1]]
  out_table = out_params[[2]]
  out_shp = out_params[[3]]
  
  # open the input shapefile dataset  
  d <- arc.open(dataset1)
  data1 <- arc.data2sp(arc.select(d))
  
  cat(paste0("\n", "Doing something with data", "\n"))
  
  # Paste data algoritm 
  
  
  cat(paste0("\n", "Writing result datasets", "\n"))

  if (!is.null(out_raster) && out_raster != "NA")
  writeRaster(p, out_raster)
             
  if (!is.null(out_table) && out_table != "NA")
  arc.write(out_table, data)
             
  if (!is.null(out_shp) && out_shp != "NA")
  arc.write(out_shp, data, coords = coordinates(data))
             
  cat(paste0("\n", "Script Finished.", "\n"))
  
  return(out_params)
}