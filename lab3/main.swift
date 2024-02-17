//
//  main.swift
//  lab3
//
//  Created by Канапия Базарбаев on 17.02.2024.
//

import Foundation

//lab3 student magazine

let magazine = studentMagazine()

magazine.addStudent(Name: "Kanapiya", Surname: "Bazarbayev", AverageGrade: 3.9)
magazine.addStudent(Name: "Alibek", Surname: "Ataibek", AverageGrade: 4.0)
magazine.addStudent(Name: "Asylan", Surname: "Ermekov", AverageGrade: 4.2)

magazine.displayAllStudents()

print("\nSoorting by AVG")
magazine.sortSstudentByAVG()
magazine.displayAllStudents()

print("\nAVG of all students: \(magazine.calculateAVG())")

if let highestGradeStudent = magazine.findHighAVG() {
    print("\nStudent with highest AVG: Name: \(highestGradeStudent.Name); Surname: \(highestGradeStudent.Surname); AVG: \(highestGradeStudent.AverageGrade)")
}

magazine.removeStudent(Name: "Kanapiya", Surname: "Bazarbayev")
print("\nAfter remove student")
magazine.displayAllStudents()


//lab3 to do list

let toDoList = ToDoList()

toDoList.addTask(title: "Milk and eggs", description: "Buy milk and eggs")
toDoList.addTask(title: "Clean up", description: "Clean the room")

print("\nDisplay all task:")
toDoList.displayAllTasks()

toDoList.updateStatus(byTitle: "Milk and eggs", isCompleted: true)

print("\nAfter completing task1:")
toDoList.displayAllTasks()

toDoList.displayCompletedTasks()
toDoList.displayIncompleteTasks()

toDoList.clearCompletedTasks()

print("\nAfte clean completed tasks:")
toDoList.displayAllTasks()
