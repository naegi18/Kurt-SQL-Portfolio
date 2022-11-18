SELECT * FROM montana.montana5;



Select Distinct(ï»¿Accession), YN, Filetype from montana5
where  FileType = "Image" 

#Accession numbers with no YES or NO input
Select Distinct(ï»¿Accession), YN, Filetype from montana5
where  FileType = "Image" and yn = ''

#Accession numbers with no WorkerName
Select Distinct(ï»¿Accession), WorkerName from montana5 
where workername = ''

#For "Y"
Select Distinct(ï»¿Accession), YN, Filetype, FileName from montana5 
where filetype = "image" and yn = "Y" and FileName like '%No capture%'
order by yn

#For "N"
Select Distinct(ï»¿Accession), YN, Filetype, FileName from montana5 
where filetype = "image" and yn = "N" and FileName NOT LIKE '%No%'
order by yn




