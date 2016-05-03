
models = [ Book, Equity, Expense, Liability, Note, Task, Spend, Transfer, Vendor ]
models.each { |model| model.destroy_all }

Book.create(name: 'food', tag: 'high', note: 'all food related activities - groceries, eating out, prep, beer', user_id: 1, family_id: 1)
Book.create(name: 'bills', tag: 'high', note: 'non-edible activities', user_id: 1, family_id: 1)


Equity.create(starting_balance: 3200, nickname: 'primary checking', bank_name: 'bank of dupya', user_id: 1, family_id: 1, flag: false)
Equity.create(starting_balance: 230, nickname: 'secondary savings', bank_name: 'bank of gotcha', user_id: 1, family_id: 1, flag: false)

Stream.create(name: 'Hotdog cart', amount: 1200, equity_id: 1, user_id: 1)
Stream.create(name: 'Giftcard salesman', amount: 890, equity_id: 1, user_id: 1)
Stream.create(name: 'Gumball maker', amount: 40, equity_id: 2, user_id: 1)

Expense.create(name: 'costco', budget: 120, balance: 29, book_id: 1, user_id: 1, family_id: 1, required: false, equity_id: 1, allocate: true)
Expense.create(name: 'rent', budget: 1250, balance: 0, book_id: 2, user_id: 1, family_id: 1, required: true, equity_id: 1, allocate: true)
Expense.create(name: 'electricity', budget: 48, balance: 0, book_id: 2, user_id: 1, family_id: 1, required: true, equity_id: 1, allocate: true)
Expense.create(name: 'internet', budget: 125, balance: 0, book_id: 2, user_id: 1, family_id: 1, required: true, equity_id: 1, allocate: true)

Liability.create(starting_balance: 3400, current_balance: 3709, minimum_payment: 58, interest_rate: 8.3, nickname: 'Chase credit card', user_id: 1, family_id: 1, archive: false, flag: false)
Liability.create(starting_balance: 1700, current_balance: 6809, minimum_payment: 248, interest_rate: 8.3, nickname: 'Home Depot line of credit', user_id: 1, family_id: 1, archive: false, flag: false)

Note.create(body: 'this spend makes me uncomfortable', archive: false, expense_id: 1, book_id: 1, equity_id: 1, spend_id: 1, transfer_id: '', vendor_id: 1, liability_id: '', user_id: 1, family_id: 1, flag: false)

Task.create(title: 'cancel this account', complete: false, archive: false, expense_id: 1, book_id: 1, equity_id: 1, spend_id: 1, transfer_id: '', vendor_id: 1, liability_id: '', user_id: 1, family_id: 1, flag: false)

Spend.create(equity_id: 1, vendor_id: 1, amount: 34, expense_id: 1, comment: 'this comment intentionally left blank', user_id: 1, family_id: 1, flag: false)

Transfer.create(from_id: 1, to_id: 1, amount: 1, archive: false, user_id: 1, family_id: 1, flag: 1)

Vendor.create(name: 'taco bell', phone: '404-123-2345', email: 'taco@mac.me', website: 'tacomac.com', archive: false, flag: false, family_id: 1, user_id: 1)

User.create(email: 'dave@me.com', password: 'letmein')

Help.create( title: "Streams - what are they?", body: "Streams are your income. they often feel like they are ours but as many know, income streams can dry up. They are the income into a particular equity", tags: 'terms')
Help.create( title: 'what is an equity?', body: "an equity is anything you OWN. these are items that nobody can take away from you and you have full controll over. this is different than a <a href="">liability</a> which is something you OWE", tags: 'terms')
Help.create( title: 'What is a book?', body: 'A book is a collection of like expenses',tags: 'terms')

puts 'seeded...'
