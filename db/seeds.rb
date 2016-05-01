
models = [ Book, Equity, Expense, Liability, Note, Task, Transaction, Transfer, Vendor ]
models.each { |model| model.destroy_all }

Book.create(name: 'food', tag: 'high', note: 'i like to eat and so do those around me', user_id: 1, family_id: 1)
Book.create(name: 'fun', tag: 'high', note: 'i like to party and so do those around me', user_id: 1, family_id: 1)


Equity.create(starting_balance: 3200, nickname: 'primary checking', bank_name: 'bank of dupya', user_id: 1, family_id: 1, flag: false)
Equity.create(starting_balance: 230, nickname: 'secondary savings', bank_name: 'bank of gotcha', user_id: 1, family_id: 1, flag: false)

Expense.create(name: "Taco Bell", frequency: "Weekly", target_price: 10, book_id: 1, structure: "variable", user_id: 1, family_id: 1)
Expense.create(name: "Taco Party", frequency: "Weekly", target_price: 100, book_id: 2, structure: "variable", user_id: 1, family_id: 1)

Liability.create(starting_balance: 3400, current_balance: 3709, interest_rate: 8.3, nickname: 'goat farm', bank_name: 'bank of debty', user_id: 1, family_id: 1, archive: false, flag: false)

Note.create(body: 'this transaction makes me uncomfortable', archive: false, expense_id: 1, book_id: 1, equity_id: 1, transaction_id: 1, transfer_id: '', vendor_id: 1, liability_id: '', user_id: 1, family_id: 1, flag: false)

Task.create(title: 'cancel this account', complete: false, archive: false, expense_id: 1, book_id: 1, equity_id: 1, transaction_id: 1, transfer_id: '', vendor_id: 1, liability_id: '', user_id: 1, family_id: 1, flag: false)

Transaction.create(equity_id: 1, vendor_id: 1, amount: 34, expense_id: 1, comment: 'this comment intentionally left blank', user_id: 1, family_id: 1, flag: false)

Transfer.create(equity_id: 1, liability_id: 1, amount: 1, archive: false, user_id: 1, family_id: 1, flag: 1)

Vendor.create(name: 'taco bell', phone: '404-123-2345', email: 'taco@mac.me', website: 'tacomac.com', archive: false, flag: false, family_id: 1, user_id: 1)


puts 'seeded...'
