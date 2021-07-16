require_relative 'task_repository'
require_relative 'task'
require_relative 'view'
require_relative 'controller'
require_relative 'router'

repo = TaskRepository.new
controller = Controller.new(repo)
router = Router.new(controller)

router.run

# p repo
# controller.create_task
# controller.create_task
# controller.mark_task_as_done
# p repo
# controller.list_tasks

# Ask the User to type in the task they want to add to the list
# Create a new INSTANCE of task
# Push the new task to the Task Repository
