#|@relation shared_CM1

@attribute loc               numeric
@attribute v(g)              numeric
@attribute ev(g)             numeric
@attribute iv(g)             numeric
@attribute v                 numeric
@attribute l                 numeric
@attribute d                 numeric
@attribute i                 numeric
@attribute e                 numeric
@attribute b                 numeric
@attribute t                 numeric
@attribute lOCode            numeric
@attribute lOComment         numeric
@attribute locCodeAndComment numeric
@attribute uniq_Op           numeric
@attribute uniq_Opnd         numeric
@attribute total_Op          numeric
@attribute total_Opnd        numeric
@attribute branchCount       numeric
@attribute defects {false) true)}
|#

(defun cm1com ()
  (data
   :name 'cm1com
   :columns '($loc $vg $ivg $v $l $d $e $b $t $lOCode $lOCcomment $locCodeAndComment $uniq_Op $uniq_Opnd $total_Op $total_Opnd $branchCount defects)
   :egs
   '( 
(1.1 1.4 1.4 1.3 1.3 1.3 1.3 1.3 1.3 2 2 2 1.2 1.2 1.2 1.2 1.4 false)
(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 true)
(24 5 3 309.13 0.11 9.5 2936.77 0.1 163.15 1 0 0 15 15 44 19 9 false)
(20 4 2 215.49 0.06 16 3447.89 0.07 191.55 0 0 0 16 8 31 16 7 false)
(24 6 2 346.13 0.06 17.33 5999.58 0.12 333.31 0 0 0 16 12 46 26 11 false)
(24 6 2 346.13 0.06 17.33 5999.58 0.12 333.31 0 0 0 16 12 46 26 11 false)
(7 1 1 34.87 0.5 2 69.74 0.01 3.87 0 0 0 4 5 6 5 1 false)
(12 2 2 94.01 0.16 6.43 604.36 0.03 33.58 0 0 0 10 7 14 9 3 false)
(25 5 5 548.83 0.07 14.25 7820.87 0.18 434.49 12 16 0 15 20 69 38 9 false)
(46 15 1 1362.41 0.04 22.3 30377.95 0.45 1687.66 8 35 0 15 37 129 110 29 false)
(34 5 1 856.15 0.05 20.76 17773.08 0.29 987.39 11 28 0 19 27 96 59 9 false)
(10 2 1 143.06 0.11 9 1287.55 0.05 71.53 2 4 0 9 8 19 16 3 false)
(23 7 1 770.38 0.04 28.12 21659.58 0.26 1203.31 10 17 0 17 13 114 43 13 false)
(23 7 1 474.97 0.04 27.22 12929.85 0.16 718.32 10 17 0 14 9 70 35 13 false)
(31 5 2 1303.73 0.04 27.5 35852.6 0.43 1991.81 2 15 0 22 28 161 70 9 false)
(24 5 2 655.13 0.07 15.2 9958 0.22 553.22 3 20 0 19 25 80 40 9 false)
(13 2 1 271.03 0.11 9.15 2480.95 0.09 137.83 6 5 0 14 13 40 17 3 false)
(6 1 1 55.51 0.25 4 222.03 0.02 12.33 1 1 0 8 5 10 5 1 false)
(33 2 2 745.68 0.09 11.65 8684.99 0.25 482.5 2 0 0 12 34 69 66 3 false)
(6 1 1 55.51 0.25 4 222.03 0.02 12.33 1 1 0 8 5 10 5 1 false)
(7 2 1 105.49 0.08 12 1265.83 0.04 70.32 0 0 0 10 5 15 12 3 false)
(3 1 1 48.43 0.23 4.38 211.89 0.02 11.77 0 0 0 7 4 9 5 1 false)
(7 1 1 110.41 0.21 4.88 538.26 0.04 29.9 0 0 0 6 8 16 13 1 false)
(9 3 1 170.97 0.07 14.14 2417.96 0.06 134.33 0 0 0 11 7 23 18 5 false)
(11 3 1 215.22 0.07 14.67 3156.61 0.07 175.37 0 0 0 12 9 27 22 5 false)
(4 1 1 39 0.33 3 117 0.01 6.5 0 0 0 4 4 7 6 1 false)
(3 1 1 19.65 0.4 2.5 49.13 0.01 2.73 0 0 0 5 2 5 2 1 false)
(16 4 1 370.17 0.05 19.62 7260.95 0.12 403.39 11 30 0 15 13 43 34 7 false)
(65 12 1 3327.01 0.02 42.02 139798.54 1.11 7766.59 5 95 0 19 52 311 230 23 false)
(177 41 23 5580.79 0.02 54.82 305928.62 1.86 16996.03 63 31 0 45 110 499 268 60 false)
(14 5 3 185.47 0.07 15 2781.99 0.06 154.56 4 5 0 15 8 25 16 8 false)
(361 70 46 15345.64 0.01 97.73 1499684.32 5.12 83315.8 37 191 0 69 251 1133 711 110 false)
(76 13 10 1948.67 0.03 32.21 62767.66 0.65 3487.09 3 48 0 36 57 196 102 24 false)
(31 1 1 2653 0.04 22.83 60566.12 0.88 3364.78 0 10 0 13 41 317 144 1 false)
(20 3 3 351.75 0.1 10.29 3620.93 0.12 201.16 0 0 0 14 17 46 25 5 false)
(27 5 3 540 0.05 21.86 11802.86 0.18 655.71 4 5 0 18 14 74 34 9 false)
(15 3 3 260 0.14 7.18 1867.89 0.09 103.77 2 24 0 13 19 31 21 5 false)
(13 4 4 295 0.09 11.03 3253.68 0.1 180.76 3 8 0 15 17 34 25 7 false)
(32 6 6 686.95 0.08 12.89 8852.8 0.23 491.82 5 44 0 17 31 76 47 11 false)
(25 3 3 684.05 0.07 14.11 9649.29 0.23 536.07 2 16 0 19 33 71 49 5 false)
(22 4 4 381.56 0.07 13.42 5120.93 0.13 284.5 5 10 0 15 19 41 34 7 false)
(28 6 4 707.02 0.04 23.1 16332.07 0.24 907.34 5 19 0 21 25 73 55 11 false)
(18 2 2 625.77 0.04 24.42 15282.02 0.21 849 3 18 0 16 19 64 58 3 false)
(24 5 3 1075.51 0.03 39.72 42716.37 0.36 2373.13 2 20 0 21 23 110 87 9 false)
(62 9 6 2002.42 0.05 21.19 42426.35 0.67 2357.02 5 32 0 24 64 197 113 17 false)
(65 12 8 1653.06 0.07 15.19 25107.55 0.55 1394.86 0 34 0 17 61 154 109 23 false)
(8 1 1 181.32 0.14 7 1269.25 0.06 70.51 0 3 0 7 6 37 12 1 false)
(18 4 4 428.6 0.13 7.89 3382.91 0.14 187.94 2 2 0 13 28 46 34 7 false)
(6 1 1 30.88 0.38 2.67 82.35 0.01 4.57 1 2 0 4 3 7 4 1 false)
(48 7 7 1626.95 0.07 14.23 23143.92 0.54 1285.77 4 28 0 20 71 149 101 13 false)
(127 10 10 5334.7 0.04 24.9 132838.37 1.78 7379.91 4 31 0 25 126 486 251 19 false)
(21 4 4 391.73 0.13 7.64 2991.43 0.13 166.19 0 23 0 12 22 49 28 7 false)
(32 2 2 1284 0.05 18.78 24116.87 0.43 1339.83 1 8 0 18 46 118 96 3 false)
(41 6 5 985.76 0.06 17.21 16963.26 0.33 942.4 3 47 0 21 36 110 59 11 false)
(23 5 5 236.84 0.13 7.85 1858.26 0.08 103.24 1 20 0 12 13 34 17 9 false)
(8 2 1 158.12 0.18 5.5 869.68 0.05 48.32 0 6 0 11 10 26 10 3 false)
(25 4 1 475 0.07 15 7125 0.16 395.83 0 8 0 16 16 65 30 7 false)
(8 2 1 39.86 0.27 3.75 149.49 0.01 8.3 1 6 0 6 4 7 5 3 false)
(17 3 3 535.29 0.07 14.57 7799.92 0.18 433.33 2 2 0 17 21 66 36 5 false)
(38 5 5 1047.94 0.05 19.25 20172.82 0.35 1120.71 2 12 0 22 40 106 70 9 false)
(31 5 5 809.39 0.07 14.84 12009.6 0.27 667.2 10 9 0 18 37 79 61 9 false)
(21 4 3 310.34 0.1 10.26 3185.02 0.1 176.95 0 3 0 15 19 35 26 7 false)
(21 4 3 310.34 0.1 10.26 3185.02 0.1 176.95 0 3 0 15 19 35 26 7 false)
(14 2 1 97.67 0.09 11 1074.39 0.03 59.69 0 0 0 10 5 14 11 3 false)
(6 1 1 57.36 0.29 3.5 200.76 0.02 11.15 0 4 0 7 5 11 5 1 false)
(29 5 2 569.35 0.05 20.78 11829.84 0.19 657.21 0 17 0 17 18 67 44 9 false)
(18 3 1 459.04 0.08 12.89 5919.2 0.15 328.84 1 11 0 14 19 56 35 5 false)
(55 11 8 1311.63 0.04 26.83 35190.17 0.44 1955.01 0 8 0 25 41 129 88 21 false)
(47 3 1 937.19 0.06 15.65 14671.27 0.31 815.07 0 39 0 21 55 68 82 5 false)
(32 6 2 498.55 0.04 22.85 11393.4 0.17 632.97 2 14 0 21 17 58 37 11 false)
(32 3 1 3124.36 0.02 53.2 166215.79 1.04 9234.21 3 13 0 16 40 272 266 5 false)
(38 4 1 911.39 0.04 24.28 22126.47 0.3 1229.25 0 11 0 19 27 96 69 6 false)
(14 2 1 260.06 0.14 7.07 1838.97 0.09 102.16 0 0 0 11 14 38 18 3 false)
(60 5 5 2164.46 0.05 22.12 47876.6 0.72 2659.81 9 14 0 26 67 217 114 9 false)
(10 1 1 125.02 0.16 6.13 765.75 0.04 42.54 0 2 0 7 8 18 14 1 false)
(16 3 3 358.2 0.11 9 3223.83 0.12 179.1 10 6 0 12 18 46 27 5 false)
(12 2 2 142.62 0.16 6.11 871.59 0.05 48.42 0 4 0 11 9 23 10 3 false)
(13 2 1 174.17 0.1 9.63 1676.34 0.06 93.13 0 0 0 11 8 27 14 3 false)
(16 2 2 192.57 0.11 9.1 1752.37 0.06 97.35 0 13 0 14 10 29 13 3 false)
(27 4 3 521.73 0.06 18.12 9456.28 0.17 525.35 3 5 0 25 20 66 29 7 false)
(31 5 4 604.1 0.06 17.25 10420.79 0.2 578.93 3 15 0 23 22 77 33 9 false)
(10 1 1 28.07 0.5 2 56.15 0.01 3.12 0 1 0 4 3 7 3 1 false)
(37 5 3 494.94 0.06 16 7919.03 0.16 439.95 2 28 0 20 20 61 32 9 false)
(8 1 1 27 0.4 2.5 67.5 0.01 3.75 0 1 0 5 3 6 3 1 false)
(8 1 1 134.89 0.16 6.19 834.61 0.04 46.37 0 2 0 9 8 22 11 1 false)
(9 1 1 183.48 0.14 7 1284.34 0.06 71.35 1 5 0 9 9 30 14 1 false)
(9 1 1 140.65 0.12 8.25 1160.35 0.05 64.45 0 5 0 9 6 25 11 1 false)
(7 1 1 22.46 0.4 2.5 56.15 0.01 3.12 0 1 0 5 2 6 2 1 false)
(26 4 2 511.82 0.08 13.2 6756.06 0.17 375.34 0 6 0 16 20 66 33 7 false)
(7 1 1 97.67 0.17 6 586.03 0.03 32.56 0 2 0 9 6 17 8 1 false)
(14 1 1 365.32 0.08 13.05 4767.45 0.12 264.86 0 6 0 9 10 57 29 1 false)
(9 1 1 46.51 0.21 4.67 217.03 0.02 12.06 0 0 0 7 3 10 4 1 false)
(11 1 1 82.45 0.14 7 577.18 0.03 32.07 0 0 0 8 4 16 7 1 false)
(34 6 3 745.68 0.08 12.6 9398.15 0.25 522.12 0 8 0 17 29 92 43 11 false)
(7 1 1 34.87 0.29 3.5 122.04 0.01 6.78 0 1 0 7 2 9 2 1 false)
(31 7 5 618.27 0.04 23.5 14529.3 0.21 807.18 2 30 0 15 15 79 47 13 false)
(8 1 1 27 0.4 2.5 67.5 0.01 3.75 0 1 0 5 3 6 3 1 false)
(6 1 1 30 0.33 3 90 0.01 5 0 0 0 6 2 8 2 1 false)
(7 1 1 33.22 0.29 3.5 116.27 0.01 6.46 0 0 0 7 3 7 3 1 false)
(15 2 1 285.29 0.13 7.6 2168.23 0.1 120.46 0 0 0 12 15 41 19 3 false)
(16 1 1 289.51 0.12 8.36 2419.46 0.1 134.41 0 0 0 9 14 38 26 1 false)
(19 1 1 293.44 0.1 9.73 2855.37 0.1 158.63 0 1 0 11 13 41 23 1 false)
(130 29 27 5103 0.02 55.88 285170.84 1.7 15842.82 45 13 0 34 94 420 309 57 false)
(30 4 4 630.73 0.05 20.71 13065.14 0.21 725.84 3 3 0 15 21 64 58 7 false)
(34 6 6 771.67 0.08 12 9260.02 0.26 514.45 4 0 0 12 27 92 54 11 false)
(20 6 2 1299.55 0.02 46 59779.23 0.43 3321.07 1 6 0 23 19 165 76 11 false)
(17 2 1 252.01 0.07 14.38 3622.63 0.08 201.26 0 0 0 15 12 30 23 3 false)
(17 2 1 252.01 0.07 14.38 3622.63 0.08 201.26 0 0 0 15 12 30 23 3 false)
(26 8 1 1125.09 0.04 23.02 25900.42 0.38 1438.91 0 5 0 17 24 145 65 15 false)
(10 1 1 69.74 0.18 5.63 392.28 0.02 21.79 0 0 0 5 4 13 9 1 false)
(6 1 1 36.54 0.33 3 109.62 0.01 6.09 0 0 0 6 4 7 4 1 false)
(8 1 1 30.88 0.38 2.67 82.35 0.01 4.57 0 0 0 4 3 7 4 1 false)
(93 17 6 2692.19 0.02 48.06 129374.54 0.9 7187.47 13 55 0 35 63 234 173 33 false)
(128 25 9 5664.24 0.02 54.33 307757.08 1.89 17097.62 33 58 0 36 108 464 326 49 false)
(28 3 3 551.83 0.09 11.69 6449.49 0.18 358.3 0 11 0 17 24 70 33 5 false)
(19 2 2 312.75 0.11 9.41 2943.55 0.1 163.53 0 3 0 16 17 42 20 3 false)
(19 2 2 282.39 0.11 8.91 2515.03 0.09 139.72 0 3 0 15 16 38 19 3 false)
(21 3 3 298.06 0.12 8.63 2570.73 0.1 142.82 0 2 0 12 16 39 23 5 false)
(154 17 13 5143.61 0.03 38.57 198396.43 1.71 11022.02 20 119 0 36 133 410 285 28 false)
(125 18 13 3131.59 0.02 40.25 126046.47 1.04 7002.58 13 50 0 46 96 270 168 31 false)
(14 2 1 100.08 0.13 7.86 786.33 0.03 43.68 0 1 0 11 7 14 10 3 false)
(127 30 5 4697.07 0.03 36.21 170066.5 1.57 9448.14 7 39 0 25 87 438 252 59 false)
(12 1 1 110.41 0.3 3.33 368.04 0.04 20.45 0 0 0 5 9 17 12 1 false)
(18 2 2 372.23 0.09 11.63 4329.68 0.12 240.54 0 9 0 17 19 46 26 3 false)
(20 3 3 452.78 0.09 11.56 5232.17 0.15 290.68 0 3 0 16 18 63 26 5 false)
(36 4 4 851.67 0.06 17.63 15014.65 0.28 834.15 2 13 0 17 27 100 56 6 false)
(160 32 20 3442.98 0.04 22.73 78244.98 1.15 4346.94 12 33 0 29 104 325 163 58 false)
(47 10 7 1980.76 0.05 18.86 37359.42 0.66 2075.52 6 7 0 21 54 221 97 19 false)
(6 1 1 15.51 0.5 2 31.02 0.01 1.72 0 0 0 4 2 4 2 1 false)
(6 1 1 15.51 0.5 2 31.02 0.01 1.72 0 0 0 4 2 4 2 1 false)
(38 4 1 892.43 0.07 14.75 13163.37 0.3 731.3 3 35 0 19 38 94 59 7 false)
(6 1 1 15.51 0.5 2 31.02 0.01 1.72 0 0 0 4 2 4 2 1 false)
(12 1 1 75.28 0.5 2 150.57 0.03 8.36 0 0 0 4 8 13 8 1 false)
(12 1 1 92.51 0.38 2.67 246.7 0.03 13.71 0 0 0 4 9 13 12 1 false)
(9 1 1 92.51 0.38 2.67 246.7 0.03 13.71 0 0 0 4 9 13 12 1 false)
(41 2 2 1472.15 0.06 15.69 23101.5 0.49 1283.42 0 7 0 17 52 145 96 3 false)
(30 2 2 852.22 0.07 14.68 12512.17 0.28 695.12 0 6 0 17 33 94 57 3 false)
(6 1 1 19.65 0.4 2.5 49.13 0.01 2.73 0 0 0 5 2 5 2 1 false)
(20 5 1 288.85 0.05 21 6065.91 0.1 336.99 0 0 0 16 8 42 21 9 false)
(149 15 6 5575.99 0.02 46.92 261640.64 1.86 14535.59 2 65 0 31 110 448 333 29 false)
(6 1 1 22.46 0.5 2 44.92 0.01 2.5 0 0 0 4 3 5 3 1 false)
(16 3 2 353.11 0.13 7.71 2723.97 0.12 151.33 2 18 0 12 21 43 27 5 false)
(15 1 1 179.72 0.19 5.25 943.51 0.06 52.42 0 0 0 5 10 25 21 1 false)
(13 1 1 298.21 0.06 15.5 4622.3 0.1 256.79 0 6 0 10 10 38 31 1 false)
(6 1 1 44.97 0.29 3.5 157.4 0.01 8.74 0 0 0 7 4 9 4 1 false)
(14 2 1 151.24 0.11 9.29 1404.34 0.05 78.02 3 0 0 10 7 24 13 3 false)
(14 2 1 151.24 0.11 9.29 1404.34 0.05 78.02 3 0 0 10 7 24 13 3 false)
(27 3 1 744.63 0.08 12.04 8964.95 0.25 498.05 0 39 0 15 38 69 61 5 false)
(19 2 2 300 0.11 9.5 2850 0.1 158.33 0 6 0 16 16 41 19 3 false)
(21 2 2 525 0.04 23 12075 0.18 670.83 6 6 0 16 16 59 46 3 false)
(6 1 1 43.19 0.27 3.75 161.94 0.01 9 0 0 0 6 4 8 5 1 false)
(16 3 2 185.75 0.13 7.64 1418.49 0.06 78.8 0 5 0 14 11 28 12 5 false)
(55 9 3 1738.63 0.03 33.32 57931.89 0.58 3218.44 12 20 0 23 39 179 113 17 false)
(6 1 1 11.61 0.67 1.5 17.41 0 0.97 0 0 0 3 2 3 2 1 false)
(9 1 1 62.27 0.44 2.29 142.33 0.02 7.91 0 0 0 4 7 10 8 1 false)
(12 1 1 110.41 0.3 3.33 368.04 0.04 20.45 0 0 0 5 9 17 12 1 false)
(12 1 1 92.51 0.38 2.67 246.7 0.03 13.71 0 0 0 4 9 13 12 1 false)
(69 19 13 2746.2 0.03 36.57 100429.38 0.92 5579.41 0 18 0 31 64 267 151 37 false)
(138 25 24 4677.38 0.04 27.21 127275.78 1.56 7070.88 1 58 0 32 147 375 250 47 false)
(6 1 1 15.51 0.5 2 31.02 0.01 1.72 0 0 0 4 2 4 2 1 false)
(6 1 1 15.51 0.5 2 31.02 0.01 1.72 0 0 0 4 2 4 2 1 false)
(72 16 7 1573.33 0.05 18.26 28729.02 0.52 1596.06 1 19 0 22 50 172 83 31 false)
(6 1 1 8 0.67 1.5 12 0 0.67 0 0 0 3 1 3 1 1 false)
(6 1 1 11.61 0.5 2 23.22 0 1.29 0 0 0 4 1 4 1 1 false)
(6 1 1 19.65 0.4 2.5 49.13 0.01 2.73 0 0 0 5 2 5 2 1 false)
(6 1 1 27 0.4 2.5 67.5 0.01 3.75 0 4 0 5 3 6 3 1 false)
(11 1 1 73.08 0.47 2.14 156.61 0.02 8.7 0 0 0 3 7 12 10 1 false)
(23 4 4 396.41 0.09 11.57 4586.97 0.13 254.83 1 23 0 18 21 48 27 7 false)
(17 1 1 221.65 0.26 3.88 860.54 0.07 47.81 0 9 0 6 17 27 22 1 false)
(60 13 6 919.26 0.07 13.9 12780.02 0.31 710 4 15 0 20 41 98 57 19 false)
(32 5 3 360 0.08 13.24 4764.71 0.12 264.71 1 0 0 15 17 42 30 9 false)
(16 3 1 144.95 0.09 10.56 1531 0.05 85.06 1 0 0 13 8 20 13 5 false)
(42 2 2 1316.03 0.07 13.88 18268.21 0.44 1014.9 0 6 0 18 59 119 91 3 false)
(6 1 1 22.46 0.5 2 44.92 0.01 2.5 0 0 0 4 3 5 3 1 false)
(14 2 1 328.76 0.09 11.47 3771.09 0.11 209.5 6 13 0 13 17 37 30 3 false)
(27 3 1 456.57 0.12 8.31 3793.04 0.15 210.72 0 9 0 12 26 51 36 5 false)
(8 1 1 88.81 0.14 7.2 639.44 0.03 35.52 0 0 0 8 5 15 9 1 false)
(7 1 1 39 0.33 3 117 0.01 6.5 0 0 0 4 4 7 6 1 false)
(31 5 1 284.61 0.05 19.94 5674.43 0.09 315.25 1 4 0 11 8 38 29 9 false)
(8 1 1 39.86 0.21 4.67 186.03 0.01 10.33 0 3 0 7 3 8 4 1 false)
(11 1 1 116 0.09 10.83 1256.67 0.04 69.81 0 3 0 10 6 16 13 1 false)
(6 1 1 8 0.67 1.5 12 0 0.67 0 0 0 3 1 3 1 1 false)
(13 2 1 74.01 0.29 3.5 259.02 0.02 14.39 0 0 0 7 6 14 6 3 false)
(6 1 1 31.7 0.33 3 95.1 0.01 5.28 0 3 0 6 3 7 3 1 false)
(22 2 2 421.97 0.09 11.48 4842.06 0.14 269 0 12 0 17 20 54 27 3 false)
(29 7 2 508.75 0.04 25.33 12888.24 0.17 716.01 0 9 0 19 15 60 40 13 false)
(9 1 1 366.41 0.05 20.22 7409.59 0.12 411.64 0 2 0 14 9 55 26 1 false)
(16 4 1 675 0.04 24.37 16447.5 0.23 913.75 0 3 0 17 15 92 43 7 false)
(92 15 15 2643.35 0.02 57 150670.96 0.88 8370.61 27 41 0 19 32 274 192 29 false)
(18 4 1 369.21 0.07 15.38 5680.1 0.12 315.56 7 11 0 16 13 51 25 7 false)
(36 6 6 1005.29 0.05 21.46 21576.47 0.34 1198.69 9 22 0 19 27 121 61 11 false)
(5 1 1 28.53 0.33 3 85.59 0.01 4.75 1 1 0 6 3 6 3 1 false)
(22 3 3 341.84 0.07 14.06 4807.12 0.11 267.06 4 0 0 15 16 39 30 5 false)
(3 1 1 18.09 0.4 2.5 45.24 0.01 2.51 0 0 0 5 1 6 1 1 false)
(7 2 1 105.49 0.08 12 1265.83 0.04 70.32 0 0 0 10 5 15 12 3 false)
(3 1 1 48.43 0.23 4.38 211.89 0.02 11.77 0 0 0 7 4 9 5 1 false)
(7 1 1 110.41 0.21 4.88 538.26 0.04 29.9 0 0 0 6 8 16 13 1 false)
(9 3 1 170.97 0.07 14.14 2417.96 0.06 134.33 0 0 0 11 7 23 18 5 false)
(11 3 1 215.22 0.07 14.67 3156.61 0.07 175.37 0 0 0 12 9 27 22 5 false)
(4 1 1 39 0.33 3 117 0.01 6.5 0 0 0 4 4 7 6 1 false)
(3 1 1 19.65 0.4 2.5 49.13 0.01 2.73 0 0 0 5 2 5 2 1 false)
(30 4 2 1149.16 0.04 25.34 29117.23 0.38 1617.62 10 22 0 25 37 118 75 7 false)
(5 1 1 11.61 0.67 1.5 17.41 0 0.97 1 1 0 3 2 3 2 1 false)
(16 4 2 591.46 0.04 25.89 15315.78 0.2 850.88 6 10 0 24 19 68 41 7 false)
(5 1 1 11.61 0.67 1.5 17.41 0 0.97 1 1 0 3 2 3 2 1 false)
(15 4 2 591.46 0.04 25.89 15315.78 0.2 850.88 7 10 0 24 19 68 41 7 false)
(40 10 8 2609.12 0.03 31.3 81653.73 0.87 4536.32 35 31 0 27 66 246 153 19 false)
(5 1 1 11.61 0.67 1.5 17.41 0 0.97 1 1 0 3 2 3 2 1 false)
(5 1 1 11.61 0.67 1.5 17.41 0 0.97 1 1 0 3 2 3 2 1 false)
(12 2 1 516.99 0.07 15.21 7863.73 0.17 436.87 8 14 0 17 19 66 34 3 false)
(5 1 1 15.51 0.5 2 31.02 0.01 1.72 1 7 0 4 2 4 2 1 false)
(44 6 4 2490.74 0.03 34.84 86774.3 0.83 4820.79 18 28 0 32 62 245 135 11 false)
(31 5 5 734.53 0.06 16.56 12163.87 0.24 675.77 5 0 0 12 25 72 69 9 false)
(22 6 3 503.61 0.05 19.95 10047.02 0.17 558.17 11 21 0 21 20 56 38 11 false)
(20 4 4 666.05 0.07 14.44 9617.77 0.22 534.32 2 13 0 19 25 84 38 7 false)
(27 6 5 801.91 0.07 14.9 11951.03 0.27 663.95 4 16 0 22 31 98 42 11 false)
(6 1 1 121.01 0.2 5 605.07 0.04 33.61 3 3 0 10 10 18 10 1 false)
(25 2 2 759.68 0.06 15.45 11735.7 0.25 651.98 2 4 0 14 29 76 64 3 false)
(10 2 1 206.32 0.1 9.8 2021.97 0.07 112.33 5 4 0 14 10 31 14 3 false)
(10 2 1 206.32 0.1 9.8 2021.97 0.07 112.33 5 4 0 14 10 31 14 3 false)
(5 1 1 11.61 0.5 2 23.22 0 1.29 3 3 0 4 1 4 1 1 false)
(14 3 2 266.27 0.12 8.62 2294.05 0.09 127.45 4 8 0 14 13 40 16 5 false)
(20 4 4 526.35 0.09 11.12 5850.56 0.18 325.03 3 12 0 17 26 63 34 7 false)
(28 7 5 809.46 0.07 14.56 11789.43 0.27 654.97 4 18 0 21 31 99 43 13 false)
(3 1 1 34.87 0.29 3.5 122.04 0.01 6.78 0 3 0 7 2 9 2 1 false)
(45 12 8 1810.2 0.04 26.32 47644.35 0.6 2646.91 21 29 0 28 50 194 94 23 false)
(7 2 2 102.19 0.16 6.19 632.28 0.03 35.13 0 2 0 9 8 14 11 3 false)
(7 2 2 102.19 0.16 6.19 632.28 0.03 35.13 0 2 0 9 8 14 11 3 false)
(7 2 2 102.19 0.16 6.19 632.28 0.03 35.13 0 2 0 9 8 14 11 3 false)
(7 2 2 102.19 0.16 6.19 632.28 0.03 35.13 0 2 0 9 8 14 11 3 false)
(7 2 2 102.19 0.16 6.19 632.28 0.03 35.13 0 2 0 9 8 14 11 3 false)
(7 2 2 102.19 0.16 6.19 632.28 0.03 35.13 0 2 0 9 8 14 11 3 false)
(7 2 2 102.19 0.16 6.19 632.28 0.03 35.13 0 2 0 9 8 14 11 3 false)
(11 2 1 130.8 0.08 12 1569.59 0.04 87.2 2 2 0 12 5 22 10 3 false)
(11 2 1 207.45 0.08 12 2489.43 0.07 138.3 2 2 0 12 8 32 16 3 false)
(27 8 6 484.48 0.07 13.74 6655.21 0.16 369.73 14 22 0 18 19 64 29 15 false)
(10 2 2 104 0.15 6.67 693.33 0.03 38.52 4 12 0 10 6 18 8 3 false)
(9 2 1 110.36 0.12 8.25 910.48 0.04 50.58 3 3 0 11 6 18 9 3 false)
(9 2 1 185.84 0.11 9.17 1703.56 0.06 94.64 3 3 0 11 9 28 15 3 false)
(20 3 1 147.15 0.07 14.67 2158.18 0.05 119.9 0 0 0 11 6 20 16 5 false)
(98 10 7 3428.87 0.04 27.25 93428.15 1.14 5190.45 6 57 0 32 101 314 172 19 false)
(172 25 24 5588.41 0.04 22.99 128457.87 1.86 7136.55 20 56 0 27 148 498 252 49 false)
(6 1 1 216.1 0.18 5.65 1221.78 0.07 67.88 0 0 0 7 13 29 21 1 false)
(43 4 4 1619.65 0.05 19.2 31093.83 0.54 1727.43 1 29 0 19 48 170 97 7 false)
(36 2 2 916.14 0.04 24.18 22153.96 0.31 1230.78 11 31 0 19 22 115 56 3 false)
(21 4 3 472.09 0.11 9.48 4476.07 0.16 248.67 11 5 0 16 27 55 32 7 false)
(6 1 1 92 0.19 5.14 473.14 0.03 26.29 2 7 0 9 7 15 8 1 false)
(5 1 1 51.81 0.22 4.5 233.13 0.02 12.95 2 0 0 9 4 10 4 1 false)
(5 1 1 53.3 0.22 4.5 239.86 0.02 13.33 3 0 0 9 5 9 5 1 false)
(8 1 1 162.63 0.12 8.13 1321.34 0.05 73.41 5 0 0 10 8 26 13 1 false)
(6 1 1 143.06 0.15 6.75 965.66 0.05 53.65 6 0 0 9 8 23 12 1 false)
(16 4 2 474.06 0.05 19.41 9202.35 0.16 511.24 1 1 0 20 17 58 33 7 false)
(14 3 3 167.37 0.1 10.4 1740.67 0.06 96.7 0 7 0 13 10 21 16 5 false)
(88 19 9 3289.76 0.02 48.79 160516.7 1.1 8917.59 6 51 0 33 70 285 207 37 false)
(29 4 3 912.7 0.05 18.53 16907.83 0.3 939.32 7 6 0 26 40 94 57 6 false)
(60 21 15 5767.59 0.01 73.1 421634.86 1.92 23424.16 16 37 0 44 96 490 319 41 false)
(52 10 6 2220.21 0.02 46.67 103609.98 0.74 5756.11 12 25 0 36 54 202 140 19 false)
(7 1 1 76 0.22 4.5 342 0.03 19 1 0 0 8 8 10 9 1 false)
(8 1 1 146.95 0.2 5 734.73 0.05 40.82 2 5 0 8 12 19 15 1 false)
(20 1 1 507.8 0.12 8.25 4189.34 0.17 232.74 3 4 0 11 24 63 36 1 false)
(29 6 6 707.82 0.04 24 16987.59 0.24 943.76 7 3 0 20 20 85 48 8 false)
(9 1 1 114.45 0.14 7.14 817.49 0.04 45.42 0 0 0 10 7 18 10 1 false)
(15 4 2 264.4 0.08 12 3172.85 0.09 176.27 1 0 0 16 12 37 18 7 false)
(14 2 1 239.72 0.11 9.5 2277.36 0.08 126.52 2 7 0 13 13 32 19 3 false)
(22 3 1 215.49 0.12 8.03 1732.23 0.07 96.24 0 0 0 11 13 28 19 4 false)
(63 15 3 1626.88 0.03 35.45 57670.7 0.54 3203.93 5 0 0 35 39 183 79 20 false)
(9 2 1 178.38 0.14 7.22 1288.28 0.06 71.57 2 1 0 13 9 30 10 3 false)
(9 2 1 173.92 0.14 7.22 1256.07 0.06 69.78 2 0 0 13 9 29 10 3 false)
(17 4 2 340 0.07 13.6 4624 0.11 256.89 1 1 0 17 15 44 24 7 false)
(9 3 1 70.31 0.21 4.8 337.48 0.02 18.75 0 0 0 8 5 13 6 5 false)
(10 2 1 294.8 0.08 12.5 3685.04 0.1 204.72 4 0 0 15 12 42 20 3 false)
(3 1 1 11.61 0.5 2 23.22 0 1.29 0 0 0 4 1 4 1 1 false)
(9 5 1 124 0.16 6.43 797.14 0.04 44.29 0 0 0 9 7 21 10 9 false)
(101 19 8 4887.38 0.02 64.68 316115.55 1.63 17561.98 44 76 0 49 100 413 264 37 false)
(29 8 6 3695.31 0.02 48.05 177559.52 1.23 9864.42 28 6 0 31 70 338 217 15 false)
(22 6 4 1092.77 0.03 29.45 32187.18 0.36 1788.18 3 8 0 27 33 113 72 11 false)
(106 13 11 2739.78 0.04 27.04 74089.87 0.91 4116.1 0 14 0 20 71 229 192 25 false)
(21 3 3 454.54 0.09 11.25 5113.63 0.15 284.09 0 6 0 15 24 50 36 5 false)
(10 2 2 162.52 0.14 7.27 1181.93 0.05 65.66 0 0 0 10 11 21 16 3 false)
(17 3 3 718.97 0.04 24.29 17460.6 0.24 970.03 4 3 0 17 21 77 60 5 false)
(13 3 3 337.6 0.08 13.2 4456.28 0.11 247.57 4 0 0 12 15 38 33 5 false)
(4 1 1 11.61 0.67 1.5 17.41 0 0.97 0 3 0 3 2 3 2 1 false)
(49 13 6 2312.59 0.02 55.62 128629.96 0.77 7146.11 0 22 0 28 37 237 147 25 false)
(49 13 6 2312.59 0.02 55.62 128629.96 0.77 7146.11 0 22 0 28 37 237 147 25 false)
(55 14 5 2272.66 0.02 49.74 113051.62 0.76 6280.65 1 23 0 31 43 228 138 27 false)
(55 14 5 2272.66 0.02 49.74 113051.62 0.76 6280.65 1 23 0 31 43 228 138 27 false)
(17 5 2 620.39 0.04 23.47 14560.94 0.21 808.94 1 10 0 19 17 78 42 9 false)
(17 5 2 620.39 0.04 23.47 14560.94 0.21 808.94 1 10 0 19 17 78 42 9 false)
(20 5 2 671.25 0.04 23.16 15544.65 0.22 863.59 1 5 0 20 19 83 44 9 false)
(20 5 2 671.25 0.04 23.16 15544.65 0.22 863.59 1 5 0 20 19 83 44 9 false)
(30 9 2 2183.89 0.01 76.87 167872.07 0.73 9326.23 1 12 0 23 19 278 127 17 false)
(45 15 2 3190.77 0.01 95.66 305225.84 1.06 16956.99 1 16 0 23 22 398 183 29 false)
(20 6 2 1299.55 0.02 46 59779.23 0.43 3321.07 1 6 0 23 19 165 76 11 false)
(41 10 2 1905.86 0.03 38.79 73923.53 0.64 4106.85 3 8 0 29 40 205 107 19 false)
(25 8 1 1252.14 0.04 27.04 33856.01 0.42 1880.89 0 8 0 19 26 154 74 15 false)
(22 5 2 602.54 0.05 22.11 13319.21 0.2 739.96 10 22 0 20 19 72 42 9 false)
(41 4 4 1453.01 0.04 23.68 34405.27 0.48 1911.4 0 21 0 17 42 130 117 7 false)
(48 6 4 1758.75 0.04 24.77 43561.75 0.59 2420.1 25 13 0 25 54 172 107 11 false)
(24 9 8 355.74 0.09 11.65 4143.37 0.12 230.19 0 0 0 11 17 38 36 17 false)
(25 4 3 480.56 0.04 22.46 10795.37 0.16 599.74 0 15 0 17 14 60 37 7 false)
(176 23 17 5219.89 0.03 37.2 194194.61 1.74 10788.59 6 100 0 38 143 416 280 43 false)
(10 2 2 75.28 0.14 7 526.99 0.03 29.28 0 0 0 8 4 14 7 3 false)
(66 9 7 2203.49 0.03 28.98 63864.99 0.73 3548.06 5 26 0 26 61 206 136 17 false)
(32 4 3 744.63 0.06 16.36 12184.85 0.25 676.94 9 31 0 20 33 76 54 7 false)
(18 2 2 364.66 0.1 10.29 3750.81 0.12 208.38 0 12 0 16 21 43 27 3 false)
(3 1 1 19.65 0.5 2 39.3 0.01 2.18 0 0 0 4 3 4 3 1 false)
(14 3 2 218.72 0.07 13.82 3022.38 0.07 167.91 3 4 0 16 11 27 19 5 false)
(29 4 3 768.92 0.05 19.35 14882.34 0.26 826.8 4 21 0 24 31 83 50 7 false)
(104 18 7 2414.97 0.02 41.38 99929.77 0.8 5551.65 5 70 0 32 58 222 150 35 false)
(68 12 7 1130.3 0.05 21.71 24543.69 0.38 1363.54 4 58 0 24 42 111 76 23 false)
(7 1 1 18.09 0.5 2 36.19 0.01 2 1 0 0 4 2 5 2 1 false)
(21 4 4 567.78 0.06 17.86 10140.57 0.19 563.36 4 16 0 19 25 57 47 7 false)
(10 2 1 103.73 0.2 5 518.63 0.03 28.81 0 0 0 10 10 14 10 3 false)
(19 3 3 366.61 0.1 9.75 3574.45 0.12 198.58 9 7 0 13 18 47 27 5 false)
(7 1 1 34.87 0.29 3.5 122.04 0.01 6.78 0 0 0 7 2 9 2 1 false)
(8 1 1 36.54 0.29 3.5 127.89 0.01 7.11 0 0 0 7 3 8 3 1 false)
(8 1 1 36.54 0.33 3 109.62 0.01 6.09 0 0 0 6 4 7 4 1 false)
(8 1 1 36.54 0.33 3 109.62 0.01 6.09 0 0 0 6 4 7 4 1 false)
(19 2 1 261.33 0.09 10.58 2764.2 0.09 153.57 0 0 0 11 13 32 25 3 false)
(10 2 1 87.57 0.19 5.4 472.87 0.03 26.27 1 6 0 9 5 17 6 3 false)
(11 1 1 155.42 0.16 6.25 971.37 0.05 53.96 0 1 0 5 8 22 20 1 false)
(9 1 1 68.53 0.2 5 342.66 0.02 19.04 0 0 0 10 4 14 4 1 false)
(7 1 1 33.22 0.33 3 99.66 0.01 5.54 0 0 0 6 4 6 4 1 false)
(8 1 1 191.82 0.14 7 1342.72 0.06 74.6 0 1 0 9 9 32 14 1 false)
(15 2 1 178.41 0.1 9.63 1717.22 0.06 95.4 0 0 0 11 8 28 14 3 false)
(10 2 2 171.3 0.09 10.56 1809.36 0.06 100.52 4 15 0 13 8 26 13 3 false)
(6 1 1 27 0.33 3 81 0.01 4.5 0 0 0 6 2 7 2 1 false)
(44 6 6 886.6 0.05 18.91 16764.79 0.3 931.38 1 16 0 24 33 100 52 11 false)
(8 1 1 138.97 0.16 6.19 859.9 0.05 47.77 0 2 0 9 8 23 11 1 false)
(15 2 1 294.8 0.15 6.87 2026.77 0.1 112.6 0 0 0 11 16 42 20 3 false)
(7 1 1 122.62 0.18 5.63 689.76 0.04 38.32 0 0 0 9 8 20 10 1 false)
(6 1 1 101.58 0.17 6 609.47 0.03 33.86 0 0 0 9 6 18 8 1 false)
(15 3 3 147.15 0.06 18 2648.68 0.05 147.15 0 0 0 12 5 21 15 5 false)
(70 13 9 2263.14 0.04 27.86 63061.03 0.75 3503.39 6 15 0 24 59 218 137 25 false)
(24 4 4 466.76 0.06 16.94 7907.54 0.16 439.31 3 2 0 18 17 59 32 7 false)
(6 1 1 84 0.17 5.79 486 0.03 27 3 2 0 9 7 12 9 1 false)
(12 3 2 525.14 0.06 18.12 9514.39 0.18 528.58 7 9 0 14 17 62 44 5 false)
(5 1 1 19.65 0.5 2 39.3 0.01 2.18 2 1 0 4 3 4 3 1 false)
(8 1 1 187.65 0.09 10.63 1993.75 0.06 110.76 4 2 0 10 8 28 17 1 false)
(9 2 1 185.84 0.07 13.5 2508.88 0.06 139.38 2 2 0 12 8 25 18 3 false)
(9 2 1 232.79 0.06 17.06 3972.03 0.08 220.67 2 2 0 13 8 32 21 3 false)
(19 4 4 731.56 0.05 18.29 13377.17 0.24 743.18 3 0 0 16 28 70 64 7 false)
(6 1 1 43.19 0.33 3 129.56 0.01 7.2 3 2 0 5 5 7 6 1 false)
(25 6 6 1005.29 0.04 23.73 23858.84 0.34 1325.49 3 0 0 16 30 93 89 11 false)
(19 3 3 360 0.1 10.11 3640 0.12 202.22 1 9 0 14 18 46 26 5 false)
(76 16 11 3670.05 0.03 33.87 124313.16 1.22 6906.29 28 17 0 32 94 327 199 31 false)
(35 5 5 1114.08 0.1 10.11 11259.34 0.37 625.52 1 0 0 10 47 96 95 9 false)
(8 3 2 188.87 0.09 10.67 2014.61 0.06 111.92 7 2 0 12 9 27 16 5 false)
(14 1 1 196 0.36 2.77 542.77 0.07 30.15 0 0 0 3 13 25 24 1 false)
(7 1 1 102.8 0.13 8 822.39 0.03 45.69 2 1 0 8 6 15 12 1 false)
(27 5 4 888.01 0.05 20.7 18381.79 0.3 1021.21 8 19 0 23 25 114 45 9 false)
(20 3 2 1138.69 0.03 30.2 34384.39 0.38 1910.24 10 7 0 19 28 116 89 5 false)
(27 6 2 1627.38 0.03 33.51 54539.1 0.54 3029.95 14 5 0 20 37 155 124 11 false)
(25 5 4 552.36 0.05 20.16 11135.5 0.18 618.64 2 0 0 21 25 52 48 9 false)
(423 96 63 17124.28 0.01 125.77 2153690.63 5.71 119649.48 80 165 0 72 233 1261 814 162 false)
(30 5 5 1061.18 0.07 13.61 14437.64 0.35 802.09 1 0 0 11 38 95 94 9 false)
(10 4 3 109.39 0.18 5.69 622.17 0.04 34.57 2 2 0 7 8 15 13 7 false)
(49 16 3 2602.9 0.03 31.06 80843.05 0.87 4491.28 35 12 0 24 68 223 176 31 false)
(85 32 10 4031.99 0.02 51.47 207526.23 1.34 11529.23 53 27 0 32 83 322 267 63 false)
(8 7 1 347.83 0.06 16.32 5681.26 0.12 315.63 15 2 0 14 12 46 28 13 false)
(50 15 1 1282.9 0.04 25.26 32401.84 0.43 1800.1 19 53 0 21 37 130 89 29 false)
(165 29 22 8593.51 0.02 42.76 367446.53 2.86 20413.7 61 32 0 32 174 653 465 57 false)
(17 2 2 505.41 0.11 9.27 4686.53 0.17 260.36 1 0 0 8 22 52 51 3 false)
(15 4 4 267.19 0.08 13.07 3491.27 0.09 193.96 1 0 0 14 15 27 28 7 false)
(61 11 10 1571.12 0.05 18.72 29416.66 0.52 1634.26 6 8 0 20 47 171 88 21 false)
(63 12 10 3343.21 0.02 40.22 134469 1.11 7470.5 30 18 0 31 79 288 205 23 false)
(16 3 3 427.18 0.07 15.16 6475.08 0.14 359.73 8 4 0 18 19 50 32 5 false)
(49 13 13 773.25 0.05 21.53 16649.11 0.26 924.95 1 0 0 26 32 79 53 16 false)
(52 14 14 842.16 0.04 23.03 19394.56 0.28 1077.48 1 0 0 27 34 84 58 18 false)
(42 7 7 1633.09 0.1 10.16 16586.02 0.54 921.45 1 0 0 10 64 133 130 13 false)
(62 13 10 1655.41 0.05 20.34 33677.25 0.55 1870.96 5 8 0 21 48 178 93 25 false)
(65 13 10 3559.65 0.02 43.66 155431.03 1.19 8635.06 30 19 0 33 82 303 217 25 false)
(75 17 11 3235.94 0.03 38.3 123948.13 1.08 6886.01 25 15 0 33 84 276 195 33 false)
(8 2 1 48.43 0.23 4.38 211.89 0.02 11.77 0 10 0 7 4 9 5 3 false)
(8 2 1 106.2 0.16 6.19 657.1 0.04 36.51 0 5 0 11 8 16 9 3 false)
(3 1 1 11.61 0.5 2 23.22 0 1.29 0 0 0 4 1 4 1 1 false)
(4 1 1 16.25 0.67 1.5 24.38 0.01 1.35 0 0 0 3 2 5 2 1 false)
(15 4 1 249.98 0.07 14.68 3670.2 0.08 203.9 2 14 0 17 11 33 19 7 false)
(8 2 1 48.43 0.23 4.38 211.89 0.02 11.77 0 10 0 7 4 9 5 3 false)
(9 2 2 108.42 0.18 5.5 596.3 0.04 33.13 0 2 0 9 9 15 11 3 false)
(13 3 2 313.82 0.07 13.93 4371.1 0.1 242.84 4 19 0 13 14 36 30 5 false)
(3 1 1 11.61 0.5 2 23.22 0 1.29 0 0 0 4 1 4 1 1 false)
(4 1 1 16.25 0.67 1.5 24.38 0.01 1.35 0 0 0 3 2 5 2 1 false)
(6 1 1 64.73 0.22 4.5 291.26 0.02 16.18 1 7 0 9 5 12 5 1 false)
(6 1 1 59.21 0.25 4 236.83 0.02 13.16 1 7 0 8 5 11 5 1 false)
(15 2 1 183.4 0.09 10.64 1950.69 0.06 108.37 0 7 0 13 11 22 18 3 false)
(9 1 1 84 0.19 5.14 432 0.03 24 0 3 0 9 7 13 8 1 false)
(9 1 1 84 0.19 5.14 432 0.03 24 0 3 0 9 7 13 8 1 false)
(20 1 1 629.75 0.06 16 10076.02 0.21 559.78 1 19 0 16 22 76 44 1 false)
(7 1 1 43.19 0.4 2.5 107.96 0.01 6 2 2 0 5 5 8 5 1 false)
(3 1 1 85.95 0.2 5 429.76 0.03 23.88 1 0 0 10 5 17 5 1 false)
(3 1 1 79.95 0.22 4.5 359.8 0.03 19.99 1 0 0 9 5 16 5 1 false)
(6 2 2 112.59 0.16 6.29 707.7 0.04 39.32 2 6 0 11 7 19 8 3 false)
(7 1 1 43.19 0.4 2.5 107.96 0.01 6 2 2 0 5 5 8 5 1 false)
(3 1 1 85.95 0.2 5 429.76 0.03 23.88 1 0 0 10 5 17 5 1 false)
(3 1 1 79.95 0.22 4.5 359.8 0.03 19.99 1 0 0 9 5 16 5 1 false)
(6 2 2 112.59 0.16 6.29 707.7 0.04 39.32 2 6 0 11 7 19 8 3 false)
(2 1 1 0 0 0 0 0 0 0 0 0 1 0 1 0 1 false)
(2 1 1 0 0 0 0 0 0 0 0 0 1 0 1 0 1 false)
(3 1 1 0 0 0 0 0 0 0 12 0 1 0 1 0 1 false)
(4 1 1 11.61 0.5 2 23.22 0 1.29 2 0 0 4 1 4 1 1 false)
(9 2 1 51.89 0.23 4.38 227.03 0.02 12.61 0 8 0 7 4 10 5 3 false)
(16 1 1 408.66 0.07 15.32 6261.24 0.14 347.85 0 4 0 11 14 49 39 1 false)
(5 1 1 11.61 0.67 1.5 17.41 0 0.97 1 1 0 3 2 3 2 1 false)
(4 1 1 47.55 0.27 3.75 178.31 0.02 9.91 3 1 0 5 4 9 6 1 false)
(5 1 1 105.49 0.16 6.29 663.06 0.04 36.84 4 5 0 8 7 16 11 1 false)
(9 2 1 171.3 0.1 10 1713 0.06 95.17 2 5 0 12 9 24 15 3 false)
(18 3 1 215.49 0.12 8.03 1732.23 0.07 96.24 4 0 0 11 13 28 19 4 false)
(38 10 4 835.34 0.04 26.1 21802.25 0.28 1211.24 4 33 0 29 30 88 54 13 false)
(14 6 1 277.33 0.06 17.6 4880.94 0.09 271.16 2 2 0 16 10 37 22 11 false)
(47 13 2 863.23 0.04 27.86 24047.21 0.29 1335.96 7 14 0 26 28 90 60 21 false)
(11 2 1 125.34 0.16 6.11 765.94 0.04 42.55 0 1 0 11 9 19 10 3 false)
(11 2 1 121.01 0.16 6.11 739.53 0.04 41.08 0 2 0 11 9 18 10 3 false)
(11 2 1 142.7 0.1 9.63 1373.5 0.05 76.31 1 2 0 14 8 21 11 3 false)
(21 4 4 492.41 0.1 10.5 5170.32 0.16 287.24 3 7 0 15 20 68 28 7 false)
(23 4 4 492.41 0.1 10.5 5170.32 0.16 287.24 1 5 0 15 20 68 28 7 false)
(13 3 3 240.44 0.14 7.26 1746.71 0.08 97.04 0 0 0 13 17 30 19 5 false)
(21 3 3 377.85 0.09 10.93 4129.37 0.13 229.41 0 0 0 17 21 45 27 5 false)
(21 3 3 380.55 0.1 10.43 3969.82 0.13 220.55 0 0 0 17 22 45 27 5 false)
(22 4 3 531.77 0.08 12.75 6780.12 0.18 376.67 0 0 0 17 26 59 39 7 false)
(41 8 6 1113.43 0.07 14.8 16481.41 0.37 915.63 1 9 0 19 43 120 67 15 false)
(22 4 2 310.91 0.07 14.77 4591.91 0.1 255.11 0 0 0 16 13 40 24 7 false)
(9 3 1 91.38 0.1 10 913.77 0.03 50.76 0 0 0 10 4 16 8 5 false)
(50 10 9 733.36 0.09 11.21 8218.63 0.24 456.59 0 0 0 13 29 86 50 19 false)
(29 10 8 640.3 0.05 20.43 13084.38 0.21 726.91 1 0 0 20 23 71 47 19 false)
(50 10 9 757.88 0.1 10.16 7697.18 0.25 427.62 0 0 0 13 32 88 50 19 false)
(29 19 8 1310.28 0.05 18.55 24306.94 0.44 1350.39 8 0 0 18 49 115 101 37 false)
(29 7 2 508.75 0.04 25.33 12888.24 0.17 716.01 0 9 0 19 15 60 40 13 false)
(9 1 1 366.41 0.05 20.22 7409.59 0.12 411.64 0 2 0 14 9 55 26 1 false)
(16 4 1 675 0.04 24.37 16447.5 0.23 913.75 0 3 0 17 15 92 43 7 false)
(9 1 1 104.25 0.2 5 521.24 0.03 28.96 0 0 0 9 9 15 10 1 false)
(6 1 1 70.31 0.29 3.43 241.06 0.02 13.39 0 0 0 6 7 11 8 1 false)
(30 7 4 955.03 0.03 30.04 28687.59 0.32 1593.75 0 2 0 22 26 100 71 13 false)
(14 2 2 71.7 0.35 2.86 204.86 0.02 11.38 0 0 0 5 7 12 8 3 false)
(56 22 12 2982.34 0.02 53.98 160995.7 0.99 8944.21 0 1 0 35 59 273 182 40 false)
(21 3 3 1207.79 0.04 26.67 32207.61 0.4 1789.31 1 10 0 20 30 134 80 5 false)
(14 1 1 380.39 0.11 9.5 3613.71 0.13 200.76 3 12 0 9 18 42 38 1 false)
(7 1 1 24 0.5 2 48 0.01 2.67 0 0 0 4 4 4 4 1 false)
(16 3 1 169.92 0.17 5.85 994.02 0.06 55.22 0 0 0 9 10 27 13 5 false)
(22 3 3 1335.73 0.04 25.08 33504.61 0.45 1861.37 1 4 0 21 36 143 86 5 false)
(27 4 3 360.55 0.09 11.7 4218.45 0.12 234.36 0 3 0 13 15 48 27 7 false)
(3 1 1 39.86 0.29 3.5 139.52 0.01 7.75 0 0 0 7 3 9 3 1 false)
(7 2 1 105.49 0.08 12 1265.83 0.04 70.32 0 0 0 10 5 15 12 3 false)
(3 1 1 48.43 0.23 4.38 211.89 0.02 11.77 0 0 0 7 4 9 5 1 false)
(7 1 1 110.41 0.21 4.88 538.26 0.04 29.9 0 0 0 6 8 16 13 1 false)
(9 3 1 170.97 0.07 14.14 2417.96 0.06 134.33 0 0 0 11 7 23 18 5 false)
(11 3 1 215.22 0.07 14.67 3156.61 0.07 175.37 0 0 0 12 9 27 22 5 false)
(4 1 1 39 0.33 3 117 0.01 6.5 0 0 0 4 4 7 6 1 false)
(3 1 1 19.65 0.4 2.5 49.13 0.01 2.73 0 0 0 5 2 5 2 1 false)
(12 3 1 227.43 0.1 10.42 2369.07 0.08 131.62 0 0 0 10 12 26 25 5 false)
(31 4 2 829.45 0.05 21.52 17846.19 0.28 991.46 1 19 0 27 32 90 51 7 true)
(29 5 3 641.73 0.08 12.33 7914.68 0.21 439.7 4 22 0 22 33 74 37 9 true)
(71 10 9 1251.39 0.04 27.11 33930.43 0.42 1885.02 6 45 0 26 35 138 73 19 true)
(15 2 2 385.5 0.07 14.25 5493.37 0.13 305.19 0 7 0 19 18 47 27 3 true)
(33 6 5 989.84 0.05 18.46 18269.63 0.33 1014.98 7 30 0 19 35 104 68 11 true)
(92 4 4 6234.84 0.04 26.64 166113.93 2.08 9228.55 7 46 0 24 168 449 373 7 true)
(44 7 7 1746.31 0.05 22.12 38620.28 0.58 2145.57 6 14 0 25 65 154 115 13 true)
(143 13 12 4996.93 0.04 28.52 142535.33 1.67 7918.63 11 57 0 24 122 405 290 25 true)
(196 37 26 9135.35 0.01 71.54 653537.1 3.05 36307.62 14 170 0 52 165 723 454 71 true)
(12 1 1 159.91 0.11 9 1439.2 0.05 79.96 0 1 0 12 8 25 12 1 true)
(12 1 1 159.91 0.11 9 1439.2 0.05 79.96 0 1 0 12 8 25 12 1 true)
(133 30 26 4185.91 0.01 77.46 324260.81 1.4 18014.49 3 91 0 50 71 385 220 34 true)
(28 3 2 557.19 0.07 15.24 8490.44 0.19 471.69 0 11 0 20 21 72 32 5 true)
(91 20 4 3740.26 0.02 51.47 192513.32 1.25 10695.18 20 96 0 28 68 318 250 39 true)
(41 4 3 745.8 0.08 13.19 9840.36 0.25 546.69 0 12 0 19 36 79 50 7 true)
(149 20 18 5081.36 0.03 29.58 150305.78 1.69 8350.32 0 62 0 32 119 482 220 37 true)
(411 73 41 12749.77 0.02 43.41 553518.63 4.25 30751.03 45 339 0 48 314 932 568 141 true)
(121 15 12 3817.28 0.04 23.26 88801.93 1.27 4933.44 3 29 0 24 114 316 221 29 true)
(130 20 10 4282.56 0.02 51.6 220979.91 1.43 12276.66 23 65 0 38 95 349 258 37 true)
(79 12 6 1227.81 0.07 13.73 16858.82 0.41 936.6 14 78 0 17 52 117 84 23 true)
(57 9 7 1318.43 0.03 29.27 38588.27 0.44 2143.79 6 7 0 32 41 138 75 15 true)
(49 7 5 1341.48 0.07 13.6 18250.34 0.45 1013.91 6 4 0 15 43 151 78 13 true)
(58 10 1 1038.71 0.03 33.52 34816.7 0.35 1934.26 6 6 0 21 26 104 83 19 true)
(28 3 3 835.29 0.05 18.67 15592.09 0.28 866.23 2 11 0 20 30 92 56 5 true)
(13 3 3 164.23 0.14 7.33 1204.38 0.05 66.91 2 0 0 11 9 26 12 5 true)
(71 8 7 1993 0.05 21.94 43721.41 0.66 2428.97 6 39 0 26 64 199 108 15 true)
(22 2 2 575.06 0.06 15.43 8872.37 0.19 492.91 1 19 0 12 21 60 54 3 true)
(22 5 3 440.83 0.08 12.55 5531.32 0.15 307.3 0 17 0 17 21 53 31 9 true)
(59 7 7 2318.71 0.05 22.14 51324.87 0.77 2851.38 16 23 0 26 74 223 126 13 true)
(19 1 1 561.08 0.08 12 6732.92 0.19 374.05 1 3 0 8 19 61 57 1 true)
(89 24 19 2603.24 0.02 47.6 123914.45 0.87 6884.14 4 62 0 34 55 248 154 32 true)
(32 4 4 648.26 0.05 18.57 12037.08 0.22 668.73 3 24 0 19 22 78 43 7 true)
(74 11 9 2274.9 0.03 36.74 83581.43 0.76 4643.41 7 28 0 32 54 230 124 21 true)
(32 4 4 574.11 0.04 22.75 13060.92 0.19 725.61 0 4 0 14 16 65 52 5 true)
(107 18 10 3366.16 0.02 64.92 218524.86 1.12 12140.27 9 73 0 37 55 323 193 35 true)
(7 1 1 122.62 0.18 5.63 689.76 0.04 38.32 0 0 0 9 8 20 10 1 true)
(19 3 1 439.44 0.1 9.64 4237.49 0.15 235.42 2 22 0 15 21 58 27 5 true)
(18 3 3 297.25 0.11 9.47 2815.15 0.1 156.4 3 34 0 14 17 37 23 5 true)
(22 3 3 439.53 0.09 11.08 4871.43 0.15 270.63 3 11 0 19 24 53 28 5 true)
(20 3 3 330.88 0.1 10.5 3474.19 0.11 193.01 2 19 0 18 18 43 21 5 true)
(8 1 1 103.73 0.2 5 518.63 0.03 28.81 0 7 0 10 10 14 10 1 true)
(44 8 7 971.26 0.08 13.06 12685.78 0.32 704.77 2 31 0 20 49 95 64 15 true)
(91 18 16 4176.06 0.05 21.41 89412.4 1.39 4967.36 4 18 0 22 112 373 218 35 true)
(47 3 3 1563.78 0.04 28 43785.9 0.52 2432.55 2 13 0 23 46 144 112 5 true)
(24 4 3 587.63 0.05 19.13 11241.58 0.2 624.53 1 7 0 22 23 67 40 7 true)
(82 11 10 3155.83 0.02 44.71 141084.24 1.05 7838.01 9 59 0 32 68 285 190 21 true)
(10 2 1 150.41 0.15 6.5 977.69 0.05 54.32 1 12 0 13 13 19 13 3 true)
(28 6 5 564.33 0.06 16.09 9078.38 0.19 504.35 2 7 0 20 23 67 37 11 true)
)))
