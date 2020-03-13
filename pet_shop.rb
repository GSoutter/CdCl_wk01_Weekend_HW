


def pet_shop_name(petshop_hash)
  return petshop_hash[:name]
end

def total_cash(petshop_hash)
  return petshop_hash[:admin][:total_cash]

end


def add_or_remove_cash(petshop_hash, transaction_cash)
  petshop_hash[:admin][:total_cash] += transaction_cash
  return petshop_hash[:admin][:total_cash]
end
