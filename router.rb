class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    action = ''
    while action != 4
      # A loop that takes into account the user INTENT
      # Lists all the possible actions
      puts "Welcome to the task manager, please choose what you wish to do"
      puts "1 - Add a task"
      puts "2 - List all tasks"
      puts "3 - Mark a task as done"
      puts "4 - Exit the program"
      # asks the user for the desired action
      action = gets.chomp.to_i
      # It executes the right action
      case action
      when 1
        @controller.create_task
      when 2
        @controller.list_tasks
      when 3
        @controller.mark_task_as_done
      when 4
        # break the loop and exit
      end
    end
  end
end
