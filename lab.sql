-- create table for rentals_may
-- filtrar les dades que necessito de maig en la taula original
select * from rental
where extract(month from rental_date) = '5';
-- creo la taula duplicant rental
create table rentals_may like rental;
-- insereixo data dins
Insert into rentals_may select * from rental
where extract(month from rental_date) = '5';

-- create table for june
-- filtro les dades que necessito de juny per despres posar-les al 'inser into'
select * from rental
where extract(month from rental_date) = '6';
-- creo la taula duplicant rental
create table rentals_june like rental;
-- insereixo data dins
Insert into rentals_june select * from rental
where extract(month from rental_date) = '6';

-- Check the number of rentals for each customer for May/june
select count(rental_id) from rentals_may;
select count(rental_id) from rentals_june;

-- to copy to Jupyter Notebook
select * from rentals_may;
select * from rentals_june;