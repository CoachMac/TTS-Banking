class CheckingAccount < BankAccount
	def initialize(name, number, initial_balance, limit)
		super name, number, initial_balance

		@limit = limit
	end

	def print_spending_limit
		puts
		p 'Daily Spending Limit ' + @limit.to_s
	end
end