
# Set working directory
# setwd()


new_data <- read.table('maturewomen-full.dat', sep=' ')
names(new_data) <- c('R0000100',
'R0002200',
'R0817100',
'R0817200',
'R1075300',
'R1075500',
'R1075600',
'R3363900',
'R3364000',
'R3364100',
'R3364600',
'R3364700',
'R3364800',
'R3365400',
'R3369800',
'R3369900',
'R3370000',
'R3370100',
'R4131400',
'R4131600',
'R4131700',
'R4132600',
'R4132800',
'R4132900',
'R4138400',
'R4138500',
'R4138600',
'R4138700',
'R5088600',
'R5088800',
'R5088900',
'R5089800',
'R5090000',
'R5090100',
'R5096000',
'R5096100',
'R5096200',
'R5096300',
'R6182200',
'R6182400',
'R6182500',
'R6183400',
'R6183600',
'R6183700',
'R6189200',
'R6189300',
'R6189400',
'R6189500',
'R7286800',
'R7287000',
'R7287100',
'R7288000',
'R7288200',
'R7288300',
'R7295000',
'R7295100',
'R7295200',
'R7295300',
'R7477700',
'R7611100',
'R7619200',
'R7619300',
'R7619400',
'R7619500')


# Handle missing values

new_data[new_data == -1] = NA  # Refused
new_data[new_data == -2] = NA  # Dont know
new_data[new_data == -3] = NA  # Invalid missing
new_data[new_data == -4] = NA  # Valid missing
new_data[new_data == -5] = NA  # Non-interview


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
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
  data$R3370000 <- factor(data$R3370000,
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
  data$R7619400 <- factor(data$R7619400,
levels=c(0.0,1.0,3.0),
labels=c("No",
"Yes",
"Respondent  Disagrees"))
return(data)
}


# If there are values not categorized they will be represented as NA

vallabels_continuous = function(data) {
data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 5083.0] <- 1.0
data$R0000100 <- factor(data$R0000100,
levels=c(1.0),
labels=c("1 TO 5083: 001 thru 5083 RESPONDENTS RECORD NUMBER"))
data$R0002200[-99999.0 <= data$R0002200 & data$R0002200 <= 29.0] <- -99999.0
data$R0002200[46.0 <= data$R0002200 & data$R0002200 <= 99999.0] <- 46.0
data$R0002200 <- factor(data$R0002200,
levels=c(-99999.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0,37.0,38.0,39.0,40.0,41.0,42.0,43.0,44.0,45.0,46.0),
labels=c("-99999 TO 29: < 30",
"30",
"31",
"32",
"33",
"34",
"35",
"36",
"37",
"38",
"39",
"40",
"41",
"42",
"43",
"44",
"45",
"46 TO 99999: 46+"))
data$R0817100[-99999.0 <= data$R0817100 & data$R0817100 <= 19.0] <- -99999.0
data$R0817100[36.0 <= data$R0817100 & data$R0817100 <= 99999.0] <- 36.0
data$R0817100 <- factor(data$R0817100,
levels=c(-99999.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0,31.0,32.0,33.0,34.0,35.0,36.0),
labels=c("-99999 TO 19: < 20",
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
"30",
"31",
"32",
"33",
"34",
"35",
"36 TO 99999: 36+"))
data$R0817200[-99999.0 <= data$R0817200 & data$R0817200 <= 0.0] <- -99999.0
data$R0817200[17.0 <= data$R0817200 & data$R0817200 <= 99999.0] <- 17.0
data$R0817200 <- factor(data$R0817200,
levels=c(-99999.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("-99999 TO 0: < 1",
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
"16",
"17 TO 99999: 17+"))
data$R1075300[-999.0 <= data$R1075300 & data$R1075300 <= -6.0] <- -999.0
data$R1075300[1.0 <= data$R1075300 & data$R1075300 <= 24.0] <- 1.0
data$R1075300[25.0 <= data$R1075300 & data$R1075300 <= 49.0] <- 25.0
data$R1075300[50.0 <= data$R1075300 & data$R1075300 <= 74.0] <- 50.0
data$R1075300[75.0 <= data$R1075300 & data$R1075300 <= 99.0] <- 75.0
data$R1075300[100.0 <= data$R1075300 & data$R1075300 <= 124.0] <- 100.0
data$R1075300[125.0 <= data$R1075300 & data$R1075300 <= 149.0] <- 125.0
data$R1075300[150.0 <= data$R1075300 & data$R1075300 <= 174.0] <- 150.0
data$R1075300[175.0 <= data$R1075300 & data$R1075300 <= 199.0] <- 175.0
data$R1075300[200.0 <= data$R1075300 & data$R1075300 <= 224.0] <- 200.0
data$R1075300[225.0 <= data$R1075300 & data$R1075300 <= 249.0] <- 225.0
data$R1075300[250.0 <= data$R1075300 & data$R1075300 <= 9999.0] <- 250.0
data$R1075300 <- factor(data$R1075300,
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
data$R1075500[-99999.0 <= data$R1075500 & data$R1075500 <= 0.0] <- -99999.0
data$R1075500[17.0 <= data$R1075500 & data$R1075500 <= 99999.0] <- 17.0
data$R1075500 <- factor(data$R1075500,
levels=c(-99999.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("-99999 TO 0: < 1",
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
"16",
"17 TO 99999: 17+"))
data$R1075600[-99999.0 <= data$R1075600 & data$R1075600 <= 0.0] <- -99999.0
data$R1075600[17.0 <= data$R1075600 & data$R1075600 <= 99999.0] <- 17.0
data$R1075600 <- factor(data$R1075600,
levels=c(-99999.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("-99999 TO 0: < 1",
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
"16",
"17 TO 99999: 17+"))
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
data$R3369900[1.0 <= data$R3369900 & data$R3369900 <= 9.0] <- 1.0
data$R3369900[10.0 <= data$R3369900 & data$R3369900 <= 19.0] <- 10.0
data$R3369900[20.0 <= data$R3369900 & data$R3369900 <= 29.0] <- 20.0
data$R3369900[30.0 <= data$R3369900 & data$R3369900 <= 39.0] <- 30.0
data$R3369900[40.0 <= data$R3369900 & data$R3369900 <= 49.0] <- 40.0
data$R3369900[50.0 <= data$R3369900 & data$R3369900 <= 59.0] <- 50.0
data$R3369900[60.0 <= data$R3369900 & data$R3369900 <= 69.0] <- 60.0
data$R3369900[70.0 <= data$R3369900 & data$R3369900 <= 79.0] <- 70.0
data$R3369900[80.0 <= data$R3369900 & data$R3369900 <= 89.0] <- 80.0
data$R3369900[90.0 <= data$R3369900 & data$R3369900 <= 99.0] <- 90.0
data$R3369900[100.0 <= data$R3369900 & data$R3369900 <= 199.0] <- 100.0
data$R3369900 <- factor(data$R3369900,
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
data$R3370100[1.0 <= data$R3370100 & data$R3370100 <= 9.0] <- 1.0
data$R3370100[10.0 <= data$R3370100 & data$R3370100 <= 19.0] <- 10.0
data$R3370100[20.0 <= data$R3370100 & data$R3370100 <= 29.0] <- 20.0
data$R3370100[30.0 <= data$R3370100 & data$R3370100 <= 39.0] <- 30.0
data$R3370100[40.0 <= data$R3370100 & data$R3370100 <= 49.0] <- 40.0
data$R3370100[50.0 <= data$R3370100 & data$R3370100 <= 59.0] <- 50.0
data$R3370100[60.0 <= data$R3370100 & data$R3370100 <= 69.0] <- 60.0
data$R3370100[70.0 <= data$R3370100 & data$R3370100 <= 79.0] <- 70.0
data$R3370100[80.0 <= data$R3370100 & data$R3370100 <= 89.0] <- 80.0
data$R3370100[90.0 <= data$R3370100 & data$R3370100 <= 99.0] <- 90.0
data$R3370100[100.0 <= data$R3370100 & data$R3370100 <= 199.0] <- 100.0
data$R3370100 <- factor(data$R3370100,
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
data$R4138500[1.0 <= data$R4138500 & data$R4138500 <= 9.0] <- 1.0
data$R4138500[10.0 <= data$R4138500 & data$R4138500 <= 19.0] <- 10.0
data$R4138500[20.0 <= data$R4138500 & data$R4138500 <= 29.0] <- 20.0
data$R4138500[30.0 <= data$R4138500 & data$R4138500 <= 39.0] <- 30.0
data$R4138500[40.0 <= data$R4138500 & data$R4138500 <= 49.0] <- 40.0
data$R4138500[50.0 <= data$R4138500 & data$R4138500 <= 59.0] <- 50.0
data$R4138500[60.0 <= data$R4138500 & data$R4138500 <= 69.0] <- 60.0
data$R4138500[70.0 <= data$R4138500 & data$R4138500 <= 79.0] <- 70.0
data$R4138500[80.0 <= data$R4138500 & data$R4138500 <= 89.0] <- 80.0
data$R4138500[90.0 <= data$R4138500 & data$R4138500 <= 99.0] <- 90.0
data$R4138500[100.0 <= data$R4138500 & data$R4138500 <= 199.0] <- 100.0
data$R4138500 <- factor(data$R4138500,
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
data$R4138700[1.0 <= data$R4138700 & data$R4138700 <= 9.0] <- 1.0
data$R4138700[10.0 <= data$R4138700 & data$R4138700 <= 19.0] <- 10.0
data$R4138700[20.0 <= data$R4138700 & data$R4138700 <= 29.0] <- 20.0
data$R4138700[30.0 <= data$R4138700 & data$R4138700 <= 39.0] <- 30.0
data$R4138700[40.0 <= data$R4138700 & data$R4138700 <= 49.0] <- 40.0
data$R4138700[50.0 <= data$R4138700 & data$R4138700 <= 59.0] <- 50.0
data$R4138700[60.0 <= data$R4138700 & data$R4138700 <= 69.0] <- 60.0
data$R4138700[70.0 <= data$R4138700 & data$R4138700 <= 79.0] <- 70.0
data$R4138700[80.0 <= data$R4138700 & data$R4138700 <= 89.0] <- 80.0
data$R4138700[90.0 <= data$R4138700 & data$R4138700 <= 99.0] <- 90.0
data$R4138700[100.0 <= data$R4138700 & data$R4138700 <= 199.0] <- 100.0
data$R4138700 <- factor(data$R4138700,
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
data$R5096100[1.0 <= data$R5096100 & data$R5096100 <= 9.0] <- 1.0
data$R5096100[10.0 <= data$R5096100 & data$R5096100 <= 19.0] <- 10.0
data$R5096100[20.0 <= data$R5096100 & data$R5096100 <= 29.0] <- 20.0
data$R5096100[30.0 <= data$R5096100 & data$R5096100 <= 39.0] <- 30.0
data$R5096100[40.0 <= data$R5096100 & data$R5096100 <= 49.0] <- 40.0
data$R5096100[50.0 <= data$R5096100 & data$R5096100 <= 59.0] <- 50.0
data$R5096100[60.0 <= data$R5096100 & data$R5096100 <= 69.0] <- 60.0
data$R5096100[70.0 <= data$R5096100 & data$R5096100 <= 79.0] <- 70.0
data$R5096100[80.0 <= data$R5096100 & data$R5096100 <= 89.0] <- 80.0
data$R5096100[90.0 <= data$R5096100 & data$R5096100 <= 99.0] <- 90.0
data$R5096100[100.0 <= data$R5096100 & data$R5096100 <= 199.0] <- 100.0
data$R5096100 <- factor(data$R5096100,
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
data$R5096300[1.0 <= data$R5096300 & data$R5096300 <= 9.0] <- 1.0
data$R5096300[10.0 <= data$R5096300 & data$R5096300 <= 19.0] <- 10.0
data$R5096300[20.0 <= data$R5096300 & data$R5096300 <= 29.0] <- 20.0
data$R5096300[30.0 <= data$R5096300 & data$R5096300 <= 39.0] <- 30.0
data$R5096300[40.0 <= data$R5096300 & data$R5096300 <= 49.0] <- 40.0
data$R5096300[50.0 <= data$R5096300 & data$R5096300 <= 59.0] <- 50.0
data$R5096300[60.0 <= data$R5096300 & data$R5096300 <= 69.0] <- 60.0
data$R5096300[70.0 <= data$R5096300 & data$R5096300 <= 79.0] <- 70.0
data$R5096300[80.0 <= data$R5096300 & data$R5096300 <= 89.0] <- 80.0
data$R5096300[90.0 <= data$R5096300 & data$R5096300 <= 99.0] <- 90.0
data$R5096300[100.0 <= data$R5096300 & data$R5096300 <= 199.0] <- 100.0
data$R5096300 <- factor(data$R5096300,
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
data$R6189300[1.0 <= data$R6189300 & data$R6189300 <= 9.0] <- 1.0
data$R6189300[10.0 <= data$R6189300 & data$R6189300 <= 19.0] <- 10.0
data$R6189300[20.0 <= data$R6189300 & data$R6189300 <= 29.0] <- 20.0
data$R6189300[30.0 <= data$R6189300 & data$R6189300 <= 39.0] <- 30.0
data$R6189300[40.0 <= data$R6189300 & data$R6189300 <= 49.0] <- 40.0
data$R6189300[50.0 <= data$R6189300 & data$R6189300 <= 59.0] <- 50.0
data$R6189300[60.0 <= data$R6189300 & data$R6189300 <= 69.0] <- 60.0
data$R6189300[70.0 <= data$R6189300 & data$R6189300 <= 79.0] <- 70.0
data$R6189300[80.0 <= data$R6189300 & data$R6189300 <= 89.0] <- 80.0
data$R6189300[90.0 <= data$R6189300 & data$R6189300 <= 99.0] <- 90.0
data$R6189300[100.0 <= data$R6189300 & data$R6189300 <= 199.0] <- 100.0
data$R6189300 <- factor(data$R6189300,
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
data$R6189500[1.0 <= data$R6189500 & data$R6189500 <= 9.0] <- 1.0
data$R6189500[10.0 <= data$R6189500 & data$R6189500 <= 19.0] <- 10.0
data$R6189500[20.0 <= data$R6189500 & data$R6189500 <= 29.0] <- 20.0
data$R6189500[30.0 <= data$R6189500 & data$R6189500 <= 39.0] <- 30.0
data$R6189500[40.0 <= data$R6189500 & data$R6189500 <= 49.0] <- 40.0
data$R6189500[50.0 <= data$R6189500 & data$R6189500 <= 59.0] <- 50.0
data$R6189500[60.0 <= data$R6189500 & data$R6189500 <= 69.0] <- 60.0
data$R6189500[70.0 <= data$R6189500 & data$R6189500 <= 79.0] <- 70.0
data$R6189500[80.0 <= data$R6189500 & data$R6189500 <= 89.0] <- 80.0
data$R6189500[90.0 <= data$R6189500 & data$R6189500 <= 99.0] <- 90.0
data$R6189500[100.0 <= data$R6189500 & data$R6189500 <= 199.0] <- 100.0
data$R6189500 <- factor(data$R6189500,
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
data$R7295100[1.0 <= data$R7295100 & data$R7295100 <= 9.0] <- 1.0
data$R7295100[10.0 <= data$R7295100 & data$R7295100 <= 19.0] <- 10.0
data$R7295100[20.0 <= data$R7295100 & data$R7295100 <= 29.0] <- 20.0
data$R7295100[30.0 <= data$R7295100 & data$R7295100 <= 39.0] <- 30.0
data$R7295100[40.0 <= data$R7295100 & data$R7295100 <= 49.0] <- 40.0
data$R7295100[50.0 <= data$R7295100 & data$R7295100 <= 59.0] <- 50.0
data$R7295100[60.0 <= data$R7295100 & data$R7295100 <= 69.0] <- 60.0
data$R7295100[70.0 <= data$R7295100 & data$R7295100 <= 79.0] <- 70.0
data$R7295100[80.0 <= data$R7295100 & data$R7295100 <= 89.0] <- 80.0
data$R7295100[90.0 <= data$R7295100 & data$R7295100 <= 99.0] <- 90.0
data$R7295100[100.0 <= data$R7295100 & data$R7295100 <= 199.0] <- 100.0
data$R7295100 <- factor(data$R7295100,
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
data$R7295300[1.0 <= data$R7295300 & data$R7295300 <= 9.0] <- 1.0
data$R7295300[10.0 <= data$R7295300 & data$R7295300 <= 19.0] <- 10.0
data$R7295300[20.0 <= data$R7295300 & data$R7295300 <= 29.0] <- 20.0
data$R7295300[30.0 <= data$R7295300 & data$R7295300 <= 39.0] <- 30.0
data$R7295300[40.0 <= data$R7295300 & data$R7295300 <= 49.0] <- 40.0
data$R7295300[50.0 <= data$R7295300 & data$R7295300 <= 59.0] <- 50.0
data$R7295300[60.0 <= data$R7295300 & data$R7295300 <= 69.0] <- 60.0
data$R7295300[70.0 <= data$R7295300 & data$R7295300 <= 79.0] <- 70.0
data$R7295300[80.0 <= data$R7295300 & data$R7295300 <= 89.0] <- 80.0
data$R7295300[90.0 <= data$R7295300 & data$R7295300 <= 99.0] <- 90.0
data$R7295300[100.0 <= data$R7295300 & data$R7295300 <= 199.0] <- 100.0
data$R7295300 <- factor(data$R7295300,
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
data$R7611100[-99999.0 <= data$R7611100 & data$R7611100 <= -6.0] <- -99999.0
data$R7611100[1.0 <= data$R7611100 & data$R7611100 <= 49999.0] <- 1.0
data$R7611100[50000.0 <= data$R7611100 & data$R7611100 <= 99999.0] <- 50000.0
data$R7611100[100000.0 <= data$R7611100 & data$R7611100 <= 149999.0] <- 100000.0
data$R7611100[150000.0 <= data$R7611100 & data$R7611100 <= 199999.0] <- 150000.0
data$R7611100[200000.0 <= data$R7611100 & data$R7611100 <= 249999.0] <- 200000.0
data$R7611100[250000.0 <= data$R7611100 & data$R7611100 <= 299999.0] <- 250000.0
data$R7611100[300000.0 <= data$R7611100 & data$R7611100 <= 349999.0] <- 300000.0
data$R7611100[350000.0 <= data$R7611100 & data$R7611100 <= 399999.0] <- 350000.0
data$R7611100[400000.0 <= data$R7611100 & data$R7611100 <= 449999.0] <- 400000.0
data$R7611100[450000.0 <= data$R7611100 & data$R7611100 <= 499999.0] <- 450000.0
data$R7611100[500000.0 <= data$R7611100 & data$R7611100 <= 9.99999999E8] <- 500000.0
data$R7611100 <- factor(data$R7611100,
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

varlabels <- c("ID_CODE 67",
"AGE, 67",
"YR R BIRTH, 87 (FR HHRC)",
"MO R BIRTH, 87 (FR HHRC)",
"HLTH-R WEIGHT, 92",
"HLTH-R HEIGHT, 92 (FEET)",
"HLTH-R HEIGHT, 92 (INCHES)",
"R DIAGNOSED WITH HGH BLD PRES/HYPTN? 95",
"DOES R CURR HAVE HGH BLD PRES/HYPTN? 95",
"R TAK MEDCTN FOR HGH BLD PRES/HYPTN? 95",
"EVER DIAGNOSED WITH HEART PROBLEMS? 95",
"R HAVE HEART ATCK/MYCRDL INFRCTN? 95",
"YR MOST RECENT HEART ATTACK, 95",
"CURRENTLY SMOKE CIGARETTES? 95",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 95",
"AGE STARTED MEDICATION FOR MENOPAUSE, 95",
"STILL TAKING PILLS FOR MENOPAUSE? 95",
"AGE STOPPED MEDICATION FOR MENOPAUSE, 95",
"EVER DIAGNOSED WITH HYPERTENSION? 97",
"CURRENTLY HAVE HYPERTENSION? 97",
"TAKING MEDICATION FOR BLOOD PRESSURE? 97",
"EVER DIAGNOSED WITH HEART PROBLEMS? 97",
"EVER HAVE HEART ATTACK? 97",
"YR MOST RECENT HEART ATTACK, 97",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 97",
"AGE STARTED MEDICATION FOR MENOPAUSE, 97",
"STILL TAKING PILLS FOR MENOPAUSE? 97",
"AGE STOPPED MEDICATION FOR MENOPAUSE, 97",
"EVER DIAGNOSED WITH HYPERTENSION? 99",
"CURRENTLY HAVE HYPERTENSION? 99",
"TAKING MEDICATION FOR BLOOD PRESSURE? 99",
"EVER DIAGNOSED WITH HEART PROBLEMS? 99",
"EVER HAVE HEART ATTACK? 99",
"YR MOST RECENT HEART ATTACK, 99",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 99",
"AGE STARTED MEDICATION FOR MENOPAUSE, 99",
"STILL TAKING PILLS FOR MENOPAUSE? 99",
"AGE STOPPED MEDICATION FOR MENOPAUSE, 99",
"EVER DIAGNOSED WITH HYPERTENSION? 01",
"CURRENTLY HAVE HYPERTENSION? 01",
"TAKING MEDICATION FOR BLOOD PRESSURE? 01",
"EVER DIAGNOSED WITH HEART PROBLEMS? 01",
"EVER HAVE HEART ATTACK? 01",
"YR MOST RECENT HEART ATTACK, 01",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 01",
"AGE STARTED MEDICATION FOR MENOPAUSE, 01",
"STILL TAKING PILLS FOR MENOPAUSE? 01",
"AGE STOPPED MEDICATION FOR MENOPAUSE, 01",
"EVER DIAGNOSED WITH HYPERTENSION? 03",
"CURRENTLY HAVE HYPERTENSION? 03",
"TAKING MEDICATION FOR BLOOD PRESSURE? 03",
"EVER DIAGNOSED WITH HEART PROBLEMS? 03",
"EVER HAVE HEART ATTACK? 03",
"YR MOST RECENT HEART ATTACK, 03",
"EVER TAKE PILLS FOR MENOPAUSE AGING? 03",
"AGE STARTED MEDICATION FOR MENOPAUSE, 03",
"STILL TAKING PILLS FOR MENOPAUSE? 03",
"AGE STOPPED MEDICATION FOR MENOPAUSE, 03",
"TOTAL CHILDREN IN ROSTER, 03",
"TOTAL NET FAMILY ASSETS, 03 *KEY*",
"EVER TAKE PILLS MENOPAUSE AGING? 03 SUM",
"AGE START PILLS FOR MENOPAUSE, 03 SUM",
"STILL TAKING PILLS FOR MENOPAUSE? 03 SUM",
"AGE STOP PILLS FOR MENOPAUSE, 03 SUM"
)


# Use qnames rather than rnums

qnames = function(data) {
names(data) <- c("R0000100_1967",
"R0002200_1967",
"R0817100_1987",
"R0817200_1987",
"R1075300_1992",
"R1075500_1992",
"R1075600_1992",
"HEA-8A_1995",
"HEA-8B_1995",
"HEA-8C_1995",
"HEA-10A_1995",
"HEA-10B_1995",
"HEA-10C_1995",
"HEA-11_1995",
"HEA-15G_1995",
"HEA-15H_1995",
"HEA-15I_1995",
"HEA-15J_1995",
"HEA-8A_1997",
"HEA-8B_1997",
"HEA-8C_1997",
"HEA-10A_1997",
"HEA-10B_1997",
"HEA-10C_1997",
"HEA-15G_1997",
"HEA-15H_1997",
"HEA-15I_1997",
"HEA-15J_1997",
"HEA-8A_1999",
"HEA-8B_1999",
"HEA-8C_1999",
"HEA-10A_1999",
"HEA-10B_1999",
"HEA-10C_1999",
"HEA-15G_1999",
"HEA-15H_1999",
"HEA-15I_1999",
"HEA-15J_1999",
"HEA-8A_2001",
"HEA-8B_2001",
"HEA-8C_2001",
"HEA-10A_2001",
"HEA-10B_2001",
"HEA-10C_2001",
"HEA-15G_2001",
"HEA-15H_2001",
"HEA-15I_2001",
"HEA-15J_2001",
"HEA-8A_2003",
"HEA-8B_2003",
"HEA-8C_2003",
"HEA-10A_2003",
"HEA-10B_2003",
"HEA-10C_2003",
"HEA-15G_2003",
"HEA-15H_2003",
"HEA-15I_2003",
"HEA-15J_2003",
"TOTCHD_2003",
"ASEXCA_2003",
"LHEA_15G_2003",
"LHEA_15H_2003",
"LHEA_15I_2003",
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

