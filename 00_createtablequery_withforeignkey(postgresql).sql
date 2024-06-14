CREATE TABLE file_info (
    id int8 AUTOINCREMENT, -- or using sequence : default nextval('dotnet.getseq()')
    user_id int8,
    project_id int8,
    file_name varchar(250)
    class_name varchar(250),
    method_name varchar(250),
    is_comment_present BOOLEAN,
    comment text,
    status varchar(10),
    status_change_date timestamp,
    
    -- Constraints
    file_info_pk primary key (id),
    file_info_user_id_fk FOREIGN KEY (user_id) REFERENCES dotnet.users(id),
    file_info_project_id_fk FOREIGN KEY (project_id) REFERENCES dotnet.projects(id)
);
