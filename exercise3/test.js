class Student {
    constructor(name, year) {
        this.name = name;
        this.year = year;
      }
}

student1 = new Student("James", 2021)
console.log(student1.name)


student1.name = "lebron"
console.log(student1.name)