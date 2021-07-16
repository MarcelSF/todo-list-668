class View
  def list_tasks(task_array)
    task_array.each_with_index do |task, index|
      check_box = task.done? ? "[x]" : "[ ]"
      p "#{index + 1}. #{check_box} #{task.title}"
    end
  end

  def ask_user_for_task
    puts "Please type your task"
    task_title = gets.chomp
    task_title
  end

  def ask_for_index
    puts "Please type the number of the task you wish to mark as done:"
    index = gets.chomp.to_i - 1
  end
end
