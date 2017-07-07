class BonusDrink
  # 新しい飲み物を1本プレゼントしてもらえる空瓶の本数
  BONUS_CONDITION_EMPTY_BOTTLE_COUNT = 3

  # 不正な引数が与えられた場合の例外時に出力するメッセージ
  ERROR_MESSAGE_AMOUNT_INVALID = "購入した本数には正の整数を指定してください"

  def self.total_count_for(amount)
	if !numeric?(amount) || amount < 0
		raise ERROR_MESSAGE_AMOUNT_INVALID
	end
	
	total_count = amount
	rest = amount
	loop do
		if (rest - BONUS_CONDITION_EMPTY_BOTTLE_COUNT) < 0
			break
		end
		# 指定の本数分、新しい飲み物を1本プレゼントしてもらえる
		rest -= BONUS_CONDITION_EMPTY_BOTTLE_COUNT
		rest += 1
		total_count += 1
	end
	total_count
  end

  def self.numeric?(argument)
	argument.to_s =~ /^[0-9]+$/
  end

  private_class_method :numeric?
end
