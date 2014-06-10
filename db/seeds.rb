# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env == 'development'
  Filer::Month.destroy_all
  Filer::Source.destroy_all

  month = Filer::Month.create(name: "janubrary", status: 'active')
  month = Filer::Month.create(name: "Marchember", status: 'active')

  # These are not saving...
  # FIX - upload files in seed data.

  # file = Filer::Source.new(name: "amex", note: "source file", month_id: 1)
  # file.document.store!(File.open(File.join(Rails.root, 'public', 'seed.txt')))
  # file.save!

  # file = Filer::Source.new(name: "amex", note: "source file", month_id: 2)
  # file.document.store!(File.open(File.join(Rails.root, 'public', 'seed.txt')))
  # file.save!


  # file = Filer::Source.new(name: "bank", note: "source file", month_id: 1)
  # file.document.store!(File.open(File.join(Rails.root, 'public', 'seed.txt')))
  # file.save!
end
