weight converter
-----

Description
-----
This is a weight converter basically convert object weight from lbs to kg. Also, after conversion,
the program can find item with maximum or minimum weight amount all given items.

Logic Issue
-----
The logic issue in the given erlang program is instead of using division, lbs to kg should use
multiplication.

Language
-----
I choose to use ruby, since I have been using it for past three years. It's fast and easy to read
language. Also, it has many packages for building function as well as testing. We use Rspec for test
here only.

Design decision
-----
The structure of the given program in Erlang seems a little bit disorganized to me. So in my converted
ruby version, I create two class, item for storing input object, utils for building additional functions.
For conversion part, the requirement here is from lbs to kg, with my design, we can add more conversion
for different unit easily. Simply add a case in switch clause under 'convert_to' function in 'Item'
class. To find max and min weight, instead of using one method, I separated it into two method, it would
be good if we can keep one method to do one thing at a time.

Run
-----
Simply run command
'ruby weight_converter.rb'
under bin folder

Test
-----
Please run 'bundle install' to install all dependencies, Rspec here only.
then run command
'rspec spec/lib'
under project folder

Simple Input and Output
-----
Input:
[['table', 'l', 30], ['chair','l', 15], ['ball', 'l', 5]]

Output:
table           13.607771 c
chair           6.803886 c
ball            2.267962 c
ok
Max weight was 13.6077711 c in table
Min weight was 2.2679618500000003 c in ball