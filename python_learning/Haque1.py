# def say_hello():
#     print("hello, python learners!")

# say_hello()

# def square(num):
#     return num * num

# result = square(5)
# print (result)

# def is_even(number):
#     if number % 2 == 0:
#         return True
#     else:
#         return False
    
# result = is_even(6)
# print(result)

# def greet_user(name,age):
#     print(f"hello {name} you are {age} years old")
#     return
    
# greet_user("Haque",25)

# def calculate_area(length, width):
#     area = length * width
#     return area

# result = calculate_area(5,10)
# print (result)

class Car:
    def __init__(self, brand, year):
        self.brand = brand
        self.year = year

    def display_info(self):
        print(f"car brand: {self.brand}, and year: {self.year}")

car1 = Car("Maruti",2020)
car1.display_info()
      
