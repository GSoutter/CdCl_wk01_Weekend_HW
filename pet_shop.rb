


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


def pets_sold(petshop_hash)
  return petshop_hash[:admin][:pets_sold]
end

def increase_pets_sold(petshop_hash, pets_sold_number)
  petshop_hash[:admin][:pets_sold] += pets_sold_number
  return petshop_hash[:admin][:pets_sold]
end

def stock_count(petshop_hash)
  return petshop_hash[:pets].length
end

def pets_by_breed(petshop_hash, pet_breed_string)
  pet_by_breed_list = []
  for pet in petshop_hash[:pets]
    if pet[:breed] == pet_breed_string
      pet_by_breed_list.push(pet)
    end
  end
  return pet_by_breed_list
end

def find_pet_by_name(petshop_hash, pet_name_string)
  for pet in petshop_hash[:pets]
    if pet[:name] == pet_name_string
      return pet
    end
  end
  return nil
end


def remove_pet_by_name(petshop_hash, pet_name_string)
  for pet in petshop_hash[:pets]
    if pet[:name] == pet_name_string
      petshop_hash[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(petshop_hash, new_pet_hash)
  petshop_hash[:pets].push(new_pet_hash)
end

def customer_cash(customer_hash)
  return customer_hash[:cash]
end
