Variables in Shell Scripts

Variables are used in shell scripts to store and reuse data like text, numbers, or the output of commands.

To declare a variable:
name="Tribhuwan"
age=25

Note: No spaces before or after the = sign.

To access a variable, use the $ symbol:
echo $name
echo "My name is $name and I am $age years old"

You can also use curly braces for clarity:
echo "Welcome, ${name}"

Always quote variables when used inside strings to avoid issues:
echo "Hello, $name"

You can also read input from the user using the read command:
echo "Enter your city:"
read city
echo "You live in $city"

To make a variable available to subprocesses, use export:
export PATH_TO_CONFIG="/etc/config.conf"

You can store the output of a command in a variable using command substitution:
today=$(date)
echo "Today's date is: $today"

Another way to do the same (older syntax):
today=`date`
echo "Today is $today"

To remove a variable:
unset name

-----------------------------------------------------------

