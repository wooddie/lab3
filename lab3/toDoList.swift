//
//  ToDoList.swift
//  lab3
//
//  Created by Канапия Базарбаев on 17.02.2024.
//

import Foundation

struct Task {
    var title: String
    var description: String
    var isCompleted: Bool
}

class ToDoList {
    var tasks: [Task] = []
    
    func addTask(title: String, description: String) {
        let newTask = Task(title: title, description: description, isCompleted: false)
        tasks.append(newTask)
    }
    
    func removeTask(byTitle title: String) {
        tasks = tasks.filter { $0.title != title }
    }
    
    func updateStatus(byTitle title: String, isCompleted: Bool) {
        if let index = tasks.firstIndex(where: { $0.title == title }) {
            tasks[index].isCompleted = isCompleted
        }
    }
    
    func displayAllTasks() {
        for (index, task) in tasks.enumerated() {
            print("\n\(index + 1). \(task.title) - \(task.isCompleted ? "Completed" : "Not completed")")
            print(" Descripton: \(task.description)")
        }
    }
    
    func displayCompletedTasks() {
        let completedTasks = tasks.filter { $0.isCompleted }
        print("\nCompleted tasks:")
        for (index, task) in completedTasks.enumerated() {
            print("\(index + 1). \(task.title)")
        }
    }
    
    func displayIncompleteTasks() {
        let incompleteTasks = tasks.filter { !$0.isCompleted }
        print("\nIncomplete tasks:")
        for (index, task) in incompleteTasks.enumerated() {
            print("\(index + 1). \(task.title)")
        }
    }
    
    func clearCompletedTasks() {
        tasks = tasks.filter { !$0.isCompleted }
    }
}
