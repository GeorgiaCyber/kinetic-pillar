#!yaml|gpg
##
## NOTE: Classes will only be created if the current date is before the start date.  Classes will only be deleted if the end date is after the end date.
##       Also the stack create uses only last_name and password parameters, any additional parameters in the yaml will cause stack failure
##
## EXAMPLES:
##
##classes:
##  cctc-18-100:
##    students: 20
##    instructors: 2
##    heattemplate: https://git.cybbh.space/CCTC/public/raw/master/heat/CCTC_Master.yaml
##    startdate:
##    enddate:
##  cctc-18-101:
##    students: 10
##    instructors: 0
##    heattemplate: https://git.cybbh.space/CCTC/public/raw/master/heat/CCTC_Master.yaml
##    startdate:
##    enddate:
##    password: |
##      -----BEGIN PGP MESSAGE-----
##      Version: GnuPG v1
##
##      < gpg encrypted secret >
##      -----END PGP MESSAGE-----
## The students value is the number of students in the class who do *not* have
## a permanent account.  The instructor value is the number of cadre in the
## class who do *not* have a permanent account.  Student logins will be
## 00-indexed and in the format cctc-18-100-student-05.  Instructor logins will
## be 00-indexed and in the format cctc-18-100-instructor-05. The gpg encrypted
## secret is created with the salt pillar key

classes:
  wobc-19-001:
    students: 25
    instructors: 3
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-04-04
  bolc-18-503:
    students: 22
    instructors: 2
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-01-28
  T10BOC-19-001:
    students: 25
    instructors: 5
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-06-01
  CCTC-18-505:
    students: 22
    instructors: 0
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-01-19
  CCTC-MTT-19-001:
    students: 35
    instructors: 2
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-10-21
  CCTC-MTT-19-002:
    students: 35
    instructors: 2
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-10-21
  aitph2-19-001:
    students: 22
    instructors: 0
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-02-07
  aitph2-19-002:
    students: 22
    instructors: 2
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-02-19
  aitph2-19-003:
    students: 25
    instructors: 2
    heattemplate:
    startdate: 2019-01-10
    enddate: 2019-04-09
  bolc-19-001:
    students: 22
    instructors: 3
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-01-30
  bolc-19-504:
    students: 22
    instructors: 3
    heattemplate:
    startdate: 2019-01-07
    enddate: 2019-01-30
  cyooc-19-001:
    students: 22
    instructors: 3
    heattemplate:
    startdate: 2019-01-08
    enddate: 2019-03-19
  cpb-19-cpb1:
    students: 22
    instructors: 2
    heattemplate:
    startdate: 2019-02-04
    enddate: 2019-04-09
  aitph2-19-004:
    students: 22
    instructors: 2
    heattemplate:
    startdate: 2019-02-25
    enddate: 2019-04-19
  cybolc-18-505:
    students: 22
    instructors: 0
    heattemplate:
    startdate: 2019-03-05
    enddate: 2019-05-19
  bolc-18-002:
    students: 22
    instructors: 2
    heattemplate:
    startdate: 2019-03-05
    enddate: 2019-05-19
  CCTC-MTT-19-003:
    students: 35
    instructors: 2
    heattemplate:
    startdate: 2019-03-18
    enddate: 2019-05-22
  aitph2-19-005:
    students: 22
    instructors: 2
    heattemplate:
    startdate: 2019-03-22
    enddate: 2019-05-23
  aitph2-19-005-exam:
    students: 22
    instructors: 0
    heattemplate:
    startdate: 2019-04-06
    enddate: 2019-06-07
  wobc-19-002:
    students: 25
    instructors: 3
    heattemplate:
    startdate: 2019-04-22
    enddate: 2019-10-13
  cpb-19-002:
    students: 22
    instructors: 0
    heattemplate:
    startdate: 2019-04-22
    enddate: 2019-06-22
  t10ion-19-002:
    students: 22
    instructors: 4
    heattemplate: https://git.cybbh.space/t10/public/raw/master/heat/OpStation/Kali_Opstation.yaml
    startdate: 2019-05-06
    enddate: 2019-06-07
  aitph2-19-007:
    students: 20
    instructors: 4
    heattemplate:
    startdate: 2019-04-30
    enddate: 2019-05-15
