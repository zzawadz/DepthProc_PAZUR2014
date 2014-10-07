# W knitrze jakos bezsensu ustawia sie filled.contour (legenda zajmuje 50% wykresu!)
# tutaj generuje te obrazki recznie.

pdfFnc = function(name)
{
  par(mar = c(2,2,2,2))
  pdf(sprintf("contours/%s.pdf",name), pointsize = 16)
}


pdfFnc("e1")
x = mvrnorm(200,c(0,0), cbind(c(1,0.8),c(0.8,1)))
depthContour(x, method = "Euclidean", points = TRUE)
dev.off()

pdfFnc("e2")
data(inf.mort,maesles.imm)
data1990=na.omit(cbind(inf.mort[,1],maesles.imm[,1]))
depthContour(data1990, method = "Euclidean", points = TRUE)
dev.off()

pdfFnc("m1")
x = mvrnorm(200,c(0,0), cbind(c(1,0.8),c(0.8,1)))
depthContour(x, method = "Mahalanobis", points = TRUE)
dev.off()

pdfFnc("m2")
data(inf.mort,maesles.imm)
data1990=na.omit(cbind(inf.mort[,1],maesles.imm[,1]))
depthContour(data1990, method = "Mahalanobis", points = TRUE)
dev.off()
