;% Publication Request:
;%    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;%    This file describes the contents of the heart-disease directory.
;%
;%    This directory contains 4 databases concerning heart disease diagnosis.
;%    All attributes are numeric-valued.  The data was collected from the
;%    four following locations:
;%
;%      1. Cleveland Clinic Foundation (cleveland.data)
;%      2. Hungarian Institute of Cardiology, Budapest (hungarian.data)
;%      3. V.A. Medical Center, Long Beach, CA (long-beach-va.data)
;%      4. University Hospital, Zurich, Switzerland (switzerland.data)
;%
;%    Each database has the same instance format.  While the databases have 76
;%    raw attributes, only 14 of them are actually used.  Thus I've taken the
;%    liberty of making 2 copies of each database: one with all the attributes
;%    and 1 with the 14 attributes actually used in past experiments.
;%
;%    The authors of the databases have requested:
;%
;%       ...that any publications resulting from the use of the data include the
;%       names of the principal investigator responsible for the data collection
;%       at each institution.  They would be:
;%
;%        1. Hungarian Institute of Cardiology. Budapest: Andras Janosi, M.D.
;%        2. University Hospital, Zurich, Switzerland: William Steinbrunn, M.D.
;%        3. University Hospital, Basel, Switzerland: Matthias Pfisterer, M.D.
;%        4. V.A. Medical Center, Long Beach and Cleveland Clinic Foundation:
;%           Robert Detrano, M.D., Ph.D.
;%
;%    Thanks in advance for abiding by this request.
;%
;%    David Aha
;%    July 22, 1988
;%    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;%
;% 1. Title: Heart Disease Databases
;%
;% 2. Source Information:
;%    (a) Creators:
;%        -- 1. Hungarian Institute of Cardiology. Budapest: Andras Janosi, M.D.
;%        -- 2. University Hospital, Zurich, Switzerland: William Steinbrunn, M.D.
;%        -- 3. University Hospital, Basel, Switzerland: Matthias Pfisterer, M.D.
;%        -- 4. V.A. Medical Center, Long Beach and Cleveland Clinic Foundation:
;%              Robert Detrano, M.D., Ph.D.
;%    (b) Donor: David W. Aha (aha@ics.uci.edu) (714) 856-8779
;%    (c) Date: July, 1988
;%
;% 3. Past Usage:
;%     1. Detrano,~R., Janosi,~A., Steinbrunn,~W., Pfisterer,~M., Schmid,~J.,
;%        Sandhu,~S., Guppy,~K., Lee,~S., \& Froelicher,~V. (1989).  {\it
;%        International application of a new probability algorithm for the
;%        diagnosis of coronary artery disease.}  {\it American Journal of
;%        Cardiology}, {\it 64},304--310.
;%        -- International Probability Analysis
;%        -- Address: Robert Detrano, M.D.
;%                    Cardiology 111-C
;%                    V.A. Medical Center
;%                    5901 E. 7th Street
;%                    Long Beach, CA 90028
;%        -- Results in percent accuracy: (for 0.5 probability threshold)
;%              Data Name:  CDF    CADENZA
;%           -- Hungarian   77     74
;%              Long beach  79     77
;%              Swiss       81     81
;%           -- Approximately a 77% correct classification accuracy with a
;%              logistic-regression-derived discriminant function
;%     2. David W. Aha & Dennis Kibler
;%        --
;%
;%
;%           -- Instance-based prediction of heart-disease presence with the
;%              Cleveland database
;%              -- NTgrowth: 77.0% accuracy
;%              --       C4: 74.8% accuracy
;%     3. John Gennari
;%        -- Gennari, J.~H., Langley, P, \& Fisher, D. (1989). Models of
;%           incremental concept formation. {\it Artificial Intelligence, 40},
;%           11--61.
;%        -- Results:
;%           -- The CLASSIT conceptual clustering system achieved a 78.9% accuracy
;%              on the Cleveland database.
;%
;% 4. Relevant Information:
;%      This database contains 76 attributes, but all published experiments
;%      refer to using a subset of 14 of them.  In particular, the Cleveland
;%      database is the only one that has been used by ML researchers to
;%      this date.  The "goal" field refers to the presence of heart disease
;%      in the patient.  It is integer valued from 0 (no presence) to 4.
;%      Experiments with the Cleveland database have concentrated on simply
;%      attempting to distinguish presence (values 1,2,3,4) from absence (value
;%      0).
;%
;%      The names and social security numbers of the patients were recently
;%      removed from the database, replaced with dummy values.
;%
;%      One file has been "processed", that one containing the Cleveland
;%      database.  All four unprocessed files also exist in this directory.
;%
;% 5. Number of Instances:
;%         Database:    # of instances:
;%           Cleveland: 303
;%           Hungarian: 294
;%         Switzerland: 123
;%       Long Beach VA: 200
;%
;% 6. Number of Attributes: 76 (including the predicted attribute)
;%
;% 7. Attribute Information:
;%    -- Only 14 used
;%       -- 1. #3  (age)
;%       -- 2. #4  (sex)
;%       -- 3. #9  (cp)
;%       -- 4. #10 (trestbps)
;%       -- 5. #12 (chol)
;%       -- 6. #16 (fbs)
;%       -- 7. #19 (restecg)
;%       -- 8. #32 (thalach)
;%       -- 9. #38 (exang)
;%       -- 10. #40 (oldpeak)
;%       -- 11. #41 (slope)
;%       -- 12. #44 (ca)
;%       -- 13. #51 (thal)
;%       -- 14. #58 (num)       (the predicted attribute)
;%
;%    -- Complete attribute documentation:
;%       1 id: patient identification number
;%       2 ccf: social security number (I replaced this with a dummy value of 0)
;%       3 age: age in years
;%       4 sex: sex (1 = male; 0 = female)
;%       5 painloc: chest pain location (1 = substernal; 0 = otherwise)
;%       6 painexer (1 = provoked by exertion; 0 = otherwise)
;%       7 relrest (1 = relieved after rest; 0 = otherwise)
;%       8 pncaden (sum of 5, 6, and 7)
;%       9 cp: chest pain type
;%         -- Value 1: typical angina
;%         -- Value 2: atypical angina
;%         -- Value 3: non-anginal pain
;%         -- Value 4: asymptomatic
;%      10 trestbps: resting blood pressure (in mm Hg on admission to the
;%         hospital)
;%      11 htn
;%      12 chol: serum cholestoral in mg/dl
;%      13 smoke: I believe this is 1 = yes; 0 = no (is or is not a smoker)
;%      14 cigs (cigarettes per day)
;%      15 years (number of years as a smoker)
;%      16 fbs: (fasting blood sugar > 120 mg/dl)  (1 = true; 0 = false)
;%      17 dm (1 = history of diabetes; 0 = no such history)
;%      18 famhist: family history of coronary artery disease (1 = yes; 0 = no)
;%      19 restecg: resting electrocardiographic results
;%         -- Value 0: normal
;%         -- Value 1: having ST-T wave abnormality (T wave inversions and/or ST
;%                     elevation or depression of > 0.05 mV)
;%         -- Value 2: showing probable or definite left ventricular hypertrophy
;%                     by Estes' criteria
;%      20 ekgmo (month of exercise ECG reading)
;%      21 ekgday(day of exercise ECG reading)
;%      22 ekgyr (year of exercise ECG reading)
;%      23 dig (digitalis used furing exercise ECG: 1 = yes; 0 = no)
;%      24 prop (Beta blocker used during exercise ECG: 1 = yes; 0 = no)
;%      25 nitr (nitrates used during exercise ECG: 1 = yes; 0 = no)
;%      26 pro (calcium channel blocker used during exercise ECG: 1 = yes; 0 = no)
;%      27 diuretic (diuretic used used during exercise ECG: 1 = yes; 0 = no)
;%      28 proto: exercise protocol
;%           1 = Bruce
;%           2 = Kottus
;%           3 = McHenry
;%           4 = fast Balke
;%           5 = Balke
;%           6 = Noughton
;%           7 = bike 150 kpa min/min  (Not sure if "kpa min/min" is what was
;%               written!)
;%           8 = bike 125 kpa min/min
;%           9 = bike 100 kpa min/min
;%          10 = bike 75 kpa min/min
;%          11 = bike 50 kpa min/min
;%          12 = arm ergometer
;%      29 thaldur: duration of exercise test in minutes
;%      30 thaltime: time when ST measure depression was noted
;%      31 met: mets achieved
;%      32 thalach: maximum heart rate achieved
;%      33 thalrest: resting heart rate
;%      34 tpeakbps: peak exercise blood pressure (first of 2 parts)
;%      35 tpeakbpd: peak exercise blood pressure (second of 2 parts)
;%      36 dummy
;%      37 trestbpd: resting blood pressure
;%      38 exang: exercise induced angina (1 = yes; 0 = no)
;%      39 xhypo: (1 = yes; 0 = no)
;%      40 oldpeak = ST depression induced by exercise relative to rest
;%      41 slope: the slope of the peak exercise ST segment
;%         -- Value 1: upsloping
;%         -- Value 2: flat
;%         -- Value 3: downsloping
;%      42 rldv5: height at rest
;%      43 rldv5e: height at peak exercise
;%      44 ca: number of major vessels (0-3) colored by flourosopy
;%      45 restckm: irrelevant
;%      46 exerckm: irrelevant
;%      47 restef: rest raidonuclid (sp?) ejection fraction
;%      48 restwm: rest wall (sp?) motion abnormality
;%         0 = none
;%         1 = mild or moderate
;%         2 = moderate or severe
;%         3 = akinesis or dyskmem (sp?)
;%      49 exeref: exercise radinalid (sp?) ejection fraction
;%      50 exerwm: exercise wall (sp?) motion
;%      51 thal: 3 = normal; 6 = fixed defect; 7 = reversable defect
;%      52 thalsev: not used
;%      53 thalpul: not used
;%      54 earlobe: not used
;%      55 cmo: month of cardiac cath (sp?)  (perhaps "call")
;%      56 cday: day of cardiac cath (sp?)
;%      57 cyr: year of cardiac cath (sp?)
;%      58 num: diagnosis of heart disease (angiographic disease status)
;%         -- Value 0: < 50% diameter narrowing
;%         -- Value 1: > 50% diameter narrowing
;%         (in any major vessel: attributes 59 through 68 are vessels)
;%      59 lmt
;%      60 ladprox
;%      61 laddist
;%      62 diag
;%      63 cxmain
;%      64 ramus
;%      65 om1
;%      66 om2
;%      67 rcaprox
;%      68 rcadist
;%      69 lvx1: not used
;%      70 lvx2: not used
;%      71 lvx3: not used
;%      72 lvx4: not used
;%      73 lvf: not used
;%      74 cathef: not used
;%      75 junk: not used
;%      76 name: last name of patient
;%         (I replaced this with the dummy string "name")
;%
;% 9. Missing Attribute Values: Several.  Distinguished with value -9.0.
;%
;% 10. Class Distribution:
;%         Database:      0   1   2   3   4 Total
;%           Cleveland: 164  55  36  35  13   303
;%           Hungarian: 188  37  26  28  15   294
;%         Switzerland:   8  48  32  30   5   123
;%       Long Beach VA:  51  56  41  42  10   200
;%
;% 'slope' is ordered
;%
;%
;%
;%
;% Relabeled values in attribute 'sex'
;%    From: 0                       To: female
;%    From: 1                       To: male
;%
;%
;% Relabeled values in attribute 'cp'
;%    From: 1                       To: typ_angina
;%    From: 4                       To: asympt
;%    From: 3                       To: non_anginal
;%    From: 2                       To: atyp_angina
;%
;%
;% Relabeled values in attribute 'fbs'
;%    From: 1                       To: t
;%    From: 0                       To: f
;%
;%
;% Relabeled values in attribute 'restecg'
;%    From: 2                       To: left_vent_hyper
;%    From: 0                       To: normal
;%    From: 1                       To: st_t_wave_abnormality
;%
;%
;% Relabeled values in attribute 'exang'
;%    From: 0                       To: no
;%    From: 1                       To: yes
;%
;%
;% Relabeled values in attribute 'slope'
;%    From: 1                       To: up
;%    From: 2                       To: flat
;%    From: 3                       To: down
;%
;%
;% Relabeled values in attribute 'thal'
;%    From: 6                       To: fixed_defect
;%    From: 3                       To: normal
;%    From: 7                       To: reversable_defect
;%
;%
;% Relabeled values in attribute 'num'
;%    From: '0'                     To: <50
;%    From: '1'                     To: >50_1
;%    From: '2'                     To: >50_2
;%    From: '3'                     To: >50_3
;%    From: '4'                     To: >50_4
;%
(defun cleveland-14-heart-disease ()
  (data
    :name 'cleveland-14-heart-disease
    :columns '(age sex cp trestbps chol fbs restecg thalach exang oldpeak slope ca thal num)
    :egs
    '(
      (63 male typ_angina 145 233 t left_vent_hyper 150 no 2.3 down 0 fixed_defect <50)
      (67 male asympt 160 286 f left_vent_hyper 108 yes 1.5 flat 3 normal >50_1)
      (67 male asympt 120 229 f left_vent_hyper 129 yes 2.6 flat 2 reversable_defect >50_1)
      (37 male non_anginal 130 250 f normal 187 no 3.5 down 0 normal <50)
      (41 female atyp_angina 130 204 f left_vent_hyper 172 no 1.4 up 0 normal <50)
      (56 male atyp_angina 120 236 f normal 178 no 0.8 up 0 normal <50)
      (62 female asympt 140 268 f left_vent_hyper 160 no 3.6 down 2 normal >50_1)
      (57 female asympt 120 354 f normal 163 yes 0.6 up 0 normal <50)
      (63 male asympt 130 254 f left_vent_hyper 147 no 1.4 flat 1 reversable_defect >50_1)
      (53 male asympt 140 203 t left_vent_hyper 155 yes 3.1 down 0 reversable_defect >50_1)
      (57 male asympt 140 192 f normal 148 no 0.4 flat 0 fixed_defect <50)
      (56 female atyp_angina 140 294 f left_vent_hyper 153 no 1.3 flat 0 normal <50)
      (56 male non_anginal 130 256 t left_vent_hyper 142 yes 0.6 flat 1 fixed_defect >50_1)
      (44 male atyp_angina 120 263 f normal 173 no 0 up 0 reversable_defect <50)
      (52 male non_anginal 172 199 t normal 162 no 0.5 up 0 reversable_defect <50)
      (57 male non_anginal 150 168 f normal 174 no 1.6 up 0 normal <50)
      (48 male atyp_angina 110 229 f normal 168 no 1 down 0 reversable_defect >50_1)
      (54 male asympt 140 239 f normal 160 no 1.2 up 0 normal <50)
      (48 female non_anginal 130 275 f normal 139 no 0.2 up 0 normal <50)
      (49 male atyp_angina 130 266 f normal 171 no 0.6 up 0 normal <50)
      (64 male typ_angina 110 211 f left_vent_hyper 144 yes 1.8 flat 0 normal <50)
      (58 female typ_angina 150 283 t left_vent_hyper 162 no 1 up 0 normal <50)
      (58 male atyp_angina 120 284 f left_vent_hyper 160 no 1.8 flat 0 normal >50_1)
      (58 male non_anginal 132 224 f left_vent_hyper 173 no 3.2 up 2 reversable_defect >50_1)
      (60 male asympt 130 206 f left_vent_hyper 132 yes 2.4 flat 2 reversable_defect >50_1)
      (50 female non_anginal 120 219 f normal 158 no 1.6 flat 0 normal <50)
      (58 female non_anginal 120 340 f normal 172 no 0 up 0 normal <50)
      (66 female typ_angina 150 226 f normal 114 no 2.6 down 0 normal <50)
      (43 male asympt 150 247 f normal 171 no 1.5 up 0 normal <50)
      (40 male asympt 110 167 f left_vent_hyper 114 yes 2 flat 0 reversable_defect >50_1)
      (69 female typ_angina 140 239 f normal 151 no 1.8 up 2 normal <50)
      (60 male asympt 117 230 t normal 160 yes 1.4 up 2 reversable_defect >50_1)
      (64 male non_anginal 140 335 f normal 158 no 0 up 0 normal >50_1)
      (59 male asympt 135 234 f normal 161 no 0.5 flat 0 reversable_defect <50)
      (44 male non_anginal 130 233 f normal 179 yes 0.4 up 0 normal <50)
      (42 male asympt 140 226 f normal 178 no 0 up 0 normal <50)
      (43 male asympt 120 177 f left_vent_hyper 120 yes 2.5 flat 0 reversable_defect >50_1)
      (57 male asympt 150 276 f left_vent_hyper 112 yes 0.6 flat 1 fixed_defect >50_1)
      (55 male asympt 132 353 f normal 132 yes 1.2 flat 1 reversable_defect >50_1)
      (61 male non_anginal 150 243 t normal 137 yes 1 flat 0 normal <50)
      (65 female asympt 150 225 f left_vent_hyper 114 no 1 flat 3 reversable_defect >50_1)
      (40 male typ_angina 140 199 f normal 178 yes 1.4 up 0 reversable_defect <50)
      (71 female atyp_angina 160 302 f normal 162 no 0.4 up 2 normal <50)
      (59 male non_anginal 150 212 t normal 157 no 1.6 up 0 normal <50)
      (61 female asympt 130 330 f left_vent_hyper 169 no 0 up 0 normal >50_1)
      (58 male non_anginal 112 230 f left_vent_hyper 165 no 2.5 flat 1 reversable_defect >50_1)
      (51 male non_anginal 110 175 f normal 123 no 0.6 up 0 normal <50)
      (50 male asympt 150 243 f left_vent_hyper 128 no 2.6 flat 0 reversable_defect >50_1)
      (65 female non_anginal 140 417 t left_vent_hyper 157 no 0.8 up 1 normal <50)
      (53 male non_anginal 130 197 t left_vent_hyper 152 no 1.2 down 0 normal <50)
      (41 female atyp_angina 105 198 f normal 168 no 0 up 1 normal <50)
      (65 male asympt 120 177 f normal 140 no 0.4 up 0 reversable_defect <50)
      (44 male asympt 112 290 f left_vent_hyper 153 no 0 up 1 normal >50_1)
      (44 male atyp_angina 130 219 f left_vent_hyper 188 no 0 up 0 normal <50)
      (60 male asympt 130 253 f normal 144 yes 1.4 up 1 reversable_defect >50_1)
      (54 male asympt 124 266 f left_vent_hyper 109 yes 2.2 flat 1 reversable_defect >50_1)
      (50 male non_anginal 140 233 f normal 163 no 0.6 flat 1 reversable_defect >50_1)
      (41 male asympt 110 172 f left_vent_hyper 158 no 0 up 0 reversable_defect >50_1)
      (54 male non_anginal 125 273 f left_vent_hyper 152 no 0.5 down 1 normal <50)
      (51 male typ_angina 125 213 f left_vent_hyper 125 yes 1.4 up 1 normal <50)
      (51 female asympt 130 305 f normal 142 yes 1.2 flat 0 reversable_defect >50_1)
      (46 female non_anginal 142 177 f left_vent_hyper 160 yes 1.4 down 0 normal <50)
      (58 male asympt 128 216 f left_vent_hyper 131 yes 2.2 flat 3 reversable_defect >50_1)
      (54 female non_anginal 135 304 t normal 170 no 0 up 0 normal <50)
      (54 male asympt 120 188 f normal 113 no 1.4 flat 1 reversable_defect >50_1)
      (60 male asympt 145 282 f left_vent_hyper 142 yes 2.8 flat 2 reversable_defect >50_1)
      (60 male non_anginal 140 185 f left_vent_hyper 155 no 3 flat 0 normal >50_1)
      (54 male non_anginal 150 232 f left_vent_hyper 165 no 1.6 up 0 reversable_defect <50)
      (59 male asympt 170 326 f left_vent_hyper 140 yes 3.4 down 0 reversable_defect >50_1)
      (46 male non_anginal 150 231 f normal 147 no 3.6 flat 0 normal >50_1)
      (65 female non_anginal 155 269 f normal 148 no 0.8 up 0 normal <50)
      (67 male asympt 125 254 t normal 163 no 0.2 flat 2 reversable_defect >50_1)
      (62 male asympt 120 267 f normal 99 yes 1.8 flat 2 reversable_defect >50_1)
      (65 male asympt 110 248 f left_vent_hyper 158 no 0.6 up 2 fixed_defect >50_1)
      (44 male asympt 110 197 f left_vent_hyper 177 no 0 up 1 normal >50_1)
      (65 female non_anginal 160 360 f left_vent_hyper 151 no 0.8 up 0 normal <50)
      (60 male asympt 125 258 f left_vent_hyper 141 yes 2.8 flat 1 reversable_defect >50_1)
      (51 female non_anginal 140 308 f left_vent_hyper 142 no 1.5 up 1 normal <50)
      (48 male atyp_angina 130 245 f left_vent_hyper 180 no 0.2 flat 0 normal <50)
      (58 male asympt 150 270 f left_vent_hyper 111 yes 0.8 up 0 reversable_defect >50_1)
      (45 male asympt 104 208 f left_vent_hyper 148 yes 3 flat 0 normal <50)
      (53 female asympt 130 264 f left_vent_hyper 143 no 0.4 flat 0 normal <50)
      (39 male non_anginal 140 321 f left_vent_hyper 182 no 0 up 0 normal <50)
      (68 male non_anginal 180 274 t left_vent_hyper 150 yes 1.6 flat 0 reversable_defect >50_1)
      (52 male atyp_angina 120 325 f normal 172 no 0.2 up 0 normal <50)
      (44 male non_anginal 140 235 f left_vent_hyper 180 no 0 up 0 normal <50)
      (47 male non_anginal 138 257 f left_vent_hyper 156 no 0 up 0 normal <50)
      (53 female non_anginal 128 216 f left_vent_hyper 115 no 0 up 0 ? <50)
      (53 female asympt 138 234 f left_vent_hyper 160 no 0 up 0 normal <50)
      (51 female non_anginal 130 256 f left_vent_hyper 149 no 0.5 up 0 normal <50)
      (66 male asympt 120 302 f left_vent_hyper 151 no 0.4 flat 0 normal <50)
      (62 female asympt 160 164 f left_vent_hyper 145 no 6.2 down 3 reversable_defect >50_1)
      (62 male non_anginal 130 231 f normal 146 no 1.8 flat 3 reversable_defect <50)
      (44 female non_anginal 108 141 f normal 175 no 0.6 flat 0 normal <50)
      (63 female non_anginal 135 252 f left_vent_hyper 172 no 0 up 0 normal <50)
      (52 male asympt 128 255 f normal 161 yes 0 up 1 reversable_defect >50_1)
      (59 male asympt 110 239 f left_vent_hyper 142 yes 1.2 flat 1 reversable_defect >50_1)
      (60 female asympt 150 258 f left_vent_hyper 157 no 2.6 flat 2 reversable_defect >50_1)
      (52 male atyp_angina 134 201 f normal 158 no 0.8 up 1 normal <50)
      (48 male asympt 122 222 f left_vent_hyper 186 no 0 up 0 normal <50)
      (45 male asympt 115 260 f left_vent_hyper 185 no 0 up 0 normal <50)
      (34 male typ_angina 118 182 f left_vent_hyper 174 no 0 up 0 normal <50)
      (57 female asympt 128 303 f left_vent_hyper 159 no 0 up 1 normal <50)
      (71 female non_anginal 110 265 t left_vent_hyper 130 no 0 up 1 normal <50)
      (49 male non_anginal 120 188 f normal 139 no 2 flat 3 reversable_defect >50_1)
      (54 male atyp_angina 108 309 f normal 156 no 0 up 0 reversable_defect <50)
      (59 male asympt 140 177 f normal 162 yes 0 up 1 reversable_defect >50_1)
      (57 male non_anginal 128 229 f left_vent_hyper 150 no 0.4 flat 1 reversable_defect >50_1)
      (61 male asympt 120 260 f normal 140 yes 3.6 flat 1 reversable_defect >50_1)
      (39 male asympt 118 219 f normal 140 no 1.2 flat 0 reversable_defect >50_1)
      (61 female asympt 145 307 f left_vent_hyper 146 yes 1 flat 0 reversable_defect >50_1)
      (56 male asympt 125 249 t left_vent_hyper 144 yes 1.2 flat 1 normal >50_1)
      (52 male typ_angina 118 186 f left_vent_hyper 190 no 0 flat 0 fixed_defect <50)
      (43 female asympt 132 341 t left_vent_hyper 136 yes 3 flat 0 reversable_defect >50_1)
      (62 female non_anginal 130 263 f normal 97 no 1.2 flat 1 reversable_defect >50_1)
      (41 male atyp_angina 135 203 f normal 132 no 0 flat 0 fixed_defect <50)
      (58 male non_anginal 140 211 t left_vent_hyper 165 no 0 up 0 normal <50)
      (35 female asympt 138 183 f normal 182 no 1.4 up 0 normal <50)
      (63 male asympt 130 330 t left_vent_hyper 132 yes 1.8 up 3 reversable_defect >50_1)
      (65 male asympt 135 254 f left_vent_hyper 127 no 2.8 flat 1 reversable_defect >50_1)
      (48 male asympt 130 256 t left_vent_hyper 150 yes 0 up 2 reversable_defect >50_1)
      (63 female asympt 150 407 f left_vent_hyper 154 no 4 flat 3 reversable_defect >50_1)
      (51 male non_anginal 100 222 f normal 143 yes 1.2 flat 0 normal <50)
      (55 male asympt 140 217 f normal 111 yes 5.6 down 0 reversable_defect >50_1)
      (65 male typ_angina 138 282 t left_vent_hyper 174 no 1.4 flat 1 normal >50_1)
      (45 female atyp_angina 130 234 f left_vent_hyper 175 no 0.6 flat 0 normal <50)
      (56 female asympt 200 288 t left_vent_hyper 133 yes 4 down 2 reversable_defect >50_1)
      (54 male asympt 110 239 f normal 126 yes 2.8 flat 1 reversable_defect >50_1)
      (44 male atyp_angina 120 220 f normal 170 no 0 up 0 normal <50)
      (62 female asympt 124 209 f normal 163 no 0 up 0 normal <50)
      (54 male non_anginal 120 258 f left_vent_hyper 147 no 0.4 flat 0 reversable_defect <50)
      (51 male non_anginal 94 227 f normal 154 yes 0 up 1 reversable_defect <50)
      (29 male atyp_angina 130 204 f left_vent_hyper 202 no 0 up 0 normal <50)
      (51 male asympt 140 261 f left_vent_hyper 186 yes 0 up 0 normal <50)
      (43 female non_anginal 122 213 f normal 165 no 0.2 flat 0 normal <50)
      (55 female atyp_angina 135 250 f left_vent_hyper 161 no 1.4 flat 0 normal <50)
      (70 male asympt 145 174 f normal 125 yes 2.6 down 0 reversable_defect >50_1)
      (62 male atyp_angina 120 281 f left_vent_hyper 103 no 1.4 flat 1 reversable_defect >50_1)
      (35 male asympt 120 198 f normal 130 yes 1.6 flat 0 reversable_defect >50_1)
      (51 male non_anginal 125 245 t left_vent_hyper 166 no 2.4 flat 0 normal <50)
      (59 male atyp_angina 140 221 f normal 164 yes 0 up 0 normal <50)
      (59 male typ_angina 170 288 f left_vent_hyper 159 no 0.2 flat 0 reversable_defect >50_1)
      (52 male atyp_angina 128 205 t normal 184 no 0 up 0 normal <50)
      (64 male non_anginal 125 309 f normal 131 yes 1.8 flat 0 reversable_defect >50_1)
      (58 male non_anginal 105 240 f left_vent_hyper 154 yes 0.6 flat 0 reversable_defect <50)
      (47 male non_anginal 108 243 f normal 152 no 0 up 0 normal >50_1)
      (57 male asympt 165 289 t left_vent_hyper 124 no 1 flat 3 reversable_defect >50_1)
      (41 male non_anginal 112 250 f normal 179 no 0 up 0 normal <50)
      (45 male atyp_angina 128 308 f left_vent_hyper 170 no 0 up 0 normal <50)
      (60 female non_anginal 102 318 f normal 160 no 0 up 1 normal <50)
      (52 male typ_angina 152 298 t normal 178 no 1.2 flat 0 reversable_defect <50)
      (42 female asympt 102 265 f left_vent_hyper 122 no 0.6 flat 0 normal <50)
      (67 female non_anginal 115 564 f left_vent_hyper 160 no 1.6 flat 0 reversable_defect <50)
      (55 male asympt 160 289 f left_vent_hyper 145 yes 0.8 flat 1 reversable_defect >50_1)
      (64 male asympt 120 246 f left_vent_hyper 96 yes 2.2 down 1 normal >50_1)
      (70 male asympt 130 322 f left_vent_hyper 109 no 2.4 flat 3 normal >50_1)
      (51 male asympt 140 299 f normal 173 yes 1.6 up 0 reversable_defect >50_1)
      (58 male asympt 125 300 f left_vent_hyper 171 no 0 up 2 reversable_defect >50_1)
      (60 male asympt 140 293 f left_vent_hyper 170 no 1.2 flat 2 reversable_defect >50_1)
      (68 male non_anginal 118 277 f normal 151 no 1 up 1 reversable_defect <50)
      (46 male atyp_angina 101 197 t normal 156 no 0 up 0 reversable_defect <50)
      (77 male asympt 125 304 f left_vent_hyper 162 yes 0 up 3 normal >50_1)
      (54 female non_anginal 110 214 f normal 158 no 1.6 flat 0 normal <50)
      (58 female asympt 100 248 f left_vent_hyper 122 no 1 flat 0 normal <50)
      (48 male non_anginal 124 255 t normal 175 no 0 up 2 normal <50)
      (57 male asympt 132 207 f normal 168 yes 0 up 0 reversable_defect <50)
      (52 male non_anginal 138 223 f normal 169 no 0 up ? normal <50)
      (54 female atyp_angina 132 288 t left_vent_hyper 159 yes 0 up 1 normal <50)
      (35 male asympt 126 282 f left_vent_hyper 156 yes 0 up 0 reversable_defect >50_1)
      (45 female atyp_angina 112 160 f normal 138 no 0 flat 0 normal <50)
      (70 male non_anginal 160 269 f normal 112 yes 2.9 flat 1 reversable_defect >50_1)
      (53 male asympt 142 226 f left_vent_hyper 111 yes 0 up 0 reversable_defect <50)
      (59 female asympt 174 249 f normal 143 yes 0 flat 0 normal >50_1)
      (62 female asympt 140 394 f left_vent_hyper 157 no 1.2 flat 0 normal <50)
      (64 male asympt 145 212 f left_vent_hyper 132 no 2 flat 2 fixed_defect >50_1)
      (57 male asympt 152 274 f normal 88 yes 1.2 flat 1 reversable_defect >50_1)
      (52 male asympt 108 233 t normal 147 no 0.1 up 3 reversable_defect <50)
      (56 male asympt 132 184 f left_vent_hyper 105 yes 2.1 flat 1 fixed_defect >50_1)
      (43 male non_anginal 130 315 f normal 162 no 1.9 up 1 normal <50)
      (53 male non_anginal 130 246 t left_vent_hyper 173 no 0 up 3 normal <50)
      (48 male asympt 124 274 f left_vent_hyper 166 no 0.5 flat 0 reversable_defect >50_1)
      (56 female asympt 134 409 f left_vent_hyper 150 yes 1.9 flat 2 reversable_defect >50_1)
      (42 male typ_angina 148 244 f left_vent_hyper 178 no 0.8 up 2 normal <50)
      (59 male typ_angina 178 270 f left_vent_hyper 145 no 4.2 down 0 reversable_defect <50)
      (63 female atyp_angina 140 195 f normal 179 no 0 up 2 normal <50)
      (42 male non_anginal 120 240 t normal 194 no 0.8 down 0 reversable_defect <50)
      (66 male atyp_angina 160 246 f normal 120 yes 0 flat 3 fixed_defect >50_1)
      (54 male atyp_angina 192 283 f left_vent_hyper 195 no 0 up 1 reversable_defect >50_1)
      (69 male non_anginal 140 254 f left_vent_hyper 146 no 2 flat 3 reversable_defect >50_1)
      (50 male non_anginal 129 196 f normal 163 no 0 up 0 normal <50)
      (51 male asympt 140 298 f normal 122 yes 4.2 flat 3 reversable_defect >50_1)
      (43 male asympt 132 247 t left_vent_hyper 143 yes 0.1 flat ? reversable_defect >50_1)
      (62 female asympt 138 294 t normal 106 no 1.9 flat 3 normal >50_1)
      (68 female non_anginal 120 211 f left_vent_hyper 115 no 1.5 flat 0 normal <50)
      (67 male asympt 100 299 f left_vent_hyper 125 yes 0.9 flat 2 normal >50_1)
      (69 male typ_angina 160 234 t left_vent_hyper 131 no 0.1 flat 1 normal <50)
      (45 female asympt 138 236 f left_vent_hyper 152 yes 0.2 flat 0 normal <50)
      (50 female atyp_angina 120 244 f normal 162 no 1.1 up 0 normal <50)
      (59 male typ_angina 160 273 f left_vent_hyper 125 no 0 up 0 normal >50_1)
      (50 female asympt 110 254 f left_vent_hyper 159 no 0 up 0 normal <50)
      (64 female asympt 180 325 f normal 154 yes 0 up 0 normal <50)
      (57 male non_anginal 150 126 t normal 173 no 0.2 up 1 reversable_defect <50)
      (64 female non_anginal 140 313 f normal 133 no 0.2 up 0 reversable_defect <50)
      (43 male asympt 110 211 f normal 161 no 0 up 0 reversable_defect <50)
      (45 male asympt 142 309 f left_vent_hyper 147 yes 0 flat 3 reversable_defect >50_1)
      (58 male asympt 128 259 f left_vent_hyper 130 yes 3 flat 2 reversable_defect >50_1)
      (50 male asympt 144 200 f left_vent_hyper 126 yes 0.9 flat 0 reversable_defect >50_1)
      (55 male atyp_angina 130 262 f normal 155 no 0 up 0 normal <50)
      (62 female asympt 150 244 f normal 154 yes 1.4 flat 0 normal >50_1)
      (37 female non_anginal 120 215 f normal 170 no 0 up 0 normal <50)
      (38 male typ_angina 120 231 f normal 182 yes 3.8 flat 0 reversable_defect >50_1)
      (41 male non_anginal 130 214 f left_vent_hyper 168 no 2 flat 0 normal <50)
      (66 female asympt 178 228 t normal 165 yes 1 flat 2 reversable_defect >50_1)
      (52 male asympt 112 230 f normal 160 no 0 up 1 normal >50_1)
      (56 male typ_angina 120 193 f left_vent_hyper 162 no 1.9 flat 0 reversable_defect <50)
      (46 female atyp_angina 105 204 f normal 172 no 0 up 0 normal <50)
      (46 female asympt 138 243 f left_vent_hyper 152 yes 0 flat 0 normal <50)
      (64 female asympt 130 303 f normal 122 no 2 flat 2 normal <50)
      (59 male asympt 138 271 f left_vent_hyper 182 no 0 up 0 normal <50)
      (41 female non_anginal 112 268 f left_vent_hyper 172 yes 0 up 0 normal <50)
      (54 female non_anginal 108 267 f left_vent_hyper 167 no 0 up 0 normal <50)
      (39 female non_anginal 94 199 f normal 179 no 0 up 0 normal <50)
      (53 male asympt 123 282 f normal 95 yes 2 flat 2 reversable_defect >50_1)
      (63 female asympt 108 269 f normal 169 yes 1.8 flat 2 normal >50_1)
      (34 female atyp_angina 118 210 f normal 192 no 0.7 up 0 normal <50)
      (47 male asympt 112 204 f normal 143 no 0.1 up 0 normal <50)
      (67 female non_anginal 152 277 f normal 172 no 0 up 1 normal <50)
      (54 male asympt 110 206 f left_vent_hyper 108 yes 0 flat 1 normal >50_1)
      (66 male asympt 112 212 f left_vent_hyper 132 yes 0.1 up 1 normal >50_1)
      (52 female non_anginal 136 196 f left_vent_hyper 169 no 0.1 flat 0 normal <50)
      (55 female asympt 180 327 f st_t_wave_abnormality 117 yes 3.4 flat 0 normal >50_1)
      (49 male non_anginal 118 149 f left_vent_hyper 126 no 0.8 up 3 normal >50_1)
      (74 female atyp_angina 120 269 f left_vent_hyper 121 yes 0.2 up 1 normal <50)
      (54 female non_anginal 160 201 f normal 163 no 0 up 1 normal <50)
      (54 male asympt 122 286 f left_vent_hyper 116 yes 3.2 flat 2 normal >50_1)
      (56 male asympt 130 283 t left_vent_hyper 103 yes 1.6 down 0 reversable_defect >50_1)
      (46 male asympt 120 249 f left_vent_hyper 144 no 0.8 up 0 reversable_defect >50_1)
      (49 female atyp_angina 134 271 f normal 162 no 0 flat 0 normal <50)
      (42 male atyp_angina 120 295 f normal 162 no 0 up 0 normal <50)
      (41 male atyp_angina 110 235 f normal 153 no 0 up 0 normal <50)
      (41 female atyp_angina 126 306 f normal 163 no 0 up 0 normal <50)
      (49 female asympt 130 269 f normal 163 no 0 up 0 normal <50)
      (61 male typ_angina 134 234 f normal 145 no 2.6 flat 2 normal >50_1)
      (60 female non_anginal 120 178 t normal 96 no 0 up 0 normal <50)
      (67 male asympt 120 237 f normal 71 no 1 flat 0 normal >50_1)
      (58 male asympt 100 234 f normal 156 no 0.1 up 1 reversable_defect >50_1)
      (47 male asympt 110 275 f left_vent_hyper 118 yes 1 flat 1 normal >50_1)
      (52 male asympt 125 212 f normal 168 no 1 up 2 reversable_defect >50_1)
      (62 male atyp_angina 128 208 t left_vent_hyper 140 no 0 up 0 normal <50)
      (57 male asympt 110 201 f normal 126 yes 1.5 flat 0 fixed_defect <50)
      (58 male asympt 146 218 f normal 105 no 2 flat 1 reversable_defect >50_1)
      (64 male asympt 128 263 f normal 105 yes 0.2 flat 1 reversable_defect <50)
      (51 female non_anginal 120 295 f left_vent_hyper 157 no 0.6 up 0 normal <50)
      (43 male asympt 115 303 f normal 181 no 1.2 flat 0 normal <50)
      (42 female non_anginal 120 209 f normal 173 no 0 flat 0 normal <50)
      (67 female asympt 106 223 f normal 142 no 0.3 up 2 normal <50)
      (76 female non_anginal 140 197 f st_t_wave_abnormality 116 no 1.1 flat 0 normal <50)
      (70 male atyp_angina 156 245 f left_vent_hyper 143 no 0 up 0 normal <50)
      (57 male atyp_angina 124 261 f normal 141 no 0.3 up 0 reversable_defect >50_1)
      (44 female non_anginal 118 242 f normal 149 no 0.3 flat 1 normal <50)
      (58 female atyp_angina 136 319 t left_vent_hyper 152 no 0 up 2 normal >50_1)
      (60 female typ_angina 150 240 f normal 171 no 0.9 up 0 normal <50)
      (44 male non_anginal 120 226 f normal 169 no 0 up 0 normal <50)
      (61 male asympt 138 166 f left_vent_hyper 125 yes 3.6 flat 1 normal >50_1)
      (42 male asympt 136 315 f normal 125 yes 1.8 flat 0 fixed_defect >50_1)
      (52 male asympt 128 204 t normal 156 yes 1 flat 0 ? >50_1)
      (59 male non_anginal 126 218 t normal 134 no 2.2 flat 1 fixed_defect >50_1)
      (40 male asympt 152 223 f normal 181 no 0 up 0 reversable_defect >50_1)
      (42 male non_anginal 130 180 f normal 150 no 0 up 0 normal <50)
      (61 male asympt 140 207 f left_vent_hyper 138 yes 1.9 up 1 reversable_defect >50_1)
      (66 male asympt 160 228 f left_vent_hyper 138 no 2.3 up 0 fixed_defect <50)
      (46 male asympt 140 311 f normal 120 yes 1.8 flat 2 reversable_defect >50_1)
      (71 female asympt 112 149 f normal 125 no 1.6 flat 0 normal <50)
      (59 male typ_angina 134 204 f normal 162 no 0.8 up 2 normal >50_1)
      (64 male typ_angina 170 227 f left_vent_hyper 155 no 0.6 flat 0 reversable_defect <50)
      (66 female non_anginal 146 278 f left_vent_hyper 152 no 0 flat 1 normal <50)
      (39 female non_anginal 138 220 f normal 152 no 0 flat 0 normal <50)
      (57 male atyp_angina 154 232 f left_vent_hyper 164 no 0 up 1 normal >50_1)
      (58 female asympt 130 197 f normal 131 no 0.6 flat 0 normal <50)
      (57 male asympt 110 335 f normal 143 yes 3 flat 1 reversable_defect >50_1)
      (47 male non_anginal 130 253 f normal 179 no 0 up 0 normal <50)
      (55 female asympt 128 205 f st_t_wave_abnormality 130 yes 2 flat 1 reversable_defect >50_1)
      (35 male atyp_angina 122 192 f normal 174 no 0 up 0 normal <50)
      (61 male asympt 148 203 f normal 161 no 0 up 1 reversable_defect >50_1)
      (58 male asympt 114 318 f st_t_wave_abnormality 140 no 4.4 down 3 fixed_defect >50_1)
      (58 female asympt 170 225 t left_vent_hyper 146 yes 2.8 flat 2 fixed_defect >50_1)
      (58 male atyp_angina 125 220 f normal 144 no 0.4 flat ? reversable_defect <50)
      (56 male atyp_angina 130 221 f left_vent_hyper 163 no 0 up 0 reversable_defect <50)
      (56 male atyp_angina 120 240 f normal 169 no 0 down 0 normal <50)
      (67 male non_anginal 152 212 f left_vent_hyper 150 no 0.8 flat 0 reversable_defect >50_1)
      (55 female atyp_angina 132 342 f normal 166 no 1.2 up 0 normal <50)
      (44 male asympt 120 169 f normal 144 yes 2.8 down 0 fixed_defect >50_1)
      (63 male asympt 140 187 f left_vent_hyper 144 yes 4 up 2 reversable_defect >50_1)
      (63 female asympt 124 197 f normal 136 yes 0 flat 0 normal >50_1)
      (41 male atyp_angina 120 157 f normal 182 no 0 up 0 normal <50)
      (59 male asympt 164 176 t left_vent_hyper 90 no 1 flat 2 fixed_defect >50_1)
      (57 female asympt 140 241 f normal 123 yes 0.2 flat 0 reversable_defect >50_1)
      (45 male typ_angina 110 264 f normal 132 no 1.2 flat 0 reversable_defect >50_1)
      (68 male asympt 144 193 t normal 141 no 3.4 flat 2 reversable_defect >50_1)
      (57 male asympt 130 131 f normal 115 yes 1.2 flat 1 reversable_defect >50_1)
      (57 female atyp_angina 130 236 f left_vent_hyper 174 no 0 flat 1 normal >50_1)
      (38 male non_anginal 138 175 f normal 173 no 0 up ? normal <50)
      (38 male non_anginal 138 175 f normal 173 no 0 up ? normal <50)
      )))
