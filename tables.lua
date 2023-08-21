--[[
Lua tables

1.similar to Redis hashes
2.  it is associated arrays
3. No fixed size
4. Tables are used to represent:
 - arrays
 - sets
 - symbol tables
 - records
 - queues and more

 5. Tables are objects:
    kv pairs
 6. Syntax to create a tabl:
    variable = {}

--]]

-- create a table

table1 = {}
-- add value to table
table1[1]=1

-- print value from a table
print(table1[1])

-- another way to add value

table1.key1="test 2"

print(table1)
print(table1.key1)


-- will clear cli
os.execute('clear')

print('jj')


tbl_days = {'Mon', "tue", 'Wed'}

-- these tables are not zero indexed but start at 1

-- returns nil
print(tbl_days[0])

-- returns Mon

print(tbl_days[1])

-- if you put keys values in a table then you have to be more specific

jj_table = {x=1, j=2}

-- will return null
print(jj_table[x])

-- will return the value, it exists must have quotes
print(jj_table['x'])




tbl_users_1 ={fname ="John", lname ="doe", age =35}

-- will print vlaue
print(tbl_users_1.fname)

-- update value

tbl_users_1.fname = "tom"

print(tbl_users_1.fname)