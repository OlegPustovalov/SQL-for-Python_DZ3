create table if not exists singers 
(
   s_id integer not null primary key,
   singer_name char(20) not null
);    
create table if not exists styles
(
   st_id integer not null primary key,
   style_name char(30) not null
);
create table if not exists albums
(
   a_id integer not null primary key,
   album_name char(30) not null,
   year_of_release integer not null
);     
create table if not exists records
(
   r_id integer  not null primary key,
   record_name char(30) not null,
   record_time integer not null,
   album_id integer not null references albums(a_id)    
); 
create table if not exists collections
(
   c_id integer not null primary key,
   collection_name char(30) not null,
   year_of_release integer not null    
);    
create table if not exists record_collection 
(
   rc_id integer not null primary key,
   record_id integer not null references records(r_id), 
   collection_id integer not null references collections(c_id) 
);
create table if not exists singer_album 
(
    sa_id integer not null primary key,
    singer_id integer not null references singers(s_id), 
    album_id integer not null   references albums(a_id) 
);       
 create table if not exists singer_style 
 (
    ss_id integer not null primary key,
    singer_id integer not null references singers(s_id), 
    style_id integer not null references styles(st_id) 
);       


  