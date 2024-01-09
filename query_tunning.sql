select *from users where username='kavya';
steps:
  1. parser:
     understanding the meanings of each and every character in the query.
  2.rewrite:
    decompose view into underlying table references.
  3.planner:
    fetch all the users and serach among all of them.
  4.execute:
    run the query and return the result.




  Planner stage:
  it includes :
    1.EXPLAIN
    2. EXPLAIN ANALYSIS

  1. EXPLAIN ::
       Build a query plan and display info about it.
      ex:
       EXPLAIN select username,contents from users JOIN posts ON posts.user_id=users.id where username='kavi';
       -it will return a single column with multiple rows which explains query plan and its info.
  
  2.EXPLAIN ANALYSIS::
      Build a query plan ,execute the query plan , display info about query plan and explains the statistics how the query will run.
         ex:
          EXPLAIN ANALYSIS  select username,contents from users JOIN posts ON posts.user_id=users.id where username='kavi';
       -it will return a single column with multiple rows which explains query plan and its info and execute the query plan.
  
       
