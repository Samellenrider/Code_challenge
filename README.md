## Code Challenge

This is a code challenge I attempted in the context of a Job application. I had 2 days to complete it.


#### Task

The task was to create a realtime statistic(60 sec) of all the transactions placed through the first api. 

The input should be displayed together with a thirteen digit timestamp.

The statistic should be displayed when the second api gets called.

The statistic should include the sum, the average, the biggest, the smallest and the number of all transactions placed in the last 60 seconds.


#### Approach

First, I diagrammed the way the program should work. Visualizing the way the program would take and give information as well as how it would interact with it, helped me a lot with the implementation.

I started of by trying to reach a simple MVP. It's only task was to take a sum that was entered and display it together with the time stamp.
I created a simple interface to make it easier to enter an transaction amount.

After entering the amount, the transaction gets displayed in the terminal.

The next step was to add the statistic feature to display the full statistic.

After that I created a timer that would erase a transaction after 60 seconds.

I took an object oriented approach, by extracting the methods from the controller into separate classes and using the single responsibility principle.

As it's a RESTful API, any softwear that supports (HTTP)s requests can be used to test the program, inclusing cURL or Postman.


#### Challenges I faced

The biggest challenge was to avoid using global variables. In Ruby, there is away to go around them, through a so called "class instance variable".
I had a hard time, figuring out how to apply this technique on my program.

Testing the timestamp and the timer that would erase a transaction, turned out to be quite difficult. 
In Ruby, there is a gem called Timecop that makes it possible to test a method with current time output, by freezing the time.
I was not able to apply this technique in my program.




#### Manual

- clone this repository by entering "git clone https://github.com/Samellenrider/Code_challenge.git" in your terminal
- open the file in the terminal
- use either "ruby app.rb", "rackup -p 5000" or "shotgun app.rb" to fire up your local server.
- in your browser, visit "localhost:port/". The port gets displayed in your terminal.
- enter an amount into the textfield and press submit.
- in your terminal you can see "201", what means that your transaction was succesful, and your first transaction.
- visit "localhost:port/statistics".
- the statistic gets displayed in your terminal.
- after 60 seconds your first transaction will be erased.
- if you visit "localhost:port/statistics" now, "204" will be displayed. That means your transaction is older than 60 seconds.
