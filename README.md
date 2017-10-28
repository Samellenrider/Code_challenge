## Code Challenge

This is a code challenge I attempted in the context of a Job application. I had 2 days to complete it.

####Task

The task was to create a realtime statistic(60 sec) of all the transactions placed through the first api. 

The input should be displayed together with a thirteen digit timestamp.

The statistic should be displayed when the second api gets called.

The statistic should include the summ, the average, the biggest, the smallest and the number of all transactions placed in the last 60 seconds.


####Approach

First, I diagrammed the way the programm should work. Visualizing the way the programm would take and give information aswell as how it would interact with it, helped me a lot with the implementation.

I started of by trying to reach a simple MVP. It's only task was to take a summ that was entered and display it togheter with the time stamp.
I created a simple interface to make it easier to enter an transaction amount. 
After entering the amount, the transaction gets displayed in the terminal.

The next step was to add the statistic feature to display the full statistic.

After that I created a timer that would erase a transaction afte 60 seconds.


####Manual

- clone this repository by entering "git clone https://github.com/Samellenrider/Code_challenge.git" in your terminal
- open the file in. the terminal
- use either "ruby app.rb", "rackup -p 5000" or "shotgun app.rb" to fire up your local server.
- in your browser, visit "localhost:portalid/". The portalid gets displayed in your terminal.
- enter an amount into the textfield and press submit.
- in your terminal you can see "201", what means that your transaction was succesfull, and your first transaction.
- visit "localhost:portalid/statistics".
- the statistic gets displayed in your terminal.
- after 60 seconds your first transaction will be erased.
- if you visit "localhost:portalid/statistics" now, "204" will be displayed. That means your transaction is older than 60 seconds.
