

###C:\Rlanguedata\1Asci1\4\4-\4\1d_GSE174843

###C:\Rlanguedata\1Asci1\4\4-\4\1d_GSE174843

dir="C:\\Rlanguedata\\1Asci1\\4\\4-\\4\\1d_GSE174843"

setwd(dir)

data0_1<-read.csv('CELL_DEATH_1.CSV',header=T)

colnames(data0_1)[1] <- 'gene_id'

rownames(data0_1)<-data0_1$gene_id

EnhancedVolcano(data0_1,
                lab = rownames(data0_1),
                x = 'log2FoldChange',
                y = 'pvalue',
                xlab = bquote(~Log[2]~ 'fold change'),
                pCutoff = 0.05,
                FCcutoff = 2.0,##
                pointSize = 1.0,##
                # xlim=c(-4,4),
                labSize = 2.0,##gene id
                colAlpha = 0.5,##透明度
                legendPosition = 'right',
                legendLabSize = 8,##右侧基因标记
                legendIconSize = 4,##右侧基因标记
                # drawConnectors = TRUE,##基因直线
                widthConnectors = 0.05)