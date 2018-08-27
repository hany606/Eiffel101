--Naming_conventions:
--In general, in Eiffel we use snake_script and not CamelCase.
--CLASSES should be spelled in capital letters.
--features (methods and attributes of classes) should be spelled small.
--Objects (instances of a class) should be capitalised.

--Note:
--	Methods and Attribuits are called feature the difference between them if it has body then it is method
--	Class variable are only read-only for the instances(clients) so, we should make setters for each variable that we need to overwrite
		--by using "assign"
--For multiple commenting you can use Ctrl+k , uncomment Shift+Ctrl+k

--Strange things:
--'%N' equivelant to '\n' to end line
--assinment value to variable by ( := )
--assign the type to variable by ( :  )
--define multiple parameters using semi-colon ; between each parameter
--no return keyword in Eiffel there is Result that hold the returned value
--float type called Real
--There is no multiple Comment line only single line comment using -- at the start of the line
--once keyword is like making constructor to the function that is excuted only once   ???		(EXAMPLE)
--Children of Class they called it here clients							
--deferred Class is like the interface in java that you only write the blueprint of the class not the implementation  (EXAMPLE)
--aliases is like operator overloading in JAVA  (EXAMPLE)
--To solve multiple inheritence of clashes in the names of the functions we can use rename/undefine to include and exclude the functions from specific Classes (EXAMPLE)
--Seitch case is called inspect-when-then
--For loops are called from loops but the concept is different that it will be run until the condition is true not while the condition true
--	but we could make the for loop using the invariant(the condition) and variant(the action) keywordsthey are created to prevent bugs like infinite loops
--For each loops is across as
--Contracts

--Resources:
--http://eiffel-guide.com/            --The best guide and a lot of examples
--https://www.maths.tcd.ie/~odunlain/eiffel/eiffel_course/eforb.htm
--https://www.eiffel.org/doc/eiffel/Eiffel_programming_language_syntax#Identifiers
--http://rigaux.org/language-study/syntax-across-languages-per-language/Eiffel.html
--http://www.minimalprogramming.org/html/section.eiffel.quick-tour.html

--Check List:
--The Basic Structure 								✓	
--Variables & types & Assigning						✓
--Global and Local Variable							✓
--Functions: Definitions & Calling & Parameters 	✓
--Input and Output
--String and its manipulation
--Loops											
--Data Structure								
--Creating Objects
--Inheritance

class
	APPLICATION

--Create keyword is making object from classes
--But here inside the class itself is used to make a constructor method
create
	execute


--Feature block is used to define variables and methods as they are considering it as features

--declare Attributes relate to the class

--declare variable and its setter
--with this definition we can use APPLICATION.age := val or APPLICATION.set_age(val)
feature
	age: INTEGER assign set_age
	set_age(nage: INTEGER)
	do
		age := nage
	end

--Only make variable without setter as it will be only
normalClassVar: INTEGER = 5

--you can define each method alone or you can define like below
--the name of the method then "is" keyword then the body marked by do, end block
--methodName(par1: type; par2: type; ...): returnType is
feature

	add(num1: INTEGER; num2: INTEGER): INTEGER is
	--Creating local variable to be used only in the method only
	local
		addLocalVar : INTEGER
	do
		print("Local var:")
		print(addLocalVar)
		print("%NAdd to local var:")
		addLocalVar := addLocalVar +5
		print(addLocalVar)
		print("%N")
		print("ADD: ")
		Result := num1 + num2	--Result is keyword to store the returned value
	end


	func2 is
		do
			print("Global Var1:")
			print(globalVar1)	--the globalvar from the main function(excute)
			print("%N")
			print("func2%N")
		end



-- Initialization and the body of the main method


feature {NONE}		--In the curly brakets define which accessable level will be for this feature as we can choose the classes that this could available for it (in the brackets classes name)

	--Declaring Global Variable & constants
	--Global for the whole program
	globalVar1 : INTEGER	--it by defults initilized by zero
	globalConst1 : INTEGER is 11

	--Invoking the main method which is called excute as we set it while creating the project as our root clause
	execute
			-- Run application.
		do
			-- Add your code here.

			--using vars
			print("Global Var1:")
			print(globalVar1)
			print('%N')
			globalVar1 := globalVar1 +5	--Assign value to the variable
			print("Global Var1:")
			print(globalVar1)
			print('%N')

			--using constants
			print("Global const1:")
			print(globalConst1)
			print('%N')

			--globalConst1 := globalConst1+5	--Error

			--Calling Function => Methods and passing parameters and return value
			print(add(4,5))
			print('%N')
			--print(globalVar)
			func2		--Note: if the function doesn't have parameters we can call it without ()

			--Printing Testing
			Io.put_string("Name: Hany Hamed%N") --print
			print("Age: 19%N")
			print("Mother tongue: English%N")
			print("Has a cat: False%N")

			--Simple I/O
--			Io.put_string ("Hello World!") Prints out a string

--			Io.put_integer (42) Prints out an integer

--			Io.put_real (9.99) Prints out a real

--			Io.put_boolean (true) Prints out a true or false

--			Io.new_line Prints out a new line

--			Io.read_line Reads in one line of users input and stores it in Io.last_string

--			Io.read_integer Reads in an integer from users input and stores it in Io.last_integer

			--Operators
--			:= Assignment operator. Ex: meaning_of_life := 42

--			= Equality operator (== in many other languages). Ex: 1 + 2 = 3 would be true

--			/= Inequality operator (!= in many other languages). Ex: meaning_of_life /= 42

--			<, >, <=, >= Comparison operators.

--			+, -, *, / Mathematical operators.

--			// Integer division operator. Ex: 5/2=2.5 vs 5//2=2  like python3

--			\\ Modulo. Ex: 5\\2=1

--			equal (x, y) To compare strings we can use the equal function.

--			Current keyword Though not an operator, this always references the currently executing instance of a class.

--			|..| Describes an integer interval. Useful in loops. e.g. 1 |..| 5  like in range() in python

--			.. Describes an interval of integers or characters in inspect constructions. e.g. a .. z

--			and, or, xor, not Logic operators.

--			(and then), (or else), (implies) : Semistrict logic operators (evaluation stops when the result is known).

		end

end
