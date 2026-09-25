Dice
====

In this assignment we'll practice using OOP (Object Oriented Programming) techniques. We'll create a `class` to model what a single die has and does, and then we will create at least 9 *instances* of that class arranged in a grid shape. Note that for full credit your program must display the total of all the dice and draw the dice with dots or similar marks. Also, you must customize the title, header and footer of `index.html`. You may find the slides of the [OOP--Classes](https://docs.google.com/presentation/d/13Ozn2xajO_juZfbm7I6gn0zM9p0leSTGDMBwUl2kPAQ/edit?usp=sharing) slide presentation helpful, as well as the [Nested Loops](https://docs.google.com/document/d/1kzbAIebvhj0euZFYFa1WSLWWy_2cWwrq_sL0Ae4CaAw/edit?usp=sharing), and the [Math.random](https://drive.google.com/file/d/0Bz2ZkT6qWPYTSU84X3FSOGYwdFU/view?usp=sharing) worksheets.

Suggested steps to start the assignment
------------------------------------------   
1. Start by forking [this repository](https://github.com/APCSLowell/Dice). Open the pde file and you should see the following code:

```java
        void setup()
	{
	    noLoop();
	}
	void draw()
	{
	    //your code here
	}
	void mousePressed()
	{
	    redraw();
	}
	class Die //models one single dice cube
	{
	    //member variable declarations here
	    
	    Die(int x, int y) //constructor
	    {
	        //variable initializations here
	    }
	    void roll()
	    {
	        //your code here
	    }
	    void show()
	    {
	        //your code here
	    }
	}
```
2. Write the member variable declarations for the `Die` class
2. Then, write code in the constructor to initialize the member variables
2. Next, complete the `draw()` function. For now it should:  
     - make a `background()` on the screen
     - declare and initialize one instance of the `Die` class
     - Call the `show()` function for that `Die` (even though we won't see anything yet)
3. Now lets work on the `show()` function. 
     - Notice that the constructor takes arguments. We'll use those arguments to position the individual die cubes. Don't worry about the dots at first, just get the shape of the dice on the screen for now. 
     - Once you like the shape of your die, go back to `show()` and add some `if` statements to check how many dots you need to put on the die. Start by "forcing" the die to always roll a one. Check to see that you can get one dot where it is suppose to be, and move on to two, and so on. If you are clever, you can combine some of the ifs and avoid duplicate code. 
4. Now, use nested loops to display at least nine instances of the `Die` class. **This is the power of OOP!** It's not that much more work to make 1000 dice as it is to make one. Make sure the dots are on the dice. Your `show()` function will need to position the dots by adding some small amount to the x and y coordinates of the `rect()` of the `Die`
5. Finally, add code to the `draw()` function so that your program displays the total for the roll to the screen. You may find the `Coin` and `Token` programs on the slide presentation helpful. 

Program requirements
-----------------------
The steps above are only a suggestion. Your program needs to:
1. Use a `class` to model a **single** `Die` cube 
2. The `Die` constructor needs to use the two arguments to position the x and y coordinates of the `Die` cube
3. Create at least 9 *instances* of the `Die` class
4. Use `Math.random()` for *all* random numbers in the assignment 
5. Display the total of all the dice and draw the dice with dots or similar marks
6. Personalize the title, header and footer of `index.html`  

Other than that, your dice program doesn't have to work or look like any other. Have fun and be creative!
