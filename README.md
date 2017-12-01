Bank (Ruby)
==================

Intro
-------
A simulation of bank functions using Ruby.

Technologies used
-------
Development: Ruby
Test: Rspec, Simplecov, Rubocop, Flog

Design
-------
Controller class: Bank
Model class: Account

How to install
-------
1. Clone the repo
2. run 'bundle' in the project folder

How to use
-------
in IRB:
1. Create a bank with 'Bank.new' and assign it to a variable
2. Create accounts with 'Account.new' and assign to variables
3. Use bank functions to interact with accounts:
   bank.deposit(account, amount)
   bank.withdraw(account, amount)
   bank.print_balance(account)
   bank.print_statement(account)

Author
-------
Mengchen Wang
