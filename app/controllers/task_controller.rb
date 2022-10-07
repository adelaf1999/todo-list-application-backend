class TaskController < ApplicationController

  def create

    text = params[:text]

    task_was_created = Task.create_task(text)

    if task_was_created

      @success = true

      @message = 'Successfully created task'

      @tasks = Task.get_all_tasks


    else

      @success = false

      @message = 'There was an error creating the task'

    end

  end

end
