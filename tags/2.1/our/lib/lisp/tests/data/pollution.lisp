;% Data from StatLib (ftp stat.cmu.edu/datasets)
;%
;% This is the pollution data so loved by writers of papers on ridge regression.
;% Source: McDonald, G.C. and Schwing, R.C. (1973) 'Instabilities of regression
;% estimates relating air pollution to mortality', Technometrics, vol.15, 463-
;% 482.
;% Variables in order:
;% PREC   Average annual precipitation in inches
;% JANT   Average January temperature in degrees F
;% JULT   Same for July
;% OVR65  % of 1960 SMSA population aged 65 or older
;% POPN   Average household size
;% EDUC   Median school years completed by those over 22
;% HOUS   % of housing units which are sound & with all facilities
;% DENS   Population per sq. mile in urbanized areas, 1960
;% NONW   % non-white population in urbanized areas, 1960
;% WWDRK  % employed in white collar occupations
;% POOR   % of families with income < $3000
;% HC     Relative hydrocarbon pollution potential
;% NOX    Same for nitric oxides
;% SO@    Same for sulphur dioxide
;% HUMID  Annual average % relative humidity at 1pm
;% MORT   Total age-adjusted mortality rate per 100,000
(defun pollution ()
  (data
    :name 'pollution
    :columns '(PREC JANT JULT OVR65 POPN EDUC HOUS DENS NONW WWDRK POOR HC NOX SO@ HUMID MORT)
    :egs
    '(
      (36.0 27.0 71.0 8.1 3.34 11.4 81.5 3243.0 8.8 42.6 11.7 21.0 15.0 59.0 59.0 921.870)
      (35.0 23.0 72.0 11.1 3.14 11.0 78.8 4281.0 3.5 50.7 14.4 8.0 10.0 39.0 57.0 997.875)
      (44.0 29.0 74.0 10.4 3.21 9.8 81.6 4260.0 0.8 39.4 12.4 6.0 6.0 33.0 54.0 962.354)
      (47.0 45.0 79.0 6.5 3.41 11.1 77.5 3125.0 27.1 50.2 20.6 18.0 8.0 24.0 56.0 982.291)
      (43.0 35.0 77.0 7.6 3.44 9.6 84.6 6441.0 24.4 43.7 14.3 43.0 38.0 206.0 55.0 1071.289)
      (53.0 45.0 80.0 7.7 3.45 10.2 66.8 3325.0 38.5 43.1 25.5 30.0 32.0 72.0 54.0 1030.380)
      (43.0 30.0 74.0 10.9 3.23 12.1 83.9 4679.0 3.5 49.2 11.3 21.0 32.0 62.0 56.0 934.700)
      (45.0 30.0 73.0 9.3 3.29 10.6 86.0 2140.0 5.3 40.4 10.5 6.0 4.0 4.0 56.0 899.529)
      (36.0 24.0 70.0 9.0 3.31 10.5 83.2 6582.0 8.1 42.5 12.6 18.0 12.0 37.0 61.0 1001.902)
      (36.0 27.0 72.0 9.5 3.36 10.7 79.3 4213.0 6.7 41.0 13.2 12.0 7.0 20.0 59.0 912.347)
      (52.0 42.0 79.0 7.7 3.39 9.6 69.2 2302.0 22.2 41.3 24.2 18.0 8.0 27.0 56.0 1017.613)
      (33.0 26.0 76.0 8.6 3.20 10.9 83.4 6122.0 16.3 44.9 10.7 88.0 63.0 278.0 58.0 1024.885)
      (40.0 34.0 77.0 9.2 3.21 10.2 77.0 4101.0 13.0 45.7 15.1 26.0 26.0 146.0 57.0 970.467)
      (35.0 28.0 71.0 8.8 3.29 11.1 86.3 3042.0 14.7 44.6 11.4 31.0 21.0 64.0 60.0 985.950)
      (37.0 31.0 75.0 8.0 3.26 11.9 78.4 4259.0 13.1 49.6 13.9 23.0 9.0 15.0 58.0 958.839)
      (35.0 46.0 85.0 7.1 3.22 11.8 79.9 1441.0 14.8 51.2 16.1 1.0 1.0 1.0 54.0 860.101)
      (36.0 30.0 75.0 7.5 3.35 11.4 81.9 4029.0 12.4 44.0 12.0 6.0 4.0 16.0 58.0 936.234)
      (15.0 30.0 73.0 8.2 3.15 12.2 84.2 4824.0 4.7 53.1 12.7 17.0 8.0 28.0 38.0 871.766)
      (31.0 27.0 74.0 7.2 3.44 10.8 87.0 4834.0 15.8 43.5 13.6 52.0 35.0 124.0 59.0 959.221)
      (30.0 24.0 72.0 6.5 3.53 10.8 79.5 3694.0 13.1 33.8 12.4 11.0 4.0 11.0 61.0 941.181)
      (31.0 45.0 85.0 7.3 3.22 11.4 80.7 1844.0 11.5 48.1 18.5 1.0 1.0 1.0 53.0 891.708)
      (31.0 24.0 72.0 9.0 3.37 10.9 82.8 3226.0 5.1 45.2 12.3 5.0 3.0 10.0 61.0 871.338)
      (42.0 40.0 77.0 6.1 3.45 10.4 71.8 2269.0 22.7 41.4 19.5 8.0 3.0 5.0 53.0 971.122)
      (43.0 27.0 72.0 9.0 3.25 11.5 87.1 2909.0 7.2 51.6  9.5 7.0 3.0 10.0 56.0 887.466)
      (46.0 55.0 84.0 5.6 3.35 11.4 79.7 2647.0 21.0 46.9 17.9 6.0 5.0 1.0 59.0 952.529)
      (39.0 29.0 75.0 8.7 3.23 11.4 78.6 4412.0 15.6 46.6 13.2 13.0 7.0 33.0 60.0 968.665)
      (35.0 31.0 81.0 9.2 3.10 12.0 78.3 3262.0 12.6 48.6 13.9 7.0 4.0 4.0 55.0 919.729)
      (43.0 32.0 74.0 10.1 3.38 9.5 79.2 3214.0 2.9 43.7 12.0 11.0 7.0 32.0 54.0 844.053)
      (11.0 53.0 68.0 9.2 2.99 12.1 90.6 4700.0 7.8 48.9 12.3 648.0 319.0 130.0 47.0 861.833)
      (30.0 35.0 71.0 8.3 3.37 9.9 77.4 4474.0 13.1 42.6 17.7 38.0 37.0 193.0 57.0 989.265)
      (50.0 42.0 82.0 7.3 3.49 10.4 72.5 3497.0 36.7 43.3 26.4 15.0 18.0 34.0 59.0 1006.490)
      (60.0 67.0 82.0 10.0 2.98 11.5 88.6 4657.0 13.5 47.3 22.4 3.0 1.0 1.0 60.0 861.439)
      (30.0 20.0 69.0 8.8 3.26 11.1 85.4 2934.0 5.8 44.0  9.4 33.0 23.0 125.0 64.0 929.150)
      (25.0 12.0 73.0 9.2 3.28 12.1 83.1 2095.0 2.0 51.9  9.8 20.0 11.0 26.0 58.0 857.622)
      (45.0 40.0 80.0 8.3 3.32 10.1 70.3 2682.0 21.0 46.1 24.1 17.0 14.0 78.0 56.0 961.009)
      (46.0 30.0 72.0 10.2 3.16 11.3 83.2 3327.0 8.8 45.3 12.2 4.0 3.0 8.0 58.0 923.234)
      (54.0 54.0 81.0 7.4 3.36 9.7 72.8 3172.0 31.4 45.5 24.2 20.0 17.0 1.0 62.0 1113.156)
      (42.0 33.0 77.0 9.7 3.03 10.7 83.5 7462.0 11.3 48.7 12.4 41.0 26.0 108.0 58.0 994.648)
      (42.0 32.0 76.0 9.1 3.32 10.5 87.5 6092.0 17.5 45.3 13.2 29.0 32.0 161.0 54.0 1015.023)
      (36.0 29.0 72.0 9.5 3.32 10.6 77.6 3437.0 8.1 45.5 13.8 45.0 59.0 263.0 56.0 991.290)
      (37.0 38.0 67.0 11.3 2.99 12.0 81.5 3387.0 3.6 50.3 13.5 56.0 21.0 44.0 73.0 893.991)
      (42.0 29.0 72.0 10.7 3.19 10.1 79.5 3508.0 2.2 38.8 15.7 6.0 4.0 18.0 56.0 938.500)
      (41.0 33.0 77.0 11.2 3.08 9.6 79.9 4843.0 2.7 38.6 14.1 11.0 11.0 89.0 54.0 946.185)
      (44.0 39.0 78.0 8.2 3.32 11.0 79.9 3768.0 28.6 49.5 17.5 12.0 9.0 48.0 53.0 1025.502)
      (32.0 25.0 72.0 10.9 3.21 11.1 82.5 4355.0 5.0 46.4 10.8 7.0 4.0 18.0 60.0 874.281)
      (34.0 32.0 79.0 9.3 3.23 9.7 76.8 5160.0 17.2 45.1 15.3 31.0 15.0 68.0 57.0 953.560)
      (10.0 55.0 70.0 7.3 3.11 12.1 88.9 3033.0 5.9 51.0 14.0 144.0 66.0 20.0 61.0 839.709)
      (18.0 48.0 63.0 9.2 2.92 12.2 87.7 4253.0 13.7 51.2 12.0 311.0 171.0 86.0 71.0 911.701)
      (13.0 49.0 68.0 7.0 3.36 12.2 90.7 2702.0 3.0 51.9  9.7 105.0 32.0 3.0 71.0 790.733)
      (35.0 40.0 64.0 9.6 3.02 12.2 82.5 3626.0 5.7 54.3 10.1 20.0 7.0 20.0 72.0 899.264)
      (45.0 28.0 74.0 10.6 3.21 11.1 82.6 1883.0 3.4 41.9 12.3 5.0 4.0 20.0 56.0 904.155)
      (38.0 24.0 72.0 9.8 3.34 11.4 78.0 4923.0 3.8 50.5 11.1 8.0 5.0 25.0 61.0 950.672)
      (31.0 26.0 73.0 9.3 3.22 10.7 81.3 3249.0 9.5 43.9 13.6 11.0 7.0 25.0 59.0 972.464)
      (40.0 23.0 71.0 11.3 3.28 10.3 73.8 1671.0 2.5 47.4 13.5 5.0 2.0 11.0 60.0 912.202)
      (41.0 37.0 78.0 6.2 3.25 12.3 89.5 5308.0 25.9 59.7 10.3 65.0 28.0 102.0 52.0 967.803)
      (28.0 32.0 81.0 7.0 3.27 12.1 81.0 3665.0 7.5 51.6 13.2 4.0 2.0 1.0 54.0 823.764)
      (45.0 33.0 76.0 7.7 3.39 11.3 82.2 3152.0 12.1 47.3 10.9 14.0 11.0 42.0 56.0 1003.502)
      (45.0 24.0 70.0 11.8 3.25 11.1 79.8 3678.0 1.0 44.8 14.0 7.0 3.0 8.0 56.0 895.696)
      (42.0 33.0 76.0 9.7 3.22 9.0 76.2 9699.0 4.8 42.2 14.5 8.0 8.0 49.0 54.0 911.817)
      (38.0 28.0 72.0 8.9 3.48 10.7 79.8 3451.0 11.7 37.5 13.0 14.0 13.0 39.0 58.0 954.442)
      )))