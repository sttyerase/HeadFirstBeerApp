create table beer_colors(color_id integer, color_name VARCHAR(30));
alter table beer_colors add constraint colors_pk primary key(color_id);
create unique index color_names_uk on beer_colors(color_name asc);
alter table beer_selection drop column selection_color;
alter table beer_selection add column color_id integer not null;
alter table beer_selection add constraint beer_color_fk foreign key (color_id) references beer_colors(color_id);
