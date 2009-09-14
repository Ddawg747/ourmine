;% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;%
;% Identifier attribute deleted.
;%
;% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;%
;% NAME:  Sexual activity and the lifespan of male fruitflies
;% TYPE:  Designed (almost factorial) experiment
;% SIZE:  125 observations, 5 variables
;%
;% DESCRIPTIVE ABSTRACT:
;% A cost of increased reproduction in terms of reduced longevity has been
;% shown for female fruitflies, but not for males.  The flies used were an
;% outbred stock.  Sexual activity was manipulated by supplying individual
;% males with one or eight receptive virgin females per day.  The
;% longevity of these males was compared with that of two control types.
;% The first control consisted of two sets of individual males kept with
;% one or eight newly inseminated females.  Newly inseminated females will
;% not usually remate for at least two days, and thus served as a control
;% for any effect of competition with the male for food or space.  The
;% second control was a set of individual males kept with no females.
;% There were 25 males in each of the five groups, which were treated
;% identically in number of anaesthetizations (using CO2) and provision of
;% fresh food medium.
;%
;% SOURCE:
;% Figure 2 in the article "Sexual Activity and the Lifespan of Male
;% Fruitflies" by Linda Partridge and Marion Farquhar.  _Nature_, 294,
;% 580-581, 1981.
;%
;% VARIABLE DESCRIPTIONS:
;% Columns  Variable    Description
;% -------  --------    -----------
;%  1- 2    ID          Serial No. (1-25) within each group of 25
;%                      (the order in which data points were abstracted)
;%
;%  4       PARTNERS    Number of companions (0, 1 or 8)
;%
;%  6       TYPE        Type of companion
;%                        0: newly pregnant female
;%                        1: virgin female
;%                        9: not applicable (when PARTNERS=0)
;%
;%  8- 9    LONGEVITY   Lifespan, in days
;%
;% 11-14    THORAX      Length of thorax, in mm (x.xx)
;%
;% 16-17    SLEEP       Percentage of each day spent sleeping
;%
;%
;% SPECIAL NOTES:
;% `Compliance' of the males in the two experimental groups was documented
;% as follows:  On two days per week throughout the life of each
;% experimental male, the females that had been supplied as virgins to
;% that male were kept and examined for fertile eggs.  The insemination
;% rate declined from approximately 7 females/day at age one week to just
;% under 2/day at age eight weeks in the males supplied with eight virgin
;% females per day, and from just under 1/day at age one week to
;% approximately 0.6/day at age eight weeks in the males supplied with one
;% virgin female per day.  These `compliance' data were not supplied for
;% individual males, but the authors say that "There were no significant
;% differences between the individual males within each experimental
;% group."
;%
;% STORY BEHIND THE DATA:
;% James Hanley found this dataset in _Nature_ and was attracted by the
;% way the raw data were presented in classical analysis of covariance
;% style in Figure 2.  He read the data points from the graphs and brought
;% them to the attention of a colleague with whom he was teaching the
;% applied statistics course.  Dr. Liddell thought that with only three
;% explanatory variables (THORAX, plus PARTNERS and TYPE to describe the
;% five groups), it would not be challenging enough as a data-analysis
;% project.  He suggested adding another variable.  James Hanley added
;% SLEEP, a variable not mentioned in the published article.  Teachers can
;% contact us about the construction of this variable.  (We prefer to
;% divulge the details at the end of the data-analysis project.)
;%
;% Further discussion of the background and pedagogical use of this
;% dataset can be found in Hanley (1983) and in Hanley and Shapiro
;% (1994).  To obtain the Hanley and Shapiro article, send the one-line
;% e-mail message:
;% send jse/v2n1/datasets.hanley
;% to the address archive@jse.stat.ncsu.edu
;%
;% PEDAGOGICAL NOTES:
;% This has been the most successful and the most memorable dataset we
;% have used in an "applications of statistics" course, which we have
;% taught for ten years.  The most common analysis techniques have been
;% analysis of variance, classical analysis of covariance, and multiple
;% regression.  Because the variable THORAX is so strong (it explains
;% about 1/3 of the variance in LONGEVITY), it is important to consider it
;% to increase the precision of between-group contrasts.  When students
;% first check and find that the distributions of thorax length, and in
;% particular, the mean thorax length, are very similar in the different
;% groups, many of them are willing to say (in epidemiological
;% terminology) that THORAX is not a confounding variable, and that it can
;% be omitted from the analysis.
;%
;% There is usually lively discussion about the primary contrast.  The
;% five groups and their special structure allow opportunities for
;% students to understand and verbalize what we mean by the term
;% "statistical interaction."
;%
;% There is also much debate as to whether one should take the SLEEP
;% variable into account.  Some students say that it is an `intermediate'
;% variable.  Some students formally test the mean level of SLEEP across
;% groups, find one pair where there is a statistically significant
;% difference, and want to treat it as a confounding variable.  A few
;% students muse about how it was measured.
;%
;% There is heteroscedasticity in the LONGEVITY variable.
;%
;% One very observant student (now a professor) argued that THORAX cannot
;% be used as a predictor or explanatory variable for the LONGEVITY
;% outcome since fruitflies who die young may not be fully grown, i.e., it
;% is also an intermediate variable.  One Ph.D. student who had studied
;% entomology assured us that fruitflies do not grow longer after birth;
;% therefore, the THORAX length is not time-dependent!
;%
;% Curiously, the dataset has seldom been analyzed using techniques from
;% survival analysis.  The fact that there are no censored observations is
;% not really an excuse, and one could easily devise a way to introduce
;% censoring of LONGEVITY.
;%
;% REFERENCES:
;% Hanley, J. A. (1983), "Appropriate Uses of Multivariate Analysis,"
;% _Annual Review of Public Health_, 4, 155-180.
;%
;% Hanley, J. A., and Shapiro, S. H. (1994), "Sexual Activity and the
;% Lifespan of Male Fruitflies:  A Dataset That Gets Attention," _Journal
;% of Statistics Education_, Volume 2, Number 1.
;%
;% SUBMITTED BY:
;% James A. Hanley and Stanley H. Shapiro
;% Department of Epidemiology and Biostatistics
;% McGill University
;% 1020 Pine Avenue West
;% Montreal, Quebec, H3A 1A2
;% Canada
;% tel: +1 (514) 398-6270 (JH)
;%      +1 (514) 398-6272 (SS)
;% fax: +1 (514) 398-4503
;% INJH@musicb.mcgill.ca, StanS@epid.lan.mcgill.ca
;%
(defun fruitfly ()
  (data
    :name 'fruitfly
    :columns '($PARTNERS $TYPE $THORAX $SLEEP $class)
    :egs
    '(
      (8 0 35 0.64 22)
      (8 0 37 0.68 9)
      (8 0 49 0.68 49)
      (8 0 46 0.72 1)
      (8 0 63 0.72 23)
      (8 0 39 0.76 83)
      (8 0 46 0.76 23)
      (8 0 56 0.76 15)
      (8 0 63 0.76 9)
      (8 0 65 0.76 81)
      (8 0 56 0.8 12)
      (8 0 65 0.8 15)
      (8 0 70 0.8 37)
      (8 0 63 0.84 24)
      (8 0 65 0.84 26)
      (8 0 70 0.84 17)
      (8 0 77 0.84 14)
      (8 0 81 0.84 14)
      (8 0 86 0.84 6)
      (8 0 70 0.88 25)
      (8 0 70 0.88 18)
      (8 0 77 0.92 26)
      (8 0 77 0.92 24)
      (8 0 81 0.92 29)
      (8 0 77 0.94 27)
      (0 9 40 0.64 18)
      (0 9 37 0.7 6)
      (0 9 44 0.72 19)
      (0 9 47 0.72 7)
      (0 9 47 0.72 16)
      (0 9 47 0.76 13)
      (0 9 68 0.78 35)
      (0 9 47 0.8 2)
      (0 9 54 0.84 35)
      (0 9 61 0.84 6)
      (0 9 71 0.84 15)
      (0 9 75 0.84 14)
      (0 9 89 0.84 18)
      (0 9 58 0.88 50)
      (0 9 59 0.88 25)
      (0 9 62 0.88 10)
      (0 9 79 0.88 33)
      (0 9 96 0.88 43)
      (0 9 58 0.92 35)
      (0 9 62 0.92 17)
      (0 9 70 0.92 27)
      (0 9 72 0.92 22)
      (0 9 75 0.92 16)
      (0 9 96 0.92 20)
      (0 9 75 0.94 37)
      (1 0 46 0.64 23)
      (1 0 42 0.68 4)
      (1 0 65 0.72 20)
      (1 0 46 0.76 42)
      (1 0 58 0.76 9)
      (1 0 42 0.8 32)
      (1 0 48 0.8 66)
      (1 0 58 0.8 28)
      (1 0 50 0.82 10)
      (1 0 80 0.82 4)
      (1 0 63 0.84 12)
      (1 0 65 0.84 17)
      (1 0 70 0.84 12)
      (1 0 70 0.84 23)
      (1 0 72 0.84 40)
      (1 0 97 0.84 18)
      (1 0 46 0.88 10)
      (1 0 56 0.88 38)
      (1 0 70 0.88 7)
      (1 0 70 0.88 23)
      (1 0 72 0.88 36)
      (1 0 76 0.88 9)
      (1 0 90 0.88 21)
      (1 0 76 0.92 62)
      (1 0 92 0.92 36)
      (1 1 21 0.68 23)
      (1 1 40 0.68 62)
      (1 1 44 0.72 28)
      (1 1 54 0.76 18)
      (1 1 36 0.78 10)
      (1 1 40 0.8 28)
      (1 1 56 0.8 22)
      (1 1 60 0.8 29)
      (1 1 48 0.84 15)
      (1 1 53 0.84 73)
      (1 1 60 0.84 10)
      (1 1 60 0.84 5)
      (1 1 65 0.84 13)
      (1 1 68 0.84 27)
      (1 1 60 0.88 20)
      (1 1 81 0.88 21)
      (1 1 81 0.88 12)
      (1 1 48 0.9 49)
      (1 1 48 0.9 17)
      (1 1 56 0.9 22)
      (1 1 68 0.9 71)
      (1 1 75 0.9 17)
      (1 1 81 0.9 10)
      (1 1 48 0.92 24)
      (1 1 68 0.92 18)
      (8 1 16 0.64 34)
      (8 1 19 0.64 6)
      (8 1 19 0.68 4)
      (8 1 32 0.72 22)
      (8 1 33 0.72 28)
      (8 1 33 0.74 31)
      (8 1 30 0.76 16)
      (8 1 42 0.76 27)
      (8 1 42 0.76 8)
      (8 1 33 0.78 32)
      (8 1 26 0.8 20)
      (8 1 30 0.8 35)
      (8 1 40 0.82 12)
      (8 1 54 0.82 14)
      (8 1 34 0.84 17)
      (8 1 34 0.84 29)
      (8 1 47 0.84 31)
      (8 1 47 0.84 6)
      (8 1 42 0.88 30)
      (8 1 47 0.88 27)
      (8 1 54 0.88 40)
      (8 1 54 0.88 19)
      (8 1 56 0.88 8)
      (8 1 60 0.88 8)
      (8 1 44 0.92 15)
      )))
