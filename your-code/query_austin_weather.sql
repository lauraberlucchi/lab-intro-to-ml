USE weather;

SELECT * FROM austin_weather;

/* a) How many days are recorded in the dataset?*/
SELECT COUNT(DISTINCT(Date)) FROM austin_weather AS count_days;

/* b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF)?*/
SELECT * 
FROM austin_weather
ORDER BY TempHighF DESC
LIMIT 1;

/* c) What is the average Humidity across all days? (column HumidityAvgPercent)*/
SELECT AVG(HumidityAvgPercent) AS Avg_Humididy FROM austin_weather;

/* d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?
2016-11-19 00:00:00	63	52	41	33	30	26	67	46	25	30.63	30.54	30.48	10	10	10	13	5	22	0	 
2016-12-08 00:00:00	52	44	36	44	31	20	83	68	52	30.68	30.49	30.27	10	10	9	21	10	32	0	 
2014-12-31 00:00:00	42	39	36	31	29	27	76	70	64	30.57	30.48	30.41	10	10	9	14	8	21	T	 
2017-03-03 00:00:00	71	56	40	38	29	24	70	45	19	30.57	30.48	30.43	10	10	10	14	6	23	0	 
2016-01-01 00:00:00	48	46	44	36	33	28	66	60	53	30.53	30.48	30.38	-	-	-	15	8	24	T	Rain
2015-01-04 00:00:00	51	43	35	41	30	22	100	69	38	30.69	30.48	30.16	10	10	10	16	7	26	0	 
2014-01-23 00:00:00	56	42	27	42	29	20	78	64	50	30.73	30.47	30.06	10	8	2	20	9	31	0.06	Rain , Snow
2014-11-27 00:00:00	64	53	42	37	33	27	76	52	27	30.56	30.45	30.37	10	10	10	10	4	16	0	 
2015-12-04 00:00:00	63	50	37	43	38	35	92	66	39	30.52	30.45	30.4	10	10	10	9	2	13	0	 
2015-02-23 00:00:00	37	34	30	32	29	26	92	87	82	30.54	30.45	30.4	10	7	2	17	9	24	0.01	Rain
*/
SELECT * 
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;


