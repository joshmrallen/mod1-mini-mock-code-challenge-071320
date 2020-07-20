require 'pry'
require_relative './book'
require_relative './author'

joyce = Author.new("James Joyce")
adams = Author.new("Ansel Adams")
picard = Author.new("Jean-luke Picard")
clemans = Author.new("Samuel Clemans")

joyce.write_book("Ulyses", 500)
joyce.write_book("Finnegan's Wake", 320)
adams.write_book("Don't Stop the F-Stop", 720)
adams.write_book("See It All", 600)
adams.write_book("Rounded Stones Under a Mountain", 400)
picard.write_book("The Unknown", 900)
picard.write_book("Boldly Going", 400)
picard.write_book("Wrinkly Foreheads", 590)
picard.write_book("Makeup", 325)
picard.write_book("Voyaging", 150)
clemans.write_book("Huckleberry Finn", 320)
clemans.write_book("The Frog Jumping Contest", 150)
clemans.write_book("The Mighty Mississippi", 400)
clemans.write_book("Tom & Huck", 560)
clemans.write_book("A Connecticut Yankee in King Arthur's Court", 740)


binding.pry


