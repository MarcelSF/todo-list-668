class TaskRepository
  def initialize
    @tasks = []
  end

  # Adding a task to the repository
  def add_task(task)
    @tasks << task
  end

  def all_tasks
    @tasks
  end

  def find_task(index)
    @tasks[index]
  end
end
