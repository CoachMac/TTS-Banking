class BankAccount
		@@total_deposits = 0
		@last_deposit = 0
	def initialize(name, number, initial_balance)
		@name = name
		@number = number
		@balance = initial_balance
	end

	def deposit(amount)
		@last_deposit = amount
		@balance += amount
		p 'Deposit : Current Balance $' + @balance.to_s

		@@total_deposits += 1
	end

	def withdraw(amount)
		@balance -= amount
		p 'Withdraw : Current Balance: $' + @balance.to_s
	end

	def print_statement()
		p 'Name: ' + @name
		p 'Number: ' + @number.to_s
		p 'Balance: ' + @balance.to_s
	end

	def close_account
		@name = nil
		@number = nil
		@balance = nil
	end

	def print_last_deposit
		p 'Last: $' + @last_deposit.to_s
		p 'Current Balance: $' + @balance.to_s
	end

	def rename_account(new_name)
		@name = new_name
	end

	def print_all_deposits
		puts
		p 'ALL DEPOSITS : ' + @@total_deposits.to_s
	end   
 
end