-- online platform for desiging database
1.https://sql.toad.cz/?

steps to create a table
1. Click on 'Add Table'.
2.For adding new fields or attributes click on 'Add field'.
  Set its data type
  Set name of the field
  Apply constraints.
  Set Size
  Set value for autoincrement.
3.Create foregin key for any table by clicking on referenced table
    then click on 'Add foregin key '
         click on 'target table'.
    target table is the in which foregin key is created.

  2.https://dbdiagram.io/home

steps 
1. type queries for creating table in the tool of dbdiagram 
TABLE users{
  id integer[pk,increment]
  username varchar
}
TABLE comments{
  id integer[pk,increment]
  comment varchar
  user_id integer[ref:>users.id]
  }

  TABLE posts{
  id integer[pk,increment]
  user_id integer[ref:>users.id]
  comment_id integer[ref:>comments.id

}
