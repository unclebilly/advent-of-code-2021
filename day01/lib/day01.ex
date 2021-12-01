defmodule Day01 do
  def main(_args) do
    IO.puts inspect(count_increases())
  end

  def count_increases do
    Enum.reduce(0..length(input())-1, fn(index, acc) ->
      [prev, current] = Enum.slice(input(), index - 1, 2)
      if current - prev > 0 do
        acc + 1
      else
        acc
      end
    end)
  end

  def input do
    [
      140,
      154,
      165,
      150,
      151,
      161,
      172,
      174,
      166,
      168,
      176,
      191,
      192,
      189,
      190,
      191,
      202,
      203,
      206,
      207,
      167,
      179,
      204,
      206,
      208,
      209,
      216,
      198,
      200,
      207,
      217,
      218,
      223,
      227,
      228,
      243,
      241,
      246,
      278,
      255,
      256,
      273,
      295,
      291,
      288,
      290,
      303,
      325,
      301,
      292,
      291,
      309,
      313,
      315,
      319,
      339,
      340,
      327,
      336,
      335,
      340,
      331,
      334,
      316,
      317,
      323,
      324,
      323,
      312,
      298,
      291,
      285,
      288,
      266,
      267,
      266,
      258,
      259,
      257,
      259,
      250,
      265,
      270,
      267,
      271,
      272,
      277,
      281,
      277,
      284,
      291,
      283,
      284,
      291,
      292,
      278,
      285,
      296,
      294,
      297,
      298,
      301,
      300,
      311,
      310,
      322,
      320,
      337,
      334,
      333,
      331,
      317,
      323,
      358,
      362,
      364,
      371,
      383,
      424,
      427,
      438,
      443,
      441,
      445,
      444,
      440,
      458,
      460,
      459,
      457,
      455,
      446,
      440,
      439,
      438,
      430,
      422,
      424,
      438,
      449,
      450,
      451,
      443,
      459,
      458,
      479,
      473,
      471,
      478,
      496,
      498,
      488,
      512,
      513,
      523,
      545,
      544,
      543,
      539,
      540,
      553,
      554,
      553,
      561,
      565,
      572,
      576,
      584,
      586,
      591,
      603,
      585,
      600,
      601,
      599,
      596,
      587,
      586,
      587,
      588,
      598,
      601,
      599,
      596,
      588,
      589,
      595,
      588,
      586,
      591,
      598,
      595,
      597,
      616,
      615,
      599,
      598,
      576,
      570,
      573,
      599,
      600,
      601,
      602,
      604,
      605,
      617,
      608,
      607,
      606,
      607,
      605,
      604,
      603,
      601,
      602,
      584,
      590,
      597,
      596,
      600,
      583,
      579,
      582,
      576,
      580,
      583,
      581,
      582,
      558,
      566,
      562,
      581,
      589,
      570,
      571,
      566,
      562,
      564,
      565,
      567,
      564,
      557,
      565,
      566,
      562,
      564,
      567,
      568,
      570,
      554,
      546,
      548,
      511,
      510,
      509,
      507,
      500,
      513,
      510,
      513,
      500,
      502,
      508,
      527,
      531,
      539,
      538,
      545,
      546,
      548,
      555,
      557,
      558,
      561,
      566,
      567,
      571,
      570,
      605,
      627,
      625,
      615,
      617,
      588,
      597,
      599,
      598,
      609,
      612,
      611,
      615,
      617,
      618,
      630,
      622,
      619,
      627,
      674,
      691,
      695,
      715,
      734,
      736,
      737,
      739,
      753,
      751,
      759,
      762,
      732,
      709,
      711,
      730,
      733,
      729,
      746,
      752,
      755,
      756,
      791,
      792,
      793,
      790,
      786,
      808,
      811,
      844,
      834,
      846,
      820,
      821,
      838,
      842,
      844,
      835,
      840,
      843,
      844,
      836,
      837,
      841,
      843,
      852,
      863,
      865,
      870,
      868,
      863,
      865,
      868,
      875,
      886,
      904,
      909,
      917,
      905,
      906,
      905,
      920,
      919,
      917,
      911,
      924,
      899,
      900,
      915,
      923,
      940,
      941,
      921,
      922,
      896,
      908,
      911,
      893,
      892,
      912,
      896,
      900,
      882,
      884,
      901,
      902,
      901,
      907,
      886,
      889,
      888,
      898,
      899,
      896,
      899,
      883,
      900,
      893,
      929,
      907,
      911,
      916,
      910,
      912,
      906,
      911,
      915,
      920,
      921,
      923,
      921,
      922,
      905,
      923,
      922,
      938,
      939,
      941,
      940,
      931,
      960,
      966,
      973,
      986,
      988,
      1008,
      1016,
      1014,
      987,
      993,
      1004,
      1006,
      1004,
      1024,
      1031,
      1032,
      1034,
      1025,
      1022,
      1008,
      1007,
      1010,
      1009,
      997,
      1002,
      1007,
      1010,
      1018,
      1014,
      1016,
      1023,
      1031,
      1032,
      1048,
      1049,
      1056,
      1055,
      1064,
      1065,
      1084,
      1081,
      1084,
      1088,
      1090,
      1109,
      1115,
      1144,
      1146,
      1144,
      1142,
      1143,
      1160,
      1158,
      1163,
      1167,
      1183,
      1184,
      1195,
      1182,
      1181,
      1169,
      1181,
      1175,
      1188,
      1187,
      1188,
      1189,
      1187,
      1195,
      1196,
      1197,
      1216,
      1215,
      1223,
      1222,
      1209,
      1218,
      1223,
      1222,
      1225,
      1196,
      1193,
      1198,
      1200,
      1208,
      1207,
      1216,
      1202,
      1197,
      1172,
      1164,
      1178,
      1179,
      1167,
      1177,
      1178,
      1175,
      1178,
      1191,
      1198,
      1200,
      1208,
      1212,
      1215,
      1225,
      1233,
      1240,
      1243,
      1235,
      1237,
      1244,
      1245,
      1248,
      1249,
      1251,
      1250,
      1256,
      1261,
      1262,
      1244,
      1250,
      1240,
      1234,
      1225,
      1229,
      1216,
      1213,
      1214,
      1206,
      1209,
      1211,
      1205,
      1228,
      1230,
      1232,
      1233,
      1226,
      1216,
      1204,
      1194,
      1196,
      1165,
      1176,
      1186,
      1198,
      1195,
      1204,
      1218,
      1216,
      1219,
      1220,
      1225,
      1229,
      1227,
      1231,
      1241,
      1244,
      1241,
      1249,
      1248,
      1253,
      1254,
      1247,
      1248,
      1249,
      1258,
      1266,
      1270,
      1269,
      1283,
      1298,
      1295,
      1306,
      1309,
      1330,
      1335,
      1339,
      1326,
      1327,
      1291,
      1302,
      1301,
      1313,
      1314,
      1315,
      1318,
      1315,
      1316,
      1315,
      1338,
      1336,
      1341,
      1347,
      1343,
      1368,
      1374,
      1377,
      1378,
      1383,
      1384,
      1367,
      1368,
      1367,
      1378,
      1371,
      1372,
      1373,
      1365,
      1367,
      1366,
      1369,
      1365,
      1367,
      1361,
      1360,
      1368,
      1366,
      1363,
      1366,
      1374,
      1380,
      1364,
      1339,
      1341,
      1340,
      1339,
      1340,
      1341,
      1348,
      1356,
      1358,
      1359,
      1351,
      1356,
      1345,
      1322,
      1323,
      1324,
      1325,
      1326,
      1336,
      1335,
      1331,
      1330,
      1339,
      1331,
      1329,
      1346,
      1343,
      1350,
      1357,
      1358,
      1334,
      1336,
      1335,
      1338,
      1348,
      1346,
      1363,
      1365,
      1368,
      1365,
      1386,
      1383,
      1381,
      1383,
      1379,
      1386,
      1381,
      1384,
      1378,
      1379,
      1372,
      1389,
      1393,
      1389,
      1414,
      1415,
      1414,
      1405,
      1417,
      1418,
      1415,
      1427,
      1429,
      1428,
      1447,
      1430,
      1426,
      1425,
      1410,
      1412,
      1413,
      1427,
      1424,
      1413,
      1401,
      1402,
      1423,
      1431,
      1436,
      1440,
      1447,
      1446,
      1447,
      1446,
      1447,
      1446,
      1451,
      1450,
      1451,
      1450,
      1446,
      1451,
      1456,
      1453,
      1456,
      1459,
      1490,
      1494,
      1493,
      1502,
      1504,
      1524,
      1523,
      1522,
      1539,
      1546,
      1545,
      1552,
      1554,
      1555,
      1557,
      1563,
      1562,
      1566,
      1567,
      1566,
      1567,
      1566,
      1565,
      1568,
      1570,
      1572,
      1573,
      1586,
      1588,
      1590,
      1591,
      1589,
      1607,
      1608,
      1595,
      1596,
      1595,
      1594,
      1599,
      1604,
      1612,
      1608,
      1609,
      1606,
      1603,
      1602,
      1601,
      1613,
      1597,
      1598,
      1585,
      1604,
      1625,
      1626,
      1627,
      1634,
      1636,
      1637,
      1642,
      1637,
      1638,
      1630,
      1632,
      1631,
      1630,
      1639,
      1640,
      1668,
      1647,
      1663,
      1668,
      1646,
      1653,
      1665,
      1667,
      1668,
      1671,
      1679,
      1673,
      1678,
      1679,
      1684,
      1677,
      1678,
      1688,
      1687,
      1686,
      1691,
      1697,
      1699,
      1705,
      1717,
      1685,
      1708,
      1707,
      1708,
      1706,
      1709,
      1699,
      1700,
      1699,
      1710,
      1709,
      1708,
      1714,
      1728,
      1721,
      1715,
      1717,
      1694,
      1706,
      1720,
      1722,
      1730,
      1722,
      1728,
      1730,
      1737,
      1755,
      1763,
      1747,
      1742,
      1743,
      1727,
      1736,
      1730,
      1742,
      1744,
      1734,
      1726,
      1707,
      1720,
      1719,
      1725,
      1683,
      1682,
      1683,
      1688,
      1682,
      1681,
      1682,
      1684,
      1689,
      1649,
      1650,
      1652,
      1655,
      1662,
      1665,
      1666,
      1667,
      1689,
      1684,
      1677,
      1678,
      1667,
      1666,
      1670,
      1672,
      1670,
      1675,
      1672,
      1659,
      1660,
      1689,
      1688,
      1691,
      1696,
      1687,
      1689,
      1688,
      1689,
      1690,
      1695,
      1705,
      1710,
      1713,
      1715,
      1706,
      1703,
      1707,
      1683,
      1677,
      1670,
      1664,
      1675,
      1676,
      1681,
      1682,
      1679,
      1673,
      1678,
      1668,
      1685,
      1703,
      1716,
      1712,
      1709,
      1715,
      1720,
      1730,
      1735,
      1741,
      1754,
      1740,
      1749,
      1750,
      1753,
      1746,
      1753,
      1768,
      1780,
      1781,
      1818,
      1821,
      1831,
      1830,
      1838,
      1839,
      1838,
      1843,
      1829,
      1833,
      1835,
      1847,
      1845,
      1849,
      1850,
      1852,
      1828,
      1830,
      1836,
      1839,
      1855,
      1857,
      1837,
      1838,
      1843,
      1830,
      1825,
      1848,
      1838,
      1840,
      1843,
      1831,
      1813,
      1816,
      1815,
      1810,
      1809,
      1817,
      1816,
      1818,
      1806,
      1802,
      1803,
      1807,
      1805,
      1770,
      1759,
      1757,
      1756,
      1759,
      1751,
      1752,
      1753,
      1747,
      1755,
      1762,
      1766,
      1767,
      1777,
      1778,
      1772,
      1784,
      1783,
      1789,
      1795,
      1797,
      1823,
      1824,
      1820,
      1823,
      1824,
      1843,
      1866,
      1868,
      1864,
      1860,
      1861,
      1864,
      1862,
      1849,
      1850,
      1862,
      1860,
      1862,
      1863,
      1862,
      1870,
      1893,
      1896,
      1897,
      1888,
      1889,
      1913,
      1914,
      1911,
      1924,
      1928,
      1943,
      1958,
      1957,
      1951,
      1939,
      1929,
      1931,
      1930,
      1928,
      1930,
      1946,
      1954,
      1955,
      1944,
      1934,
      1935,
      1950,
      1957,
      1956,
      1957,
      1958,
      1952,
      1951,
      1954,
      1953,
      1941,
      1949,
      1950,
      1968,
      1961,
      1960,
      1955,
      1949,
      1946,
      1918,
      1919,
      1920,
      1933,
      1934,
      1936,
      1937,
      1942,
      1913,
      1919,
      1920,
      1921,
      1925,
      1924,
      1925,
      1932,
      1935,
      1937,
      1927,
      1913,
      1916,
      1922,
      1906,
      1907,
      1908,
      1901,
      1897,
      1901,
      1899,
      1900,
      1902,
      1903,
      1896,
      1901,
      1904,
      1909,
      1901,
      1912,
      1914,
      1910,
      1913,
      1914,
      1915,
      1917,
      1921,
      1922,
      1920,
      1919,
      1912,
      1909,
      1911,
      1908,
      1909,
      1950,
      1953,
      1983,
      1989,
      1993,
      1992,
      1994,
      1997,
      1980,
      1990,
      1991,
      2011,
      2016,
      2015,
      2026,
      2030,
      2033,
      2044,
      2039,
      2040,
      2042,
      2044,
      2053,
      2054,
      2033,
      2030,
      2029,
      2030,
      2013,
      2016,
      2027,
      2021,
      2017,
      2018,
      2011,
      2009,
      2008,
      2007,
      2004,
      1994,
      1992,
      1973,
      1974,
      1969,
      1963,
      1968,
      1969,
      1967,
      1980,
      1981,
      1984,
      1981,
      1977,
      1982,
      2002,
      2007,
      2003,
      2000,
      2019,
      2013,
      2014,
      2017,
      2054,
      2081,
      2079,
      2077,
      2078,
      2064,
      2063,
      2065,
      2061,
      2051,
      2069,
      2095,
      2093,
      2098,
      2095,
      2084,
      2085,
      2087,
      2088,
      2082,
      2080,
      2081,
      2082,
      2079,
      2068,
      2072,
      2073,
      2092,
      2096,
      2097,
      2078,
      2083,
      2090,
      2081,
      2093,
      2077,
      2084,
      2087,
      2074,
      2075,
      2061,
      2052,
      2058,
      2065,
      2052,
      2053,
      2055,
      2067,
      2063,
      2072,
      2077,
      2075,
      2081,
      2082,
      2089,
      2109,
      2110,
      2107,
      2102,
      2098,
      2085,
      2089,
      2091,
      2097,
      2087,
      2077,
      2073,
      2079,
      2074,
      2076,
      2077,
      2078,
      2061,
      2076,
      2077,
      2080,
      2091,
      2074,
      2075,
      2080,
      2085,
      2090,
      2095,
      2103,
      2106,
      2108,
      2116,
      2120,
      2128,
      2129,
      2130,
      2146,
      2153,
      2166,
      2165,
      2169,
      2173,
      2158,
      2149,
      2154,
      2162,
      2161,
      2162,
      2164,
      2165,
      2166,
      2167,
      2159,
      2180,
      2181,
      2177,
      2193,
      2208,
      2206,
      2214,
      2216,
      2239,
      2218,
      2219,
      2228,
      2203,
      2204,
      2212,
      2211,
      2219,
      2227,
      2228,
      2229,
      2230,
      2231,
      2228,
      2237,
      2236,
      2245,
      2246,
      2244,
      2252,
      2262,
      2260,
      2270,
      2269,
      2270,
      2289,
      2290,
      2313,
      2289,
      2292,
      2293,
      2295,
      2300,
      2301,
      2302,
      2314,
      2317,
      2329,
      2330,
      2310,
      2313,
      2314,
      2293,
      2294,
      2299,
      2300,
      2323,
      2325,
      2320,
      2317,
      2323,
      2310,
      2296,
      2297,
      2293,
      2320,
      2310,
      2311,
      2315,
      2319,
      2320,
      2328,
      2338,
      2345,
      2349,
      2370,
      2374,
      2376,
      2375,
      2370,
      2372,
      2373,
      2374,
      2377,
      2388,
      2392,
      2355,
      2361,
      2397,
      2398,
      2386,
      2400,
      2398,
      2399,
      2383,
      2384,
      2394,
      2397,
      2400,
      2401,
      2406,
      2409,
      2411,
      2426,
      2447,
      2441,
      2443,
      2418,
      2417,
      2418,
      2407,
      2408,
      2409,
      2423,
      2420,
      2394,
      2393,
      2401,
      2410,
      2404,
      2423,
      2429,
      2431,
      2432,
      2405,
      2406,
      2407,
      2400,
      2401,
      2390,
      2389,
      2391,
      2387,
      2388,
      2399,
      2415,
      2416,
      2421,
      2420,
      2424,
      2432,
      2436,
      2419,
      2422,
      2421,
      2411,
      2426,
      2427,
      2441,
      2433,
      2439,
      2431,
      2429,
      2431,
      2434,
      2442,
      2456,
      2439,
      2440,
      2443,
      2452,
      2453,
      2456,
      2459,
      2458,
      2470,
      2471,
      2470,
      2471,
      2474,
      2475,
      2480,
      2477,
      2473,
      2472,
      2501,
      2500,
      2507,
      2516,
      2530,
      2548,
      2557,
      2589,
      2587,
      2589,
      2593,
      2598,
      2600,
      2603,
      2605,
      2604,
      2605,
      2606,
      2614,
      2615,
      2623,
      2626,
      2638,
      2632,
      2635,
      2641,
      2642,
      2641,
      2660,
      2661,
      2685,
      2683,
      2689,
      2693,
      2674,
      2676,
      2698,
      2727,
      2725,
      2716,
      2735,
      2729,
      2753,
      2756,
      2765,
      2766,
      2774,
      2775,
      2774,
      2775,
      2779,
      2785,
      2806,
      2803,
      2813,
      2803,
      2801,
      2802,
      2781,
      2782,
      2780,
      2785,
      2788,
      2784,
      2779,
      2755,
      2758,
      2759,
      2773,
      2774,
      2776,
      2779,
      2802,
      2787,
      2781,
      2785,
      2779,
      2778,
      2776,
      2779,
      2781,
      2777,
      2772,
      2771,
      2756,
      2758,
      2764,
      2776,
      2775,
      2768,
      2771,
      2769,
      2764,
      2765,
      2764,
      2754,
      2755,
      2753,
      2767,
      2770,
      2774,
      2783,
      2782,
      2783,
      2778,
      2782,
      2784,
      2775,
      2778,
      2774,
      2773,
      2774,
      2776,
      2784,
      2796,
      2797,
      2796,
      2807,
      2798,
      2799,
      2800,
      2801,
      2802,
      2805,
      2817,
      2818,
      2809,
      2819,
      2818,
      2800,
      2796,
      2795,
      2796,
      2797,
      2799,
      2805,
      2833,
      2835,
      2804,
      2809,
      2810,
      2784,
      2806,
      2815,
      2824,
      2849,
      2837,
      2832,
      2831,
      2839,
      2841,
      2843,
      2844,
      2856,
      2855,
      2858,
      2857,
      2852,
      2858,
      2850,
      2845,
      2841,
      2831,
      2825,
      2818,
      2820,
      2819,
      2822,
      2831,
      2832,
      2825,
      2824,
      2821,
      2822,
      2807,
      2808,
      2810,
      2823,
      2811,
      2821,
      2813,
      2822,
      2810,
      2818,
      2824,
      2837,
      2851,
      2852,
      2835,
      2831,
      2832,
      2820,
      2801,
      2802,
      2803,
      2812,
      2840,
      2838,
      2841,
      2843,
      2846,
      2854,
      2856,
      2857,
      2886,
      2900,
      2906,
      2907,
      2902,
      2910,
      2918,
      2925,
      2926,
      2924,
      2925,
      2918,
      2925,
      2913,
      2912,
      2932,
      2938,
      2936,
      2941,
      2948,
      2950,
      2951,
      2954,
      2958,
      2961,
      2966,
      2995,
      2999,
      3005,
      3017,
      3025,
      3024,
      3025,
      3027,
      3030,
      3034,
      3030,
      3032,
      3035,
      3034,
      3033,
      3032,
      3033,
      3024,
      3027,
      3028,
      3029,
      3030,
      3034,
      3064,
      3050,
      3056,
      3053,
      3065,
      3072,
      3067,
      3065,
      3068,
      3086,
      3089,
      3100,
      3109,
      3104,
      3105,
      3108,
      3098,
      3105,
      3110,
      3111,
      3129,
      3137,
      3138,
      3121,
      3113,
      3125,
      3133,
      3135,
      3137,
      3143,
      3133,
      3134,
      3133,
      3137,
      3145,
      3164,
      3169,
      3170,
      3184,
      3165,
      3168,
      3166,
      3159,
      3158,
      3165,
      3162,
      3145,
      3133,
      3134,
      3149,
      3153,
      3151,
      3158,
      3160,
      3161,
      3164,
      3165,
      3159,
      3145,
      3146,
      3147,
      3148,
      3131,
      3140,
      3148,
      3144,
      3167,
      3149,
      3150,
      3142,
      3115,
      3129,
      3134,
      3136,
      3141,
      3164,
      3165,
      3162,
      3161,
      3169,
      3170,
      3169,
      3171,
      3167,
      3173,
      3181,
      3186,
      3187,
      3186,
      3190,
      3191,
      3193,
      3194,
      3204,
      3205,
      3222,
      3221,
      3231,
      3232,
      3233,
      3234,
      3231,
      3240,
      3246,
      3258,
      3260,
      3277,
      3278,
      3274,
      3275,
      3273,
      3276,
      3270,
      3290,
      3292,
      3300,
      3320,
      3324,
      3323,
      3321,
      3320,
      3301,
      3308,
      3305,
      3306,
      3301,
      3309,
      3306,
      3327,
      3334,
      3333,
      3338,
      3339,
      3341,
      3342,
      3353,
      3325,
      3333,
      3342,
      3329,
      3330,
      3323,
      3320,
      3334,
      3347,
      3336,
      3324,
      3330,
      3328,
      3324,
      3321,
      3322,
      3325,
      3311,
      3313,
      3311,
      3340,
      3342,
      3346,
      3350,
      3351,
      3334,
      3360,
      3344,
      3347,
      3341,
      3344,
      3358,
      3350,
      3344,
      3354,
      3349,
      3363,
      3380,
      3372,
      3375,
      3369,
      3365,
      3376,
      3375,
      3381,
      3380,
      3385,
      3405,
      3407,
      3408,
      3411,
      3406,
      3408,
      3410,
      3414,
      3438,
      3459,
      3456,
      3457,
      3449,
      3452,
      3455,
      3460,
      3465,
      3466,
      3468,
      3466,
      3465,
      3466,
      3467,
      3472,
      3468,
      3462,
      3489,
      3492,
      3494,
      3470,
      3466,
      3478,
      3494,
      3481,
      3497,
      3498,
      3499,
      3500,
      3502,
      3492,
      3489,
      3502,
      3503,
      3518,
      3523,
      3526,
      3534,
      3536,
      3542,
      3545,
      3548,
      3549,
      3551,
      3554,
      3546,
      3570,
      3584,
      3585,
      3552,
      3551,
      3558,
      3559,
      3560,
      3558,
      3551,
      3556,
      3549,
      3541,
      3544,
      3559,
      3577,
      3581,
      3562,
      3564,
      3565,
      3547,
      3551,
      3552,
      3557,
      3569,
      3571,
      3563,
      3575,
      3587,
      3591,
      3595,
      3596,
    ]
  end
end
