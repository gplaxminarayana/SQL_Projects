-- use PortfoliProject;
-- overview of imported data

select   * from covidvaccination$
order by 3,4;

select   * from coviddeaths$
order by 3,4;

-- diving into data
--deaths data
select continent, location,population,date,total_cases,new_cases,total_deaths,new_deaths
from coviddeaths$
order by 2,4;

--total cases Vs total deaths
select  location,date,(total_cases),(total_deaths), (total_deaths/total_cases)*100 as PercentOfDeaths
from coviddeaths$
order by 2;

--total cases Vs total deaths (India)
select location,date,total_cases,total_deaths, (total_deaths/total_cases)*100 as PercentOfDeaths
from coviddeaths$
where location = 'india'
order by 2;

--total cases vs populations
select location,date,population,total_cases, (total_cases/population)*100 as PercentOfCases
from coviddeaths$
order by 1,2;

--total cases vs populations (India)
select location,date,population,total_cases, (total_cases/population)*100 as PercentOfCases
from coviddeaths$
where location = 'india'
order by 2;

--highest infection rate
select Location,Population,max(total_cases) as CasesCount,max ((total_cases/population))*100 as PercentOfCases
from coviddeaths$
--where location = 'india'
group by location, population
order by 1


 


