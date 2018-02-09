require 'colorize'
require_relative 'git'

class Main
  include Git

  def self.menu
    puts 'MAIN MENU'.colorize(:cyan)
    puts "1: Enter git command".colorize(:cyan)
    puts "2: View git config".colorize(:cyan)
    puts "3: Exit"
    choice = gets.to_i
    case choice
      when 1
        puts "Enter git command".colorize(:green)
        Git.display_cmd(gets.strip)
        menu
      when 2
        Git.config
      when 3
        exit
      else
        puts 'Invalid choice'.colorize(:red)
        menu
    end
  end
end

menu