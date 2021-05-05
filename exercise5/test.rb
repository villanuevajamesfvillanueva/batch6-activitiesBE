#Encapsulation: wrapping up of data under a single unit
    #Advantages: data hiding, reusability, testing code is easy

class Transaction
    def initialize(quantity, price)
        @quantity = quantity
        @price = price
    end

    def total
        @quantity * @price
    end
end

transact = Transaction.new(5, 100)
puts transact.total



#Abstraction: hides complexity by giving you a more abstract picture
class Transaction2
    def initialize(quantity, price, discount=false)
        @quantity = quantity
        @price = price
        @discount = discount
    end

    def total_transaction
        total_price - get_discount
    end

    private
    
    def total_price
        @quantity * @price
    end

    def get_discount
        discount_price = @discount ? 10: 0
    end
end

transact2 = Transaction2.new(10, 899, true)
puts transact2.total_transaction

#Polymorphism: a method where one is able to execute the same method using different objects
    #Two-ways to achieve polymorphism in ruby: using inheritance, using duck-typing

    #using inheritance: (can be used for targeted error handling/messages)
class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end

    def introduce
        puts "Hi everyone. My name is #{@first_name} #{@last_name}."
    end
end

class Student < Person
    def introduce
        puts "Hello teacher. My name is #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def introduce
        puts "Hello class. My name is #{@first_name} #{@last_name}"
    end
end

john = Student.new("John", "Doe", 18)
john.introduce
imee = Teacher.new("Imee", "Santos", 35)
imee.introduce


    #using duck-typing: allows any object to be passed into a method that has the method signatures expected in order to run
    #                 : it's not important what an object is, rather what it does

class Payment
    def type(payment)
        payment.type
    end
end

class FullyPaid
    def type
        puts "Full paid payment"
    end
end

class Installment
    def type
        puts "Installment payment"
    end
end

customer_payment = Payment.new
full = FullyPaid.new
customer_payment.type(full)

installment = Installment.new
customer_payment.type(installment)