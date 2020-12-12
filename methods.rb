def disp_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan,i|
    puts "#{i}. #{plan[:place]}旅行（#{plan[:price]}円）"
  end
end

def choose_plan(plans)
  while true 
  print "プランの番号を選択 > "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
    puts "1〜3の番号を入力して下さい。"
  end
  plans[plan_num - 1]
end

def decide_number_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts "何名で予約されますか？"
  while true 
    print "人数を入力 > "
    member = gets.to_i
    break if member >= 1
    puts "1以上を入力して下さい。"
  end
  member
end

def calculate_total_charges(chosen_plan,number_of_people)
  puts "#{number_of_people}名ですね。"
  total_charges = chosen_plan[:price] * number_of_people
  if number_of_people >= 5
    puts "5名以上ですので10%割引となります"
    total_charges *= 0.9
  end
  puts "合計金額は#{total_charges.floor}円になります。"
end