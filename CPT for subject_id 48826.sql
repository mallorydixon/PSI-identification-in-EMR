


SELECT 
admissions.subject_id,admissions.admittime,procedureevents_mv.starttime,patients.dob,admissions.deathtime,procedures_icd.icd9_code,d_icd_diagnoses.short_title,d_icd_diagnoses.long_title, cptevents.cpt_number, cptevents.cpt_cd, cptevents.costcenter, cptevents.sectionheader, cptevents.subsectionheader
FROM (((((admissions
INNER JOIN procedureevents_MV ON admissions.subject_id=procedureevents_mv.subject_id)
INNER JOIN procedures_icd ON admissions.subject_id=procedures_icd.subject_id)
INNER JOIN d_icd_diagnoses ON d_icd_diagnoses.icd9_code=procedures_icd.icd9_code)
INNER JOIN patients ON patients.subject_id=admissions.subject_id)
INNER JOIN cptevents ON cptevents.subject_id = admissions.subject_id)
WHERE
(admissions.subject_id = '48826')
AND
(cptevents.cpt_number = '99143' 
OR
cptevents.cpt_number = '99144'
OR 
cptevents.cpt_number = '99145'
OR
cptevents.cpt_number = '99148'
OR
cptevents.cpt_number = '99149'
OR
cptevents.cpt_number = '99150'
OR
cptevents.cpt_number = '00810' 
OR
cptevents.cpt_number = '00670'
OR 
cptevents.cpt_number BETWEEN 00100 AND 00222 
OR
cptevents.cpt_number BETWEEN 01320 AND 01444
OR
cptevents.cpt_number BETWEEN 00309 AND 00352
OR
cptevents.cpt_number = '00400'
OR
cptevents.cpt_number BETWEEN 01462 AND 01522
OR
cptevents.cpt_number = '00474'
OR
cptevents.cpt_number BETWEEN 01610 AND 01682
OR
cptevents.cpt_number BETWEEN 00500 AND 00580
OR
cptevents.cpt_number BETWEEN 01710 AND 01782
OR
cptevents.cpt_number BETWEEN 00600 AND 00670
OR
cptevents.cpt_number = '01810'
OR
cptevents.cpt_number BETWEEN 00700 AND 00797
OR
cptevents.cpt_number = '01860'
OR
cptevents.cpt_number BETWEEN 00800 AND 00882
OR
cptevents.cpt_number BETWEEN 01916 AND 01936
OR
cptevents.cpt_number BETWEEN 00902 AND 00952
OR
cptevents.cpt_number BETWEEN 01112 AND 01190
OR
cptevents.cpt_number BETWEEN 01200 AND 01274
OR
cptevents.cpt_number BETWEEN 01951 AND 01953
OR
cptevents.cpt_number BETWEEN 01958 AND 01969
OR
cptevents.cpt_number BETWEEN 01990 AND 01999);

