puts "This program will change any 3 numbers to numbers divisible by 3"
puts "Please enter only integers"
puts "Enter first number"
number1 = gets.chomp
puts "Enter second number"
number2 = gets.chomp
puts "Enter third number"
number3 = gets.chomp

#Sprawdzenie czy uzytkownik nie podal innych znakow niz liczby calkowite
numbers_from_user = [number1, number2, number3]
def sprawdz_czy_input_to_liczby(array)
  array.each do |element| 
        if element =~ /^-?[0-9]+$/
        else
          puts "Invalid input. Please provide only Integers."
          exit
        end
        if element.include? "-"
          puts "Invalid input. Please provide only Integers larger than 0 or equal 0."
          exit
        end
  end
end

sprawdz_czy_input_to_liczby(numbers_from_user)

#Zamiana liczb ze Stringow na Intigery:
number1 = number1.to_i
number2 = number2.to_i
number3 = number3.to_i

numbers_from_user = [number1, number2, number3]

puts "You have provided following numbers #{numbers_from_user}"

def zamien_liczbe_na_tablice_stringow(a)
  #puts "Liczba #{a} zamieniona na tablice stringow:"
  return a.to_s.chars
end

array1S = zamien_liczbe_na_tablice_stringow(number1)
array2S = zamien_liczbe_na_tablice_stringow(number2)
array3S = zamien_liczbe_na_tablice_stringow(number3)


def zamien_tablice_stringow_na_tablice_integerow(a)
  #puts "Tablica stringow #{a} zamieniona na tablice integerow:"
  return a.map {|element| element.to_i}
end

array1 = zamien_tablice_stringow_na_tablice_integerow(array1S)
array2 = zamien_tablice_stringow_na_tablice_integerow(array2S)
array3 = zamien_tablice_stringow_na_tablice_integerow(array3S)


def dodaj_1_do_pierwszej_cyfry(a)
  #puts "Dodaje 1 do pierwszej cyfry wynoszacej #{a}"
  return a[0]=a[0]+1
end

def dodaj_2_do_pierwszej_cyfry(a)
  #puts "Dodaje 2 do pierwszej cyfry wynoszacej #{a}"
  a[0]=a[0]+2
end

def dodaj_3_do_pierwszej_cyfry(a)
  #puts "Dodaje 3 do pierwszej cyfry wynoszacej #{a}"  
  a[0]=a[0]+3
end


def najwieksza_liczba(array)
  return array.max
end

def najmniejsza_liczba(array)
  return array.min
end

def srodkowa_liczba(number1, number2, number3, array)
  if (number1 == number2 && number1 == number3)
    return number1
  elsif (number1 != number2 && number1 !=number3 && number2 !=number3)
    array.each do |element| 
      if element > array.min && element < array.max
      return element
      end
    end
  elsif (number1 == number2 && number1 != number3)
    return number1
  elsif (number1 == number3 && number1 != number2)
    return number1 
  elsif (number2 == number3 && number2 != number1)
    return number2
  end
end

#puts "Najwieksza liczba to:"
max = najwieksza_liczba(numbers_from_user)

#puts "Najmniejsza liczba to:"
min = najmniejsza_liczba(numbers_from_user)

#puts "Srodkowa liczba to:"
mid = srodkowa_liczba(number1, number2, number3, numbers_from_user)



def reszta_z_dzielenia_przez_3(a)
  #puts "Reszta z dzielenia przez 3 dla liczby #{a} wynosi:" 
  a % 3
end

reszta1 = reszta_z_dzielenia_przez_3(number1)
reszta2 = reszta_z_dzielenia_przez_3(number2)
reszta3 = reszta_z_dzielenia_przez_3(number3)

reszty = [reszta1, reszta2, reszta3]


#puts "ilosc liczb z reszta z dzielenia przez 3 wynoszaca 0:"
ilosc_liczb_z_reszta_rowna_0 = reszty.count(0)
#puts "ilosc liczb z reszta z dzielenia przez 3 wynoszaca 1:"
ilosc_liczb_z_reszta_rowna_1 = reszty.count(1)
#puts "ilosc liczb z reszta z dzielenia przez 3 wynoszaca 2:"
ilosc_liczb_z_reszta_rowna_2 = reszty.count(2)



def dzialania_dla_liczby_1(x, reszta1, array1, number1)
  x
  if reszta1 ==2
      array1[0] = dodaj_1_do_pierwszej_cyfry(array1)
      number1_changed = array1.join()
      x = x-1
      return x, number1_changed = number1_changed.to_i
  elsif reszta1 == 1
      array1[0] = dodaj_2_do_pierwszej_cyfry(array1)
      number1_changed = array1.join()
      x = x-2
      return x, number1_changed = number1_changed.to_i
  elsif reszta1 == 0
      return x, number1_changed = number1
  end
  return x, number1_changed = number1_changed.to_i
end



def dzialania_dla_liczby_2(x, reszta2, array2, number2)
  x
  if reszta2 == 2
      array2[0] = dodaj_1_do_pierwszej_cyfry(array2)
      number2_changed = array2.join()
      x = x-1
      return x, number2_changed = number2_changed.to_i
  elsif reszta2 == 1
      array2[0] = dodaj_2_do_pierwszej_cyfry(array2)
      number2_changed = array2.join()
      x = x-2
      return x, number2_changed = number2_changed.to_i
  elsif reszta2 == 0
      return x, number2_changed = number2
  end
  return x, number2_changed = number2_changed.to_i
end 


def dzialania_dla_liczby_3(x, reszta3, array3, number3)
  x
  if reszta3 == 2
      array3[0] = dodaj_1_do_pierwszej_cyfry(array3)
      number3_changed = array3.join()
      x = x-1
      return x, number3_changed = number3_changed.to_i
  elsif reszta3 == 1
      array3[0] = dodaj_2_do_pierwszej_cyfry(array3)
      number3_changed = array3.join()
      x = x-2
      return x, number3_changed = number3_changed.to_i
  elsif reszta3 == 0
      return x, number3_changed = number3
  end
  return x, number3_changed = number3_changed.to_i
end


def dodaj_trzy_do_pierwszej_cyfry(x, wynik, array)
  x
  array_string_wynik = zamien_liczbe_na_tablice_stringow(wynik)
  array_wynik = zamien_tablice_stringow_na_tablice_integerow(array_string_wynik)
  array_wynik[0] = dodaj_3_do_pierwszej_cyfry(array_wynik)
  number_changed = array_wynik.join()
  x = x-3
  return x, number_changed = number_changed.to_i
end


def znajdz_max_i_dodaj_3_do_pierwszej_cyfry (x,wynik,wynik1,wynik2,wynik3)
  if x >=3
    max_z_wyniku = najwieksza_liczba(wynik)
      if max_z_wyniku == wynik1
        wynik1_z_x = dodaj_trzy_do_pierwszej_cyfry(x, wynik1, wynik)
        wynik1 = wynik1_z_x[1].to_i
        x = wynik1_z_x[0].to_i
      elsif max_z_wyniku == wynik2 
        wynik2_z_x = dodaj_trzy_do_pierwszej_cyfry(x, wynik2, wynik)
        wynik2 = wynik2_z_x[1].to_i
        x = wynik2_z_x[0].to_i
      elsif max_z_wyniku == wynik3
        wynik3_z_x = dodaj_trzy_do_pierwszej_cyfry(x, wynik3, wynik)
        wynik3 = wynik3_z_x[1].to_i
        x = wynik3_z_x[0].to_i
      end
  end
  return wynik = [wynik1, wynik2, wynik3] 
end

# x = available changes
x = 6

if ilosc_liczb_z_reszta_rowna_0 == 0
  #puts "zadna z liczb nie jest podzielna przez 3"
  wynik1_z_x = dzialania_dla_liczby_1(x, reszta1, array1, number1)
  wynik1 = wynik1_z_x[1].to_i
  x = wynik1_z_x[0].to_i
  wynik2_z_x = dzialania_dla_liczby_2(x, reszta2, array2, number2)
  wynik2 = wynik2_z_x[1].to_i
  x = wynik2_z_x[0].to_i
  wynik3_z_x = dzialania_dla_liczby_3(x, reszta3, array3, number3)
  wynik3 = wynik3_z_x[1].to_i
  x = wynik3_z_x[0].to_i
  wynik = [wynik1, wynik2, wynik3]
  puts "The result #{wynik}"
end


if ilosc_liczb_z_reszta_rowna_0 == 1
  #puts "jedna liczba jest podzielna przez 3"
  wynik1_z_x = dzialania_dla_liczby_1(x, reszta1, array1, number1)
  wynik1 = wynik1_z_x[1].to_i
  x = wynik1_z_x[0].to_i
  wynik2_z_x = dzialania_dla_liczby_2(x, reszta2, array2, number2)
  wynik2 = wynik2_z_x[1].to_i
  x = wynik2_z_x[0].to_i
  wynik3_z_x = dzialania_dla_liczby_3(x, reszta3, array3, number3)
  wynik3 = wynik3_z_x[1].to_i
  x = wynik3_z_x[0].to_i
  wynik = [wynik1, wynik2, wynik3]
  #puts "The result #{wynik}"
  wynik = znajdz_max_i_dodaj_3_do_pierwszej_cyfry(x,wynik,wynik1,wynik2,wynik3)
  puts "The result #{wynik}"
end


if ilosc_liczb_z_reszta_rowna_0 == 2
  #puts "dwie liczby sa podzielna przez 3"
  wynik1_z_x = dzialania_dla_liczby_1(x, reszta1, array1, number1)
  wynik1 = wynik1_z_x[1].to_i
  x = wynik1_z_x[0].to_i
  wynik2_z_x = dzialania_dla_liczby_2(x, reszta2, array2, number2)
  wynik2 = wynik2_z_x[1].to_i
  x = wynik2_z_x[0].to_i
  wynik3_z_x = dzialania_dla_liczby_3(x, reszta3, array3, number3)
  wynik3 = wynik3_z_x[1].to_i
  x = wynik3_z_x[0].to_i
  wynik = [wynik1, wynik2, wynik3]
  #puts "The result #{wynik}"
  wynik = znajdz_max_i_dodaj_3_do_pierwszej_cyfry(x,wynik,wynik1,wynik2,wynik3)
  puts "The result #{wynik}"
end


if ilosc_liczb_z_reszta_rowna_0 == 3
  #puts "trzy liczby sa podzielna przez 3"
  wynik1_z_x = dzialania_dla_liczby_1(x, reszta1, array1, number1)
  wynik1 = wynik1_z_x[1].to_i
  x = wynik1_z_x[0].to_i
  wynik2_z_x = dzialania_dla_liczby_2(x, reszta2, array2, number2)
  wynik2 = wynik2_z_x[1].to_i
  x = wynik2_z_x[0].to_i
  wynik3_z_x = dzialania_dla_liczby_3(x, reszta3, array3, number3)
  wynik3 = wynik3_z_x[1].to_i
  x = wynik3_z_x[0].to_i
  wynik = [wynik1, wynik2, wynik3]
  #puts "The result #{wynik}"
  wynik = znajdz_max_i_dodaj_3_do_pierwszej_cyfry(x,wynik,wynik[0],wynik[1],wynik[2])
  #puts "The result #{wynik}"
  x = x - 3
  wynik = znajdz_max_i_dodaj_3_do_pierwszej_cyfry(x,wynik,wynik[0],wynik[1],wynik[2])
  puts "The result #{wynik}"
end