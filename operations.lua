-- var assignment, dynamically typed

nothing = nil

bool1 = true
bool2 = false

print(nothing)
print(bool1, bool2)

num1, num2 = 10, 20

print(num1, num2)


msg = 'This is a test message'

print(msg)

-- numbers

n1 = 4
n2 = 0.2

-- can define decimal exponent, how many decimals from beginnging
-- 4.57e-1 = 0.457       4.57e-3 = 0.00457
n3 = 4.57e-3

-- 300000000000.0
n4 = 3.0e12

print(n1, n2, n3, n4)


-- strings
-- automatic memory management, long string efficiently

a = 'this is a line'
b = "this is a second line"

print(a, b)

-- carriage string \r


print('First line\nSecond line \rthird line')


-- double quote

print("hello \"test\"")


-- multiline

html = [[
    <html>
        <head>
            <title>Test</title>
        </head>
    </html>
]]

print(html)

-- read from a command prompt and save to var
line = io.read()
print(line)


x = "one string"

-- replace, like regex
y = string.gsub(x, "one", "two")

print(x)
print(y)



-- arthimetic operations

num5, num6, num7, num8 =  10,20,30,0.25

print(num5+num6, 
num7* num8,
num1-num2,
num5/num6
);

-- relationship operators

--[[

< less than
> greater than
<= less than and equal to
>= greater than and equal to
== test equality
~= test for negation equality

--]]

-- logical operators

--[[
and
or
not


--]]

-- string operations

--[[
    ..   concatenates two strings


--]]


msg1 = "test1"
msg2 = "test2"

print(msg1.." "..msg2)
-- returns 120
print(1 .. 20)