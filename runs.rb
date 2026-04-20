runs = []

loop do
  puts "1. Добавить пробежку"
  puts "2. Показать все пробежки"
  puts "3. Выход"
  print "Выбери дейcтвие: "

  choice = gets.chomp

  if choice == "1"
    print "Введи дату: "
    date = gets.chomp

    print "Введи дистанцию (км): "
    distance = gets.chomp

    runs << { date: date, distance: distance }
    puts "Пробежка успешно добавлена!"

  elsif choice == "2"
    if runs.empty?
      puts "Пробежек  нет"
    else
      puts "Все пробежки:"
      runs.each do |run|
        puts "#{run[:date]} — #{run[:distance]} км"
      end
    end

  elsif choice == "3"
    puts "Давай, до свидание!"
    break
  end
end