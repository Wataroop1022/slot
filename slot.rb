def slot
  coin = 3000
  puts "コイン#{coin}枚"
  
  puts "コインを何枚入れますか？（枚数を入力）"
  coin_throw = gets.chomp.to_i
  if coin_throw > coin
    puts "持ち金の範囲で勝負してください"
    return true
  end
  
  number1 = rand(1..3)
  number2 = rand(1..3)
  number3 = rand(1..3)
  number4 = rand(1..3)
  number5 = rand(1..3)
  number6 = rand(1..3)
  number7 = rand(1..3)
  number8 = rand(1..3)
  number9 = rand(1..3)
  

  puts "エンターを押してスロットを止めてください"
  
  loop do
    n1 = gets.chomp.to_i
    if n1 != 0
      puts"enterを押してください"
    else
      puts "--------------------"
      puts "|#{number1}|"
      puts "|#{number2}|"
      puts "|#{number3}|"
      break
    end
  end
  
  loop do
    n2 = gets.chomp.to_i
    if n2 != 0
      puts"enterを押してください"
    else
      puts "--------------------"
      puts "|#{number1}|#{number4}|"
      puts "|#{number2}|#{number5}|"
      puts "|#{number3}|#{number6}|"
      break
    end
  end
    
  loop do
    n3 = gets.chomp.to_i
    if n3 != 0
      puts"enterを押してください"
    else
      puts "--------------------"
      puts "|#{number1}|#{number4}|#{number7}|"
      puts "|#{number2}|#{number5}|#{number8}|"
      puts "|#{number3}|#{number6}|#{number9}|"
      break
    end
  end    

  if (number1 == number4)&&(number1 == number7)
    puts "上に#{number1}が揃いました！"
    coin = coin + coin_throw * 3
  elsif(number2 == number5)&&(number2 == number8)
    puts "真ん中に#{number2}が揃いました！"
   coin = coin + coin_throw * 4
  elsif(number3 == number6)&&(number3 == number9)
    puts "下に#{number3}が揃いました！"
    coin = coin + coin_throw * 3
  else
     coin = coin - coin_throw
  end
  
  if coin > 0
    loop do
      puts "コイン#{coin}枚"
      puts "スロットを続けますか？\n１(続ける)2(やめる)"
      select_quit = gets.chomp.to_i
      if select_quit == 2
        exit
      elsif select_quit == 1
        return true
      else
        puts "１か２を入力してください"
        puts "--------------------"
      end
    end
  end
end

next_game = true

while  next_game
  next_game = slot
end