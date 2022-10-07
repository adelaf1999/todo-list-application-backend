class TaskController < ApplicationController


  def index

    @tasks = Task.get_all_tasks

  end

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

  def update

    id = params[:id]

    text = params[:text]

    task_was_updated = Task.update_task(id, text)

    if task_was_updated

      @success = true

      @message = 'Successfully updated task'

      @tasks = Task.get_all_tasks


    else

      @success = false

      @message = 'There was an error updating the task'

    end


  end

end
