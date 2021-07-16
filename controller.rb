require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repository)
    @view = View.new
    @repository = repository
  end

  def create_task # CREATE
    # Ask the User to type in the task they want to add to the list
    title = @view.ask_user_for_task
    # Create a new INSTANCE of task
    task = Task.new(title)
    # Push the new task to the Task Repository
    @repository.add_task(task)
  end

  def list_tasks # READ tasks
    # Get all the tasks from the repository
    tasks = @repository.all_tasks
    # pass them to the view
    # View will display all the tasks
    @view.list_tasks(tasks)
  end

  def mark_task_as_done # UPDATING
    # display all the tasks
    list_tasks
    # Ask the user WHICH task will be marked as done
    index = @view.ask_for_index
    # Access the repository and get the right task
    task = @repository.find_task(index)
    # UPDATE the chosen task instance with done = true
    task.mark_as_done
  end

  def delete_task # DELETE

  end
end
