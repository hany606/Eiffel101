--Naming_conventions:
--In general, in Eiffel we use snake_script and not CamelCase.
--CLASSES should be spelled in capital letters.
--features (methods and attributes of classes) should be spelled small.
--Objects (instances of a class) should be capitalised.

--Note:
--	Methods and Attribuits are called feature the difference between them if it has body then it is method
--	Class variable are only read-only for the instances(clients) so, we should make setters for each variable that we need to overwrite
		--by using "assign"

--Strange things:
--'%N' equivelant to '\n' to end line
--assinment value to variable by ( := )
--assign the type to variable by ( :  )
--define multiple parameters using semi-colon ; between each parameter
--no return keyword in Eiffel there is Result that hold the returned value
--float type called Real


--Resources:
--http://eiffel-guide.com/
--https://www.maths.tcd.ie/~odunlain/eiffel/eiffel_course/eforb.htm
--https://www.eiffel.org/doc/eiffel/Eiffel_programming_language_syntax#Identifiers
--http://rigaux.org/language-study/syntax-across-languages-per-language/Eiffel.html
--http://www.minimalprogramming.org/html/section.eiffel.quick-tour.html

class
	APPLICATION

create
	execute

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


feature {NONE} -- Initialization and the body of the main method

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

		end

end
