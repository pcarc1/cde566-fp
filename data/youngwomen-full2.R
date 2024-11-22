
# Set working directory
# setwd()


new_data <- read.table('youngwomen-full2.dat', sep=' ')
names(new_data) <- c('R0000100',
'R0003100',
'R0557600',
'R0557800',
'R0792800',
'R1302500',
'R1305900',
'R1306900',
'R1307600',
'R1307800',
'R1307900',
'R1471100',
'R3363900',
'R3364000',
'R3364100',
'R3364600',
'R3364700',
'R3364800',
'R3365400',
'R3369800',
'R4131400',
'R4131600',
'R4131700',
'R4132600',
'R4132800',
'R4132900',
'R4133800',
'R4138400',
'R4138600',
'R5088600',
'R5088800',
'R5088900',
'R5089800',
'R5090000',
'R5090100',
'R5091000',
'R5096000',
'R5096200',
'R6182200',
'R6182400',
'R6182500',
'R6183400',
'R6183600',
'R6183700',
'R6184600',
'R6189200',
'R6189400',
'R7286800',
'R7287000',
'R7287100',
'R7288000',
'R7288200',
'R7288300',
'R7289200',
'R7295000',
'R7295200',
'R7477700',
'R7611300',
'R7619200',
'R7619300',
'R7619500')


# Handle missing values

new_data[new_data == -1] = NA  # Refused
new_data[new_data == -2] = NA  # Dont know
new_data[new_data == -3] = NA  # Invalid missing
new_data[new_data == -4] = NA  # Valid missing
new_data[new_data == -5] = NA  # Non-interview


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R1302500 <- factor(data$R1302500,
levels=c(1.0,2.0,3.0),
labels=c("YES, JUST A FEW TIMES",
"YES, REGULARLY",
"NO"))
  data$R1305900 <- factor(data$R1305900,
levels=c(0.0,1.0),
labels=c("NO",
"YES - DIABETES"))
  data$R1306900 <- factor(data$R1306900,
levels=c(0.0,1.0),
labels=c("NO",
"YES - HIGH BLOOD PRESSURE"))
  data$R1471100 <- factor(data$R1471100,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R3363900 <- factor(data$R3363900,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R3364000 <- factor(data$R3364000,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R3364100 <- factor(data$R3364100,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R3364600 <- factor(data$R3364600,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R3364700 <- factor(data$R3364700,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R3365400 <- factor(data$R3365400,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R3369800 <- factor(data$R3369800,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R4131400 <- factor(data$R4131400,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R4131600 <- factor(data$R4131600,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R4131700 <- factor(data$R4131700,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R4132600 <- factor(data$R4132600,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R4132800 <- factor(data$R4132800,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R4133800 <- factor(data$R4133800,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R4138400 <- factor(data$R4138400,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R4138600 <- factor(data$R4138600,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R5088600 <- factor(data$R5088600,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R5088800 <- factor(data$R5088800,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R5088900 <- factor(data$R5088900,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R5089800 <- factor(data$R5089800,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R5090000 <- factor(data$R5090000,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R5091000 <- factor(data$R5091000,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R5096000 <- factor(data$R5096000,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R5096200 <- factor(data$R5096200,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R6182200 <- factor(data$R6182200,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R6182400 <- factor(data$R6182400,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R6182500 <- factor(data$R6182500,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R6183400 <- factor(data$R6183400,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R6183600 <- factor(data$R6183600,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R6184600 <- factor(data$R6184600,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R6189200 <- factor(data$R6189200,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R6189400 <- factor(data$R6189400,
levels=c(0.0,1.0,3.0),
labels=c("NO",
"YES",
"RESPONDENT DISAGREES"))
  data$R7286800 <- factor(data$R7286800,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R7287000 <- factor(data$R7287000,
levels=c(0.0,1.0,3.0),
labels=c("No",
"Yes",
"Respondent  Disagrees"))
  data$R7287100 <- factor(data$R7287100,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R7288000 <- factor(data$R7288000,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R7288200 <- factor(data$R7288200,
levels=c(0.0,1.0,3.0),
labels=c("No",
"Yes",
"Respondent  Disagrees"))
  data$R7289200 <- factor(data$R7289200,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R7295000 <- factor(data$R7295000,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R7295200 <- factor(data$R7295200,
levels=c(0.0,1.0,3.0),
labels=c("No",
"Yes",
"Respondent  Disagrees"))
  data$R7619200 <- factor(data$R7619200,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
return(data)
}


# If there are values not categorized they will be represented as NA

vallabels_continuous = function(data) {
data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 5159.0] <- 1.0
data$R0000100 <- factor(data$R0000100,
levels=c(1.0),
labels=c("1 TO 5159: RESPONDENT'S RECORD NUMBER"))
data$R0003100[-99999.0 <= data$R0003100 & data$R0003100 <= 13.0] <- -99999.0
data$R0003100[30.0 <= data$R0003100 & data$R0003100 <= 99999.0] <- 30.0
data$R0003100 <- factor(data$R0003100,
levels=c(-99999.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0),
labels=c("-99999 TO 13: < 14",
"14: = 14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25",
"26",
"27",
"28",
"29",
"30 TO 99999: 30+"))
data$R0557600[-99999.0 <= data$R0557600 & data$R0557600 <= 0.0] <- -99999.0
data$R0557600[17.0 <= data$R0557600 & data$R0557600 <= 999999.0] <- 17.0
data$R0557600 <- factor(data$R0557600,
levels=c(-99999.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("-99999 TO 0: < 1",
"1: = 1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 999999: 17+"))
data$R0557800[-99999.0 <= data$R0557800 & data$R0557800 <= 43.0] <- -99999.0
data$R0557800[60.0 <= data$R0557800 & data$R0557800 <= 99999.0] <- 60.0
data$R0557800 <- factor(data$R0557800,
levels=c(-99999.0,44.0,45.0,46.0,47.0,48.0,49.0,50.0,51.0,52.0,53.0,54.0,55.0,56.0,57.0,58.0,59.0,60.0),
labels=c("-99999 TO 43: < 44",
"44: = 44",
"45",
"46",
"47",
"48",
"49",
"50",
"51",
"52",
"53",
"54",
"55",
"56",
"57",
"58",
"59",
"60 TO 99999: 60+"))
data$R0792800[-99999.0 <= data$R0792800 & data$R0792800 <= -1.0] <- -99999.0
data$R0792800[16.0 <= data$R0792800 & data$R0792800 <= 99999.0] <- 16.0
data$R0792800 <- factor(data$R0792800,
levels=c(-99999.0,0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0),
labels=c("-99999 TO -1: < 0",
"0: = 0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16 TO 99999: 16+"))
data$R1307600[-999.0 <= data$R1307600 & data$R1307600 <= -6.0] <- -999.0
data$R1307600[1.0 <= data$R1307600 & data$R1307600 <= 24.0] <- 1.0
data$R1307600[25.0 <= data$R1307600 & data$R1307600 <= 49.0] <- 25.0
data$R1307600[50.0 <= data$R1307600 & data$R1307600 <= 74.0] <- 50.0
data$R1307600[75.0 <= data$R1307600 & data$R1307600 <= 99.0] <- 75.0
data$R1307600[100.0 <= data$R1307600 & data$R1307600 <= 124.0] <- 100.0
data$R1307600[125.0 <= data$R1307600 & data$R1307600 <= 149.0] <- 125.0
data$R1307600[150.0 <= data$R1307600 & data$R1307600 <= 174.0] <- 150.0
data$R1307600[175.0 <= data$R1307600 & data$R1307600 <= 199.0] <- 175.0
data$R1307600[200.0 <= data$R1307600 & data$R1307600 <= 224.0] <- 200.0
data$R1307600[225.0 <= data$R1307600 & data$R1307600 <= 249.0] <- 225.0
data$R1307600[250.0 <= data$R1307600 & data$R1307600 <= 9999.0] <- 250.0
data$R1307600 <- factor(data$R1307600,
levels=c(-999.0,0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("-999 TO -6: <0",
"0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 9999: >250"))
data$R1307800[-99999.0 <= data$R1307800 & data$R1307800 <= 0.0] <- -99999.0
data$R1307800[17.0 <= data$R1307800 & data$R1307800 <= 999999.0] <- 17.0
data$R1307800 <- factor(data$R1307800,
levels=c(-99999.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("-99999 TO 0: < 1",
"1: = 1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 999999: 17+"))
data$R1307900[-99999.0 <= data$R1307900 & data$R1307900 <= 0.0] <- -99999.0
data$R1307900[17.0 <= data$R1307900 & data$R1307900 <= 999999.0] <- 17.0
data$R1307900 <- factor(data$R1307900,
levels=c(-99999.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("-99999 TO 0: < 1",
"1: = 1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 999999: 17+"))
data$R3364800[1885.0 <= data$R3364800 & data$R3364800 <= 1900.0] <- 1885.0
data$R3364800[1901.0 <= data$R3364800 & data$R3364800 <= 1949.0] <- 1901.0
data$R3364800[1950.0 <= data$R3364800 & data$R3364800 <= 1969.0] <- 1950.0
data$R3364800[1970.0 <= data$R3364800 & data$R3364800 <= 1979.0] <- 1970.0
data$R3364800[1980.0 <= data$R3364800 & data$R3364800 <= 1984.0] <- 1980.0
data$R3364800[1985.0 <= data$R3364800 & data$R3364800 <= 1989.0] <- 1985.0
data$R3364800[1990.0 <= data$R3364800 & data$R3364800 <= 1991.0] <- 1990.0
data$R3364800[1992.0 <= data$R3364800 & data$R3364800 <= 1993.0] <- 1992.0
data$R3364800[1994.0 <= data$R3364800 & data$R3364800 <= 1995.0] <- 1994.0
data$R3364800[1996.0 <= data$R3364800 & data$R3364800 <= 1997.0] <- 1996.0
data$R3364800[1998.0 <= data$R3364800 & data$R3364800 <= 1999.0] <- 1998.0
data$R3364800 <- factor(data$R3364800,
levels=c(1885.0,1901.0,1950.0,1970.0,1980.0,1985.0,1990.0,1992.0,1994.0,1996.0,1998.0),
labels=c("1885 TO 1900",
"1901 TO 1949",
"1950 TO 1969",
"1970 TO 1979",
"1980 TO 1984",
"1985 TO 1989",
"1990 TO 1991",
"1992 TO 1993",
"1994 TO 1995",
"1996 TO 1997",
"1998 TO 1999"))
data$R4132900[1885.0 <= data$R4132900 & data$R4132900 <= 1900.0] <- 1885.0
data$R4132900[1901.0 <= data$R4132900 & data$R4132900 <= 1949.0] <- 1901.0
data$R4132900[1950.0 <= data$R4132900 & data$R4132900 <= 1969.0] <- 1950.0
data$R4132900[1970.0 <= data$R4132900 & data$R4132900 <= 1979.0] <- 1970.0
data$R4132900[1980.0 <= data$R4132900 & data$R4132900 <= 1984.0] <- 1980.0
data$R4132900[1985.0 <= data$R4132900 & data$R4132900 <= 1989.0] <- 1985.0
data$R4132900[1990.0 <= data$R4132900 & data$R4132900 <= 1991.0] <- 1990.0
data$R4132900[1992.0 <= data$R4132900 & data$R4132900 <= 1993.0] <- 1992.0
data$R4132900[1994.0 <= data$R4132900 & data$R4132900 <= 1995.0] <- 1994.0
data$R4132900[1996.0 <= data$R4132900 & data$R4132900 <= 1997.0] <- 1996.0
data$R4132900[1998.0 <= data$R4132900 & data$R4132900 <= 1999.0] <- 1998.0
data$R4132900 <- factor(data$R4132900,
levels=c(1885.0,1901.0,1950.0,1970.0,1980.0,1985.0,1990.0,1992.0,1994.0,1996.0,1998.0),
labels=c("1885 TO 1900",
"1901 TO 1949",
"1950 TO 1969",
"1970 TO 1979",
"1980 TO 1984",
"1985 TO 1989",
"1990 TO 1991",
"1992 TO 1993",
"1994 TO 1995",
"1996 TO 1997",
"1998 TO 1999"))
data$R5090100[1885.0 <= data$R5090100 & data$R5090100 <= 1900.0] <- 1885.0
data$R5090100[1901.0 <= data$R5090100 & data$R5090100 <= 1949.0] <- 1901.0
data$R5090100[1950.0 <= data$R5090100 & data$R5090100 <= 1969.0] <- 1950.0
data$R5090100[1970.0 <= data$R5090100 & data$R5090100 <= 1979.0] <- 1970.0
data$R5090100[1980.0 <= data$R5090100 & data$R5090100 <= 1984.0] <- 1980.0
data$R5090100[1985.0 <= data$R5090100 & data$R5090100 <= 1989.0] <- 1985.0
data$R5090100[1990.0 <= data$R5090100 & data$R5090100 <= 1991.0] <- 1990.0
data$R5090100[1992.0 <= data$R5090100 & data$R5090100 <= 1993.0] <- 1992.0
data$R5090100[1994.0 <= data$R5090100 & data$R5090100 <= 1995.0] <- 1994.0
data$R5090100[1996.0 <= data$R5090100 & data$R5090100 <= 1997.0] <- 1996.0
data$R5090100[1998.0 <= data$R5090100 & data$R5090100 <= 1999.0] <- 1998.0
data$R5090100 <- factor(data$R5090100,
levels=c(1885.0,1901.0,1950.0,1970.0,1980.0,1985.0,1990.0,1992.0,1994.0,1996.0,1998.0),
labels=c("1885 TO 1900",
"1901 TO 1949",
"1950 TO 1969",
"1970 TO 1979",
"1980 TO 1984",
"1985 TO 1989",
"1990 TO 1991",
"1992 TO 1993",
"1994 TO 1995",
"1996 TO 1997",
"1998 TO 1999"))
data$R6183700[1885.0 <= data$R6183700 & data$R6183700 <= 1900.0] <- 1885.0
data$R6183700[1901.0 <= data$R6183700 & data$R6183700 <= 1949.0] <- 1901.0
data$R6183700[1950.0 <= data$R6183700 & data$R6183700 <= 1969.0] <- 1950.0
data$R6183700[1970.0 <= data$R6183700 & data$R6183700 <= 1979.0] <- 1970.0
data$R6183700[1980.0 <= data$R6183700 & data$R6183700 <= 1984.0] <- 1980.0
data$R6183700[1985.0 <= data$R6183700 & data$R6183700 <= 1989.0] <- 1985.0
data$R6183700[1990.0 <= data$R6183700 & data$R6183700 <= 1991.0] <- 1990.0
data$R6183700[1992.0 <= data$R6183700 & data$R6183700 <= 1993.0] <- 1992.0
data$R6183700[1994.0 <= data$R6183700 & data$R6183700 <= 1995.0] <- 1994.0
data$R6183700[1996.0 <= data$R6183700 & data$R6183700 <= 1997.0] <- 1996.0
data$R6183700[1998.0 <= data$R6183700 & data$R6183700 <= 1999.0] <- 1998.0
data$R6183700[2000.0 <= data$R6183700 & data$R6183700 <= 2001.0] <- 2000.0
data$R6183700 <- factor(data$R6183700,
levels=c(1885.0,1901.0,1950.0,1970.0,1980.0,1985.0,1990.0,1992.0,1994.0,1996.0,1998.0,2000.0),
labels=c("1885 TO 1900",
"1901 TO 1949",
"1950 TO 1969",
"1970 TO 1979",
"1980 TO 1984",
"1985 TO 1989",
"1990 TO 1991",
"1992 TO 1993",
"1994 TO 1995",
"1996 TO 1997",
"1998 TO 1999",
"2000 TO 2001"))
data$R7288300[1885.0 <= data$R7288300 & data$R7288300 <= 1900.0] <- 1885.0
data$R7288300[1901.0 <= data$R7288300 & data$R7288300 <= 1949.0] <- 1901.0
data$R7288300[1950.0 <= data$R7288300 & data$R7288300 <= 1969.0] <- 1950.0
data$R7288300[1970.0 <= data$R7288300 & data$R7288300 <= 1979.0] <- 1970.0
data$R7288300[1980.0 <= data$R7288300 & data$R7288300 <= 1984.0] <- 1980.0
data$R7288300[1985.0 <= data$R7288300 & data$R7288300 <= 1989.0] <- 1985.0
data$R7288300[1990.0 <= data$R7288300 & data$R7288300 <= 1991.0] <- 1990.0
data$R7288300[1992.0 <= data$R7288300 & data$R7288300 <= 1993.0] <- 1992.0
data$R7288300[1994.0 <= data$R7288300 & data$R7288300 <= 1995.0] <- 1994.0
data$R7288300[1996.0 <= data$R7288300 & data$R7288300 <= 1997.0] <- 1996.0
data$R7288300[1998.0 <= data$R7288300 & data$R7288300 <= 1999.0] <- 1998.0
data$R7288300[2000.0 <= data$R7288300 & data$R7288300 <= 2001.0] <- 2000.0
data$R7288300[2002.0 <= data$R7288300 & data$R7288300 <= 2003.0] <- 2002.0
data$R7288300 <- factor(data$R7288300,
levels=c(1885.0,1901.0,1950.0,1970.0,1980.0,1985.0,1990.0,1992.0,1994.0,1996.0,1998.0,2000.0,2002.0),
labels=c("1885 TO 1900",
"1901 TO 1949",
"1950 TO 1969",
"1970 TO 1979",
"1980 TO 1984",
"1985 TO 1989",
"1990 TO 1991",
"1992 TO 1993",
"1994 TO 1995",
"1996 TO 1997",
"1998 TO 1999",
"2000 TO 2001",
"2002 TO 2003"))
data$R7477700[13.0 <= data$R7477700 & data$R7477700 <= 15.0] <- 13.0
data$R7477700[16.0 <= data$R7477700 & data$R7477700 <= 18.0] <- 16.0
data$R7477700[19.0 <= data$R7477700 & data$R7477700 <= 21.0] <- 19.0
data$R7477700[22.0 <= data$R7477700 & data$R7477700 <= 24.0] <- 22.0
data$R7477700[25.0 <= data$R7477700 & data$R7477700 <= 104.0] <- 25.0
data$R7477700 <- factor(data$R7477700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,16.0,19.0,22.0,25.0),
labels=c("0: None",
"1: One",
"2: Two",
"3: Three",
"4: Four",
"5: Five",
"6: Six",
"7: Seven",
"8: Eight",
"9: Nine",
"10: Ten",
"11: Eleven",
"12: Twelve",
"13 TO 15",
"16 TO 18",
"19 TO 21",
"22 TO 24",
"25 TO 104: 25 and over"))
data$R7611300[-99999.0 <= data$R7611300 & data$R7611300 <= -6.0] <- -99999.0
data$R7611300[1.0 <= data$R7611300 & data$R7611300 <= 49999.0] <- 1.0
data$R7611300[50000.0 <= data$R7611300 & data$R7611300 <= 99999.0] <- 50000.0
data$R7611300[100000.0 <= data$R7611300 & data$R7611300 <= 149999.0] <- 100000.0
data$R7611300[150000.0 <= data$R7611300 & data$R7611300 <= 199999.0] <- 150000.0
data$R7611300[200000.0 <= data$R7611300 & data$R7611300 <= 249999.0] <- 200000.0
data$R7611300[250000.0 <= data$R7611300 & data$R7611300 <= 299999.0] <- 250000.0
data$R7611300[300000.0 <= data$R7611300 & data$R7611300 <= 349999.0] <- 300000.0
data$R7611300[350000.0 <= data$R7611300 & data$R7611300 <= 399999.0] <- 350000.0
data$R7611300[400000.0 <= data$R7611300 & data$R7611300 <= 449999.0] <- 400000.0
data$R7611300[450000.0 <= data$R7611300 & data$R7611300 <= 499999.0] <- 450000.0
data$R7611300[500000.0 <= data$R7611300 & data$R7611300 <= 9.99999999E8] <- 500000.0
data$R7611300 <- factor(data$R7611300,
levels=c(-99999.0,0.0,1.0,50000.0,100000.0,150000.0,200000.0,250000.0,300000.0,350000.0,400000.0,450000.0,500000.0),
labels=c("-99999 TO -6: -99999-(-6)",
"0: None",
"1 TO 49999",
"50000 TO 99999",
"100000 TO 149999",
"150000 TO 199999",
"200000 TO 249999",
"250000 TO 299999",
"300000 TO 349999",
"350000 TO 399999",
"400000 TO 449999",
"450000 TO 499999",
"500000 TO 999999999: 500000 and over"))
data$R7619300[1.0 <= data$R7619300 & data$R7619300 <= 9.0] <- 1.0
data$R7619300[10.0 <= data$R7619300 & data$R7619300 <= 19.0] <- 10.0
data$R7619300[20.0 <= data$R7619300 & data$R7619300 <= 29.0] <- 20.0
data$R7619300[30.0 <= data$R7619300 & data$R7619300 <= 39.0] <- 30.0
data$R7619300[40.0 <= data$R7619300 & data$R7619300 <= 49.0] <- 40.0
data$R7619300[50.0 <= data$R7619300 & data$R7619300 <= 59.0] <- 50.0
data$R7619300[60.0 <= data$R7619300 & data$R7619300 <= 69.0] <- 60.0
data$R7619300[70.0 <= data$R7619300 & data$R7619300 <= 79.0] <- 70.0
data$R7619300[80.0 <= data$R7619300 & data$R7619300 <= 89.0] <- 80.0
data$R7619300[90.0 <= data$R7619300 & data$R7619300 <= 99.0] <- 90.0
data$R7619300[100.0 <= data$R7619300 & data$R7619300 <= 199.0] <- 100.0
data$R7619300 <- factor(data$R7619300,
levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0),
labels=c("0: None",
"1 TO 9",
"10 TO 19",
"20 TO 29",
"30 TO 39",
"40 TO 49",
"50 TO 59",
"60 TO 69",
"70 TO 79",
"80 TO 89",
"90 TO 99",
"100 TO 199"))
data$R7619500[1.0 <= data$R7619500 & data$R7619500 <= 9.0] <- 1.0
data$R7619500[10.0 <= data$R7619500 & data$R7619500 <= 19.0] <- 10.0
data$R7619500[20.0 <= data$R7619500 & data$R7619500 <= 29.0] <- 20.0
data$R7619500[30.0 <= data$R7619500 & data$R7619500 <= 39.0] <- 30.0
data$R7619500[40.0 <= data$R7619500 & data$R7619500 <= 49.0] <- 40.0
data$R7619500[50.0 <= data$R7619500 & data$R7619500 <= 59.0] <- 50.0
data$R7619500[60.0 <= data$R7619500 & data$R7619500 <= 69.0] <- 60.0
data$R7619500[70.0 <= data$R7619500 & data$R7619500 <= 79.0] <- 70.0
data$R7619500[80.0 <= data$R7619500 & data$R7619500 <= 89.0] <- 80.0
data$R7619500[90.0 <= data$R7619500 & data$R7619500 <= 99.0] <- 90.0
data$R7619500[100.0 <= data$R7619500 & data$R7619500 <= 199.0] <- 100.0
data$R7619500 <- factor(data$R7619500,
levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0),
labels=c("0: None",
"1 TO 9",
"10 TO 19",
"20 TO 29",
"30 TO 39",
"40 TO 49",
"50 TO 59",
"60 TO 69",
"70 TO 79",
"80 TO 89",
"90 TO 99",
"100 TO 199"))
return(data)
}

varlabels <- c("ID_CODE, 68",
"AGE,68",
"MO R BRTH, 77",
"YR R BRTH, 77",
"#CHLN R HAS HAD, 82",
"SMOKING:HAS R EVER SMOKED CIGS? 91",
"HLTH PROBS HAD MEDICAL COND#22? 91",
"HLTH PROBS HAD MEDICAL COND#32? 91",
"HLTH R  WEIGHT,91",
"HLTH R  HT STOCKING FT 91 (FT)",
"HLTH R  HT STOCKING FT 91 (INCH)",
"SMOKING:R CURRLY SMOKE CIGS? 93",
"R DIAGNOSED WITH HGH BLD PRES/HYPTN? 95",
"DOES R CURR HAVE HGH BLD PRES/HYPTN? 95",
"R TAK MEDCTN FOR HGH BLD PRES/HYPTN? 95",
"EVER DIAGNOSED WITH HEART PROBLEMS? 95",
"R HAVE HEART ATCK/MYCRDL INFRCTN? 95",
"YR MOST RECENT HEART ATTACK, 95",
"CURRENTLY SMOKE CIGARETTES? 95",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 95",
"EVER DIAGNOSED WITH HYPERTENSION? 97",
"CURRENTLY HAVE HYPERTENSION? 97",
"TAKING MEDICATION FOR BLOOD PRESSURE? 97",
"EVER DIAGNOSED WITH HEART PROBLEMS? 97",
"EVER HAVE HEART ATTACK? 97",
"YR MOST RECENT HEART ATTACK, 97",
"CURRENTLY SMOKE CIGARETTES? 97",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 97",
"STILL TAKING PILLS FOR MENOPAUSE? 97",
"EVER DIAGNOSED WITH HYPERTENSION? 99",
"CURRENTLY HAVE HYPERTENSION? 99",
"TAKING MEDICATION FOR BLOOD PRESSURE? 99",
"EVER DIAGNOSED WITH HEART PROBLEMS? 99",
"EVER HAVE HEART ATTACK? 99",
"YR MOST RECENT HEART ATTACK, 99",
"CURRENTLY SMOKE CIGARETTES? 99",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 99",
"STILL TAKING PILLS FOR MENOPAUSE? 99",
"EVER DIAGNOSED WITH HYPERTENSION? 01",
"CURRENTLY HAVE HYPERTENSION? 01",
"TAKING MEDICATION FOR BLOOD PRESSURE? 01",
"EVER DIAGNOSED WITH HEART PROBLEMS? 01",
"EVER HAVE HEART ATTACK? 01",
"YR MOST RECENT HEART ATTACK, 01",
"CURRENTLY SMOKE CIGARETTES? 01",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 01",
"STILL TAKING PILLS FOR MENOPAUSE? 01",
"EVER DIAGNOSED WITH HYPERTENSION? 03",
"CURRENTLY HAVE HYPERTENSION? 03",
"TAKING MEDICATION FOR BLOOD PRESSURE? 03",
"EVER DIAGNOSED WITH HEART PROBLEMS? 03",
"EVER HAVE HEART ATTACK? 03",
"YR MOST RECENT HEART ATTACK, 03",
"CURRENTLY SMOKE CIGARETTES? 03",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 03",
"STILL TAKING PILLS FOR MENOPAUSE? 03",
"TOTAL CHILDREN IN ROSTER, 03",
"TOTAL NET FAMILY INCOME, 03 (SUMMATION)",
"EVER TAKE PILLS MENOPAUSE AGING? 03 SUM",
"AGE START PILLS FOR MENOPAUSE, 03 SUM",
"AGE STOP PILLS FOR MENOPAUSE, 03 SUM"
)


# Use qnames rather than rnums

qnames = function(data) {
names(data) <- c("R0000100_1968",
"R0003100_1968",
"R0557600_1977",
"R0557800_1977",
"R0792800_1982",
"R1302500_1991",
"R1305900_1991",
"R1306900_1991",
"R1307600_1991",
"R1307800_1991",
"R1307900_1991",
"R1471100_1993",
"HEA-8A_1995",
"HEA-8B_1995",
"HEA-8C_1995",
"HEA-10A_1995",
"HEA-10B_1995",
"HEA-10C_1995",
"HEA-11_1995",
"HEA-15G_1995",
"HEA-8A_1997",
"HEA-8B_1997",
"HEA-8C_1997",
"HEA-10A_1997",
"HEA-10B_1997",
"HEA-10C_1997",
"HEA-11_1997",
"HEA-15G_1997",
"HEA-15I_1997",
"HEA-8A_1999",
"HEA-8B_1999",
"HEA-8C_1999",
"HEA-10A_1999",
"HEA-10B_1999",
"HEA-10C_1999",
"HEA-11_1999",
"HEA-15G_1999",
"HEA-15I_1999",
"HEA-8A_2001",
"HEA-8B_2001",
"HEA-8C_2001",
"HEA-10A_2001",
"HEA-10B_2001",
"HEA-10C_2001",
"HEA-11_2001",
"HEA-15G_2001",
"HEA-15I_2001",
"HEA-8A_2003",
"HEA-8B_2003",
"HEA-8C_2003",
"HEA-10A_2003",
"HEA-10B_2003",
"HEA-10C_2003",
"HEA-11_2003",
"HEA-15G_2003",
"HEA-15I_2003",
"TOTCHD_2003",
"SUMMATN_2003",
"LHEA_15G_2003",
"LHEA_15H_2003",
"LHEA_15J_2003")
return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels.
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#categories <- vallabels_continuous(new_data)
#summary(categories)

#************************************************************************************************************

