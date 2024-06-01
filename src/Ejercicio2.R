ToothGrowth[1:10,]

ToothGrowth$supp == "VC"

ToothGrowth[ToothGrowth$supp == "VC", ]

ToothGrowth[ToothGrowth$supp != "VC", ]

ToothGrowth[ToothGrowth$len>10, 2]

ToothGrowth[ToothGrowth$len>10 & ToothGrowth$dose == 0.5, 2]

which(ToothGrowth$len>10 & ToothGrowth$dose == 0.5)
