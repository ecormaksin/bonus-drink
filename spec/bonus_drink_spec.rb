require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
  specify { expect{BonusDrink.total_count_for(-1)}.to raise_error("購入した本数には正の整数を指定してください") }
  specify { expect{BonusDrink.total_count_for("a")}.to raise_error("購入した本数には正の整数を指定してください") }
end
