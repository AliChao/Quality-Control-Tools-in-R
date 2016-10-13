## Load R package SixSigma and the data we need

library(SixSigma)
data("pistonrings")

## Data and spec in  
## 我通常會把Data, 規格上限、規格下限拉出來另外寫幾行，當不想特別另外寫function()時，這樣要改數據會很方便

Data <- pistonrings$diameter
USL <- 74.1  
LSL <- 73.9
Target <- 74

ss.study.ca(xST=Data, xLT = NA, LSL = LSL, USL = USL, Target = Target , 
  alpha = 0.05, f.na.rm = TRUE, f.main = "Capability Analysis Study", 
  f.sub = "")

## xST : 短期數據
## xLT : 長期數據
## LSL : 規格下限
## USL : 規格上限
## f.na.rm : 忽略空白
## f.main : 主標題
## f.sub : 副標題



