class MainController < ApplicationController
	require 'bank_account.rb'
	require 'checking_account.rb'


	def play
		ba = BankAccount.new('David', 123, 5000)
		
		ba.deposit(500)
		ba.withdraw(1000)
		ba.print_last_deposit
		ba.print_statement
		ba.rename_account('Snoofenflurter')
		ba.print_all_deposits

		ba = BankAccount.new('Boss', 567, 25000)

		ba.deposit(600)
		ba.withdraw(2000)
		ba.deposit(250)
		ba.print_all_deposits

		

		ca = CheckingAccount.new('Lilly', 800, 30000, 500)
		
		ca.deposit(200)
		

		head :ok



	end

end