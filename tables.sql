-- drop the exsisting file--

drop table "completed_airlines";
drop table "completed_airports";
drop table "delay_df_clear";
drop table "flight_clear";
drop table "cancel_df_clear";

-- Create the table--

CREATE TABLE "completed_airlines" (
    "IATA" varchar   NOT NULL,
    "Airline" varchar   NOT NULL,
    CONSTRAINT "pk_completed_airlines" PRIMARY KEY (
        "IATA"
     )
);

CREATE TABLE "completed_airports" (
    "IATA" varchar   NOT NULL,
    "ICAO" varchar  ,
    "FAA" varchar   ,
    "Airport" varchar   NOT NULL,
    "City" varchar   ,
    "STATE" varchar   ,
    "COUNTRY" varchar   ,
    "LATITUDE" varchar   ,
    "LONGITUDE" varchar   ,
    CONSTRAINT "pk_completed_airports" PRIMARY KEY (
        "IATA"
     )
);

CREATE TABLE "delay_df_clear" (
    "FL_DATE" varchar   NOT NULL,
    "OP_CARRIER" varchar   NOT NULL,
    "OP_CARRIER_FL_NUM" int   NOT NULL,
    "ORIGIN" varchar   NOT NULL,
    "DEST" varchar   NOT NULL,
    "CRS_DEP_TIME" int   NOT NULL,
    "DEP_DELAY" int   NOT NULL,
    "CRS_ARR_TIME" int   NOT NULL,
    "ARR_DELAY" int   NOT NULL,
    "AIR_TIME" int   NOT NULL,
    "DISTANCE" int   NOT NULL,
    "CARRIER_DELAY" int   NOT NULL,
    "WEATHER_DELAY" int   NOT NULL,
    "NAS_DELAY" int   NOT NULL,
    "SECURITY_DELAY" int   NOT NULL,
    "LATE_AIRCRAFT_DELAY" int   NOT NULL
);

CREATE TABLE "flight_clear" (
    "FL_DATE" varchar   NOT NULL,
    "OP_CARRIER" varchar   NOT NULL,
    "OP_CARRIER_FL_NUM" int   NOT NULL,
    "City_ORIGIN" varchar   NOT NULL,
    "City_DEST" varchar   NOT NULL
);

CREATE TABLE "cancel_df_clear" (
    "FL_DATE" varchar   NOT NULL,
    "OP_CARRIER" varchar   NOT NULL,
    "OP_CARRIER_FL_NUM" int   NOT NULL,
    "ORIGIN" varchar   NOT NULL,
    "DEST" varchar   NOT NULL,
    "CRS_DEP_TIME" int   NOT NULL,
    "CRS_ARR_TIME" int   NOT NULL,
    "CRS_ELAPSED_TIME" int   NOT NULL,
    "DISTANCE" int   NOT NULL,
    "CANCELLATION_DESCRIPTION" varchar  NOT NULL
);