# Plots a graph with confidence intervals that are shaded and have borders
# Takes as input a dataframe, with columns corresponding to x values, y values, upper limit and lower limit values (which have to correpond for each x values)

ShadedPlot <- function(df,  # Dataframe
                       x,   # Column name of x values
                       y,   # Column name of y values
                       U,   # Column name of upper limits
                       L,   # Column name of lower limits
                       shaded_color='grey75',
                       band_color='red',
                       same_graph=FALSE    # Option to plot on the same graph
                       ) {
  if(!isTRUE(same_graph)==TRUE){
    plot(df[,x], df[,y], type = "l")
  }
  polygon(c(df[,x],rev(df[,x])),c(df[,L],rev(df[,U])),col = shaded_color, border = FALSE)
  lines(df[,x], df[,U], col=band_color)
  lines(df[,x], df[,L], col=band_color)
  lines(df[,x], df[,y], type = "l")
}
