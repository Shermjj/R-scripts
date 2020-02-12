ShadedPlot <- function(df,
                       x,
                       y,
                       U,
                       L,
                       shaded_color='grey75',
                       band_color='red',
                       same_graph=FALSE
                       ) {
  if(!isTRUE(same_graph)==TRUE){
    plot(df[,x], df[,y], ylim = c(-0.13,0), type = "l",lwd=2)
  }
  polygon(c(df[,x],rev(df[,x])),c(df[,L],rev(df[,U])),col = shaded_color, border = FALSE)
  lines(df[,x], df[,U], col=band_color,lty=2)
  lines(df[,x], df[,L], col=band_color,lty=2)
  lines(df[,x], df[,y], type = "l",lwd=2)
}
