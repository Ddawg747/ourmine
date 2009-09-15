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
;%       -- 3. #9  (chest_pain)
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
;%       9 chest_pain: chest pain type
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
;%
;%
;%
;%
;% Relabeled values in attribute 'sex'
;%    From: 0                       To: female
;%    From: 1                       To: male
;%
;%
;% Relabeled values in attribute 'chest_pain'
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
;%    From: 3                       To: down
;%    From: 2                       To: flat
;%    From: 1                       To: up
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
;%    From: '1'                     To: '>50_1'
;%    From: '2'                     To: '>50_2'
;%    From: '3'                     To: '>50_3'
;%    From: '4'                     To: '>50_4'
;%
(defun hungarian-14-heart-disease ()
  (data
    :name 'hungarian-14-heart-disease
    :columns '(age sex chest_pain trestbps chol fbs restecg thalach exang oldpeak slope ca thal num)
    :egs
    '(
      (28 male atyp_angina 130 132 f left_vent_hyper 185 no 0 ? ? ? <50)
      (29 male atyp_angina 120 243 f normal 160 no 0 ? ? ? <50)
      (29 male atyp_angina 140 ? f normal 170 no 0 ? ? ? <50)
      (30 female typ_angina 170 237 f st_t_wave_abnormality 170 no 0 ? ? fixed_defect <50)
      (31 female atyp_angina 100 219 f st_t_wave_abnormality 150 no 0 ? ? ? <50)
      (32 female atyp_angina 105 198 f normal 165 no 0 ? ? ? <50)
      (32 male atyp_angina 110 225 f normal 184 no 0 ? ? ? <50)
      (32 male atyp_angina 125 254 f normal 155 no 0 ? ? ? <50)
      (33 male non_anginal 120 298 f normal 185 no 0 ? ? ? <50)
      (34 female atyp_angina 130 161 f normal 190 no 0 ? ? ? <50)
      (34 male atyp_angina 150 214 f st_t_wave_abnormality 168 no 0 ? ? ? <50)
      (34 male atyp_angina 98 220 f normal 150 no 0 ? ? ? <50)
      (35 female typ_angina 120 160 f st_t_wave_abnormality 185 no 0 ? ? ? <50)
      (35 female asympt 140 167 f normal 150 no 0 ? ? ? <50)
      (35 male atyp_angina 120 308 f left_vent_hyper 180 no 0 ? ? ? <50)
      (35 male atyp_angina 150 264 f normal 168 no 0 ? ? ? <50)
      (36 male atyp_angina 120 166 f normal 180 no 0 ? ? ? <50)
      (36 male non_anginal 112 340 f normal 184 no 1 flat ? normal <50)
      (36 male non_anginal 130 209 f normal 178 no 0 ? ? ? <50)
      (36 male non_anginal 150 160 f normal 172 no 0 ? ? ? <50)
      (37 female atyp_angina 120 260 f normal 130 no 0 ? ? ? <50)
      (37 female non_anginal 130 211 f normal 142 no 0 ? ? ? <50)
      (37 female asympt 130 173 f st_t_wave_abnormality 184 no 0 ? ? ? <50)
      (37 male atyp_angina 130 283 f st_t_wave_abnormality 98 no 0 ? ? ? <50)
      (37 male non_anginal 130 194 f normal 150 no 0 ? ? ? <50)
      (37 male asympt 120 223 f normal 168 no 0 ? ? normal <50)
      (37 male asympt 130 315 f normal 158 no 0 ? ? ? <50)
      (38 female atyp_angina 120 275 ? normal 129 no 0 ? ? ? <50)
      (38 male atyp_angina 140 297 f normal 150 no 0 ? ? ? <50)
      (38 male non_anginal 145 292 f normal 130 no 0 ? ? ? <50)
      (39 female non_anginal 110 182 f st_t_wave_abnormality 180 no 0 ? ? ? <50)
      (39 male atyp_angina 120 ? f st_t_wave_abnormality 146 no 2 up ? ? <50)
      (39 male atyp_angina 120 200 f normal 160 yes 1 flat ? ? <50)
      (39 male atyp_angina 120 204 f normal 145 no 0 ? ? ? <50)
      (39 male atyp_angina 130 ? f normal 120 no 0 ? ? ? <50)
      (39 male atyp_angina 190 241 f normal 106 no 0 ? ? ? <50)
      (39 male non_anginal 120 339 f normal 170 no 0 ? ? ? <50)
      (39 male non_anginal 160 147 t normal 160 no 0 ? ? ? <50)
      (39 male asympt 110 273 f normal 132 no 0 ? ? ? <50)
      (39 male asympt 130 307 f normal 140 no 0 ? ? ? <50)
      (40 male atyp_angina 130 275 f normal 150 no 0 ? ? ? <50)
      (40 male atyp_angina 140 289 f normal 172 no 0 ? ? ? <50)
      (40 male non_anginal 130 215 f normal 138 no 0 ? ? ? <50)
      (40 male non_anginal 130 281 f normal 167 no 0 ? ? ? <50)
      (40 male non_anginal 140 ? f normal 188 no 0 ? ? ? <50)
      (41 female atyp_angina 110 250 f st_t_wave_abnormality 142 no 0 ? ? ? <50)
      (41 female atyp_angina 125 184 f normal 180 no 0 ? ? ? <50)
      (41 female atyp_angina 130 245 f normal 150 no 0 ? ? ? <50)
      (41 male atyp_angina 120 291 f st_t_wave_abnormality 160 no 0 ? ? ? <50)
      (41 male atyp_angina 120 295 f normal 170 no 0 ? ? ? <50)
      (41 male atyp_angina 125 269 f normal 144 no 0 ? ? ? <50)
      (41 male asympt 112 250 f normal 142 no 0 ? ? ? <50)
      (42 female non_anginal 115 211 f st_t_wave_abnormality 137 no 0 ? ? ? <50)
      (42 male atyp_angina 120 196 f normal 150 no 0 ? ? ? <50)
      (42 male atyp_angina 120 198 f normal 155 no 0 ? ? ? <50)
      (42 male atyp_angina 150 268 f normal 136 no 0 ? ? ? <50)
      (42 male non_anginal 120 228 f normal 152 yes 1.5 flat ? ? <50)
      (42 male non_anginal 160 147 f normal 146 no 0 ? ? ? <50)
      (42 male asympt 140 358 f normal 170 no 0 ? ? ? <50)
      (43 female typ_angina 100 223 f normal 142 no 0 ? ? ? <50)
      (43 female atyp_angina 120 201 f normal 165 no 0 ? ? ? <50)
      (43 female atyp_angina 120 215 f st_t_wave_abnormality 175 no 0 ? ? ? <50)
      (43 female atyp_angina 120 249 f st_t_wave_abnormality 176 no 0 ? ? ? <50)
      (43 female atyp_angina 120 266 f normal 118 no 0 ? ? ? <50)
      (43 female atyp_angina 150 186 f normal 154 no 0 ? ? ? <50)
      (43 female non_anginal 150 ? f normal 175 no 0 ? ? normal <50)
      (43 male atyp_angina 142 207 f normal 138 no 0 ? ? ? <50)
      (44 female asympt 120 218 f st_t_wave_abnormality 115 no 0 ? ? ? <50)
      (44 male atyp_angina 120 184 f normal 142 no 1 flat ? ? <50)
      (44 male atyp_angina 130 215 f normal 135 no 0 ? ? ? <50)
      (44 male asympt 150 412 f normal 170 no 0 ? ? ? <50)
      (45 female atyp_angina 130 237 f normal 170 no 0 ? ? ? <50)
      (45 female atyp_angina 180 ? f normal 180 no 0 ? ? ? <50)
      (45 female asympt 132 297 f normal 144 no 0 ? ? ? <50)
      (45 male atyp_angina 140 224 t normal 122 no 0 ? ? ? <50)
      (45 male non_anginal 135 ? f normal 110 no 0 ? ? ? <50)
      (45 male asympt 120 225 f normal 140 no 0 ? ? ? <50)
      (45 male asympt 140 224 f normal 144 no 0 ? ? ? <50)
      (46 female asympt 130 238 f normal 90 no 0 ? ? ? <50)
      (46 male atyp_angina 140 275 f normal 165 yes 0 ? ? ? <50)
      (46 male non_anginal 120 230 f normal 150 no 0 ? ? ? <50)
      (46 male non_anginal 150 163 ? normal 116 no 0 ? ? ? <50)
      (46 male asympt 110 238 f st_t_wave_abnormality 140 yes 1 flat ? normal <50)
      (46 male asympt 110 240 f st_t_wave_abnormality 140 no 0 ? ? normal <50)
      (46 male asympt 180 280 f st_t_wave_abnormality 120 no 0 ? ? ? <50)
      (47 female atyp_angina 140 257 f normal 135 no 1 up ? ? <50)
      (47 female non_anginal 130 ? f normal 145 no 2 flat ? ? <50)
      (47 male typ_angina 110 249 f normal 150 no 0 ? ? ? <50)
      (47 male atyp_angina 160 263 f normal 174 no 0 ? ? ? <50)
      (47 male asympt 140 276 t normal 125 yes 0 ? ? ? <50)
      (48 female atyp_angina ? 308 f st_t_wave_abnormality ? ? 2 up ? ? <50)
      (48 female atyp_angina 120 ? t st_t_wave_abnormality 148 no 0 ? ? ? <50)
      (48 female atyp_angina 120 284 f normal 120 no 0 ? ? ? <50)
      (48 female non_anginal 120 195 f normal 125 no 0 ? ? ? <50)
      (48 female asympt 108 163 f normal 175 no 2 up ? ? <50)
      (48 female asympt 120 254 f st_t_wave_abnormality 110 no 0 ? ? ? <50)
      (48 female asympt 150 227 f normal 130 yes 1 flat ? ? <50)
      (48 male atyp_angina 100 ? f normal 100 no 0 ? ? ? <50)
      (48 male atyp_angina 130 245 f normal 160 no 0 ? ? ? <50)
      (48 male atyp_angina 140 238 f normal 118 no 0 ? ? ? <50)
      (48 male non_anginal 110 211 f normal 138 no 0 ? ? fixed_defect <50)
      (49 female atyp_angina 110 ? f normal 160 no 0 ? ? ? <50)
      (49 female atyp_angina 110 ? f normal 160 no 0 ? ? ? <50)
      (49 female atyp_angina 124 201 f normal 164 no 0 ? ? ? <50)
      (49 female non_anginal 130 207 f st_t_wave_abnormality 135 no 0 ? ? ? <50)
      (49 male atyp_angina 100 253 f normal 174 no 0 ? ? ? <50)
      (49 male non_anginal 140 187 f normal 172 no 0 ? ? ? <50)
      (49 male asympt 120 297 ? normal 132 no 1 flat ? ? <50)
      (49 male asympt 140 ? f normal 130 no 0 ? ? ? <50)
      (50 female atyp_angina 110 202 f normal 145 no 0 ? ? ? <50)
      (50 female asympt 120 328 f normal 110 yes 1 flat ? ? <50)
      (50 male atyp_angina 120 168 f normal 160 no 0 ? 0 ? <50)
      (50 male atyp_angina 140 216 f normal 170 no 0 ? ? normal <50)
      (50 male atyp_angina 170 209 f st_t_wave_abnormality 116 no 0 ? ? ? <50)
      (50 male asympt 140 129 f normal 135 no 0 ? ? ? <50)
      (50 male asympt 150 215 f normal 140 yes 0 ? ? ? <50)
      (51 female atyp_angina 160 194 f normal 170 no 0 ? ? ? <50)
      (51 female non_anginal 110 190 f normal 120 no 0 ? ? ? <50)
      (51 female non_anginal 130 220 f normal 160 yes 2 up ? ? <50)
      (51 female non_anginal 150 200 f normal 120 no 0.5 up ? ? <50)
      (51 male atyp_angina 125 188 f normal 145 no 0 ? ? ? <50)
      (51 male atyp_angina 130 224 f normal 150 no 0 ? ? ? <50)
      (51 male asympt 130 179 f normal 100 no 0 ? ? reversable_defect <50)
      (52 female atyp_angina 120 210 f normal 148 no 0 ? ? ? <50)
      (52 female atyp_angina 140 ? f normal 140 no 0 ? ? ? <50)
      (52 female non_anginal 125 272 f normal 139 no 0 ? ? ? <50)
      (52 female asympt 130 180 f normal 140 yes 1.5 flat ? ? <50)
      (52 male atyp_angina 120 284 f normal 118 no 0 ? ? ? <50)
      (52 male atyp_angina 140 100 f normal 138 yes 0 ? ? ? <50)
      (52 male atyp_angina 160 196 f normal 165 no 0 ? ? ? <50)
      (52 male non_anginal 140 259 f st_t_wave_abnormality 170 no 0 ? ? ? <50)
      (53 female atyp_angina 113 468 ? normal 127 no 0 ? ? ? <50)
      (53 female atyp_angina 140 216 f normal 142 yes 2 flat ? ? <50)
      (53 female non_anginal 120 274 f normal 130 no 0 ? ? ? <50)
      (53 male atyp_angina 120 ? f normal 132 no 0 ? ? ? <50)
      (53 male atyp_angina 140 320 f normal 162 no 0 ? ? ? <50)
      (53 male non_anginal 120 195 f normal 140 no 0 ? ? ? <50)
      (53 male asympt 124 260 f st_t_wave_abnormality 112 yes 3 flat ? ? <50)
      (53 male asympt 130 182 f normal 148 no 0 ? ? ? <50)
      (53 male asympt 140 243 f normal 155 no 0 ? ? ? <50)
      (54 female atyp_angina 120 221 f normal 138 no 1 up ? ? <50)
      (54 female atyp_angina 120 230 t normal 140 no 0 ? ? ? <50)
      (54 female atyp_angina 120 273 f normal 150 no 1.5 flat ? ? <50)
      (54 female atyp_angina 130 253 f st_t_wave_abnormality 155 no 0 ? ? ? <50)
      (54 female atyp_angina 140 309 ? st_t_wave_abnormality 140 no 0 ? ? ? <50)
      (54 female atyp_angina 150 230 f normal 130 no 0 ? ? ? <50)
      (54 female atyp_angina 160 312 f normal 130 no 0 ? ? ? <50)
      (54 male typ_angina 120 171 f normal 137 no 2 up ? ? <50)
      (54 male atyp_angina 110 208 f normal 142 no 0 ? ? ? <50)
      (54 male atyp_angina 120 238 f normal 154 no 0 ? ? ? <50)
      (54 male atyp_angina 120 246 f normal 110 no 0 ? ? ? <50)
      (54 male atyp_angina 160 195 f st_t_wave_abnormality 130 no 1 up ? ? <50)
      (54 male atyp_angina 160 305 f normal 175 no 0 ? ? ? <50)
      (54 male non_anginal 120 217 f normal 137 no 0 ? ? ? <50)
      (54 male non_anginal 150 ? f normal 122 no 0 ? ? ? <50)
      (54 male asympt 150 365 f st_t_wave_abnormality 134 no 1 up ? ? <50)
      (55 female atyp_angina 110 344 f st_t_wave_abnormality 160 no 0 ? ? ? <50)
      (55 female atyp_angina 122 320 f normal 155 no 0 ? ? ? <50)
      (55 female atyp_angina 130 394 f left_vent_hyper 150 no 0 ? ? ? <50)
      (55 male atyp_angina 120 256 t normal 137 no 0 ? ? reversable_defect <50)
      (55 male atyp_angina 140 196 f normal 150 no 0 ? ? reversable_defect <50)
      (55 male atyp_angina 145 326 f normal 155 no 0 ? ? ? <50)
      (55 male non_anginal 110 277 f normal 160 no 0 ? ? ? <50)
      (55 male non_anginal 120 220 f left_vent_hyper 134 no 0 ? ? ? <50)
      (55 male asympt 120 270 f normal 140 no 0 ? ? ? <50)
      (55 male asympt 140 229 f normal 110 yes 0.5 flat ? ? <50)
      (56 female non_anginal 130 219 ? st_t_wave_abnormality 164 no 0 ? ? reversable_defect <50)
      (56 male atyp_angina 130 184 f normal 100 no 0 ? ? ? <50)
      (56 male non_anginal 130 ? f normal 114 no 0 ? ? ? <50)
      (56 male non_anginal 130 276 f normal 128 yes 1 up ? fixed_defect <50)
      (56 male asympt 120 85 f normal 140 no 0 ? ? ? <50)
      (57 female typ_angina 130 308 f normal 98 no 1 flat ? ? <50)
      (57 female asympt 180 347 f st_t_wave_abnormality 126 yes 0.8 flat ? ? <50)
      (57 male atyp_angina 140 260 t normal 140 no 0 ? ? fixed_defect <50)
      (58 male atyp_angina 130 230 f normal 150 no 0 ? ? ? <50)
      (58 male atyp_angina 130 251 f normal 110 no 0 ? ? ? <50)
      (58 male non_anginal 140 179 f normal 160 no 0 ? ? ? <50)
      (58 male asympt 135 222 f normal 100 no 0 ? ? ? <50)
      (59 female atyp_angina 130 188 f normal 124 no 1 flat ? ? <50)
      (59 male atyp_angina 140 287 f normal 150 no 0 ? ? ? <50)
      (59 male non_anginal 130 318 f normal 120 yes 1 flat ? normal <50)
      (59 male non_anginal 180 213 f normal 100 no 0 ? ? ? <50)
      (59 male asympt 140 ? f normal 140 no 0 ? 0 ? <50)
      (60 male non_anginal 120 246 f left_vent_hyper 135 no 0 ? ? ? <50)
      (61 female asympt 130 294 f st_t_wave_abnormality 120 yes 1 flat ? ? <50)
      (61 male asympt 125 292 f st_t_wave_abnormality 115 yes 0 ? ? ? <50)
      (62 female typ_angina 160 193 f normal 116 no 0 ? ? ? <50)
      (62 male atyp_angina 140 271 f normal 152 no 1 up ? ? <50)
      (31 male asympt 120 270 f normal 153 yes 1.5 flat ? ? >50_1)
      (33 female asympt 100 246 f normal 150 yes 1 flat ? ? >50_1)
      (34 male typ_angina 140 156 f normal 180 no 0 ? ? ? >50_1)
      (35 male atyp_angina 110 257 f normal 140 no 0 ? ? ? >50_1)
      (36 male atyp_angina 120 267 f normal 160 no 3 flat ? ? >50_1)
      (37 male asympt 140 207 f normal 130 yes 1.5 flat ? ? >50_1)
      (38 male asympt 110 196 f normal 166 no 0 ? ? ? >50_1)
      (38 male asympt 120 282 f normal 170 no 0 ? ? ? >50_1)
      (38 male asympt 92 117 f normal 134 yes 2.5 flat ? ? >50_1)
      (40 male asympt 120 466 ? normal 152 yes 1 flat ? fixed_defect >50_1)
      (41 male asympt 110 289 f normal 170 no 0 ? ? fixed_defect >50_1)
      (41 male asympt 120 237 ? normal 138 yes 1 flat ? ? >50_1)
      (43 male asympt 150 247 f normal 130 yes 2 flat ? ? >50_1)
      (46 male asympt 110 202 f normal 150 yes 0 ? ? ? >50_1)
      (46 male asympt 118 186 f normal 124 no 0 ? ? reversable_defect >50_1)
      (46 male asympt 120 277 f normal 125 yes 1 flat ? ? >50_1)
      (47 male non_anginal 140 193 f normal 145 yes 1 flat ? ? >50_1)
      (47 male asympt 150 226 f normal 98 yes 1.5 flat 0 reversable_defect >50_1)
      (48 male asympt 106 263 t normal 110 no 0 ? ? ? >50_1)
      (48 male asympt 120 260 f normal 115 no 2 flat ? ? >50_1)
      (48 male asympt 160 268 f normal 103 yes 1 flat ? ? >50_1)
      (49 female non_anginal 160 180 f normal 156 no 1 flat ? ? >50_1)
      (49 male non_anginal 115 265 f normal 175 no 0 ? ? ? >50_1)
      (49 male asympt 130 206 f normal 170 no 0 ? ? ? >50_1)
      (50 female non_anginal 140 288 f normal 140 yes 0 ? ? reversable_defect >50_1)
      (50 male asympt 145 264 f normal 150 no 0 ? ? ? >50_1)
      (51 female asympt 160 303 f normal 150 yes 1 flat ? ? >50_1)
      (52 male asympt 130 225 f normal 120 yes 2 flat ? ? >50_1)
      (54 male asympt 125 216 f normal 140 no 0 ? ? ? >50_1)
      (54 male asympt 125 224 f normal 122 no 2 flat ? ? >50_1)
      (55 male asympt 140 201 f normal 130 yes 3 flat ? ? >50_1)
      (57 male atyp_angina 140 265 f st_t_wave_abnormality 145 yes 1 flat ? ? >50_1)
      (58 male non_anginal 130 213 f st_t_wave_abnormality 140 no 0 ? ? fixed_defect >50_1)
      (59 female asympt 130 338 t st_t_wave_abnormality 130 yes 1.5 flat ? ? >50_1)
      (60 male asympt 100 248 f normal 125 no 1 flat ? ? >50_1)
      (63 male asympt 150 223 f normal 115 no 0 ? ? ? >50_1)
      (65 male asympt 140 306 t normal 87 yes 1.5 flat ? ? >50_1)
      (32 male asympt 118 529 f normal 130 no 0 ? ? ? >50_1)
      (38 male asympt 110 ? f normal 150 yes 1 flat ? ? >50_1)
      (39 male asympt 110 280 f normal 150 no 0 ? ? fixed_defect >50_1)
      (40 female asympt 150 392 f normal 130 no 2 flat ? fixed_defect >50_1)
      (43 male typ_angina 120 291 f st_t_wave_abnormality 155 no 0 ? ? ? >50_1)
      (45 male asympt 130 219 f st_t_wave_abnormality 130 yes 1 flat ? ? >50_1)
      (46 male asympt 120 231 f normal 115 yes 0 ? ? ? >50_1)
      (46 male asympt 130 222 f normal 112 no 0 ? ? ? >50_1)
      (48 male asympt 122 275 t st_t_wave_abnormality 150 yes 2 down ? ? >50_1)
      (48 male asympt 160 193 f normal 102 yes 3 flat ? ? >50_1)
      (48 male asympt 160 329 f normal 92 yes 1.5 flat ? ? >50_1)
      (48 male asympt 160 355 f normal 99 yes 2 flat ? ? >50_1)
      (50 male asympt 130 233 f normal 121 yes 2 flat ? reversable_defect >50_1)
      (52 male asympt 120 182 f normal 150 no 0 ? ? ? >50_1)
      (52 male asympt 170 ? f normal 126 yes 1.5 flat ? ? >50_1)
      (53 male asympt 120 246 f normal 116 yes 0 ? ? ? >50_1)
      (54 male non_anginal 120 237 f normal 150 yes 1.5 ? ? reversable_defect >50_1)
      (54 male asympt 130 242 f normal 91 yes 1 flat ? ? >50_1)
      (54 male asympt 130 603 t normal 125 yes 1 flat ? ? >50_1)
      (54 male asympt 140 ? f normal 118 yes 0 ? ? ? >50_1)
      (54 male asympt 200 198 f normal 142 yes 2 flat ? ? >50_1)
      (55 male asympt 140 268 f normal 128 yes 1.5 flat ? ? >50_1)
      (56 male asympt 150 213 t normal 125 yes 1 flat ? ? >50_1)
      (57 male asympt 150 255 f normal 92 yes 3 flat ? ? >50_1)
      (58 male non_anginal 160 211 t st_t_wave_abnormality 92 no 0 ? ? ? >50_1)
      (58 male asympt 130 263 f normal 140 yes 2 flat ? ? >50_1)
      (41 male asympt 130 172 f st_t_wave_abnormality 130 no 2 flat ? ? >50_1)
      (43 male asympt 120 175 f normal 120 yes 1 flat ? reversable_defect >50_1)
      (44 male atyp_angina 150 288 f normal 150 yes 3 flat ? ? >50_1)
      (44 male asympt 130 290 f normal 100 yes 2 flat ? ? >50_1)
      (46 male typ_angina 140 272 t normal 175 no 2 flat ? ? >50_1)
      (47 female non_anginal 135 248 t normal 170 no 0 ? ? ? >50_1)
      (48 female asympt 138 214 f normal 108 yes 1.5 flat ? ? >50_1)
      (49 male asympt 130 341 f normal 120 yes 1 flat ? ? >50_1)
      (49 male asympt 140 234 f normal 140 yes 1 flat ? ? >50_1)
      (51 male non_anginal 135 160 f normal 150 no 2 flat ? ? >50_1)
      (52 male asympt 112 342 f st_t_wave_abnormality 96 yes 1 flat ? ? >50_1)
      (52 male asympt 130 298 f normal 110 yes 1 flat ? ? >50_1)
      (52 male asympt 140 404 f normal 124 yes 2 flat ? ? >50_1)
      (52 male asympt 160 246 f st_t_wave_abnormality 82 yes 4 flat ? ? >50_1)
      (53 male non_anginal 145 518 f normal 130 no 0 ? ? ? >50_1)
      (53 male asympt 180 285 f st_t_wave_abnormality 120 yes 1.5 flat ? ? >50_1)
      (54 male asympt 140 216 f normal 105 no 1.5 flat ? ? >50_1)
      (55 male typ_angina 140 295 f ? 136 no 0 ? ? ? >50_1)
      (55 male atyp_angina 160 292 t normal 143 yes 2 flat ? ? >50_1)
      (55 male asympt 145 248 f normal 96 yes 2 flat ? ? >50_1)
      (56 female atyp_angina 120 279 f normal 150 no 1 flat ? ? >50_1)
      (56 male asympt 150 230 f st_t_wave_abnormality 124 yes 1.5 flat ? ? >50_1)
      (56 male asympt 170 388 f st_t_wave_abnormality 122 yes 2 flat ? ? >50_1)
      (58 male atyp_angina 136 164 f st_t_wave_abnormality 99 yes 2 flat ? ? >50_1)
      (59 male asympt 130 ? f normal 125 no 0 ? ? ? >50_1)
      (59 male asympt 140 264 t left_vent_hyper 119 yes 0 ? ? ? >50_1)
      (65 male asympt 170 263 t normal 112 yes 2 flat ? ? >50_1)
      (66 male asympt 140 ? f normal 94 yes 1 flat ? ? >50_1)
      (41 male asympt 120 336 f normal 118 yes 3 flat ? ? >50_1)
      (43 male asympt 140 288 f normal 135 yes 2 flat ? ? >50_1)
      (44 male asympt 135 491 f normal 135 no 0 ? ? ? >50_1)
      (47 female asympt 120 205 f normal 98 yes 2 flat ? fixed_defect >50_1)
      (47 male asympt 160 291 f st_t_wave_abnormality 158 yes 3 flat ? ? >50_1)
      (49 male asympt 128 212 f normal 96 yes 0 ? ? ? >50_1)
      (49 male asympt 150 222 f normal 122 no 2 flat ? ? >50_1)
      (50 male asympt 140 231 f st_t_wave_abnormality 140 yes 5 flat ? ? >50_1)
      (50 male asympt 140 341 f st_t_wave_abnormality 125 yes 2.5 flat ? ? >50_1)
      (52 male asympt 140 266 f normal 134 yes 2 flat ? ? >50_1)
      (52 male asympt 160 331 f normal 94 yes 2.5 ? ? ? >50_1)
      (54 female non_anginal 130 294 f st_t_wave_abnormality 100 yes 0 flat ? ? >50_1)
      (56 male asympt 155 342 t normal 150 yes 3 flat ? ? >50_1)
      (58 female atyp_angina 180 393 f normal 110 yes 1 flat ? reversable_defect >50_1)
      (65 male asympt 130 275 f st_t_wave_abnormality 115 yes 1 flat ? ? >50_1)
      )))
