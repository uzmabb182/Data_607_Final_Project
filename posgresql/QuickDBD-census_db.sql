-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/a4u9hc
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "census_data" (
    "fips_code" INT   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "population" INT   NOT NULL,
    "median_age" INT   NOT NULL,
    "household_income" INT   NOT NULL,
    "per_capita_income" INT   NOT NULL,
    "poverty_count" INT   NOT NULL,
    "unemployment_count" INT   NOT NULL
);

CREATE TABLE "education_data" (
    "fips_code" INT   NOT NULL,
    "high_school_diploma_only_2015_19" INT   NOT NULL,
    "some_college_or_associate_degree_2015_19" INT   NOT NULL,
    "bachelor_degree_or_higher_2015_19" INT   NOT NULL,
    "percent_of_adults_with_less_than_a_high_school_diploma_2015_19" INT   NOT NULL,
    "percent_of_adults_with_a_high_school_diploma_only_2015_19" INT   NOT NULL,
    "percent_of_adults_completing_some_college_or_associate_degree_2015_19" INT   NOT NULL,
    "percent_of_adults_with_a_bachelor_degree_or_higher_2015_19" INT   NOT NULL
);

CREATE TABLE "fips_data" (
    "fips_code" INT   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    CONSTRAINT "pk_fips_data" PRIMARY KEY (
        "fips_code"
     )
);

ALTER TABLE "census_data" ADD CONSTRAINT "fk_census_data_fips_code" FOREIGN KEY("fips_code")
REFERENCES "fips_data" ("fips_code");

ALTER TABLE "education_data" ADD CONSTRAINT "fk_education_data_fips_code" FOREIGN KEY("fips_code")
REFERENCES "fips_data" ("fips_code");

