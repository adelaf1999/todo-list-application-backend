require 'rails_helper'

RSpec.describe Task, type: :model do

  it 'creates a task with text argument' do

    task_was_created = Task.create_task('My first holiday task')

    expect(task_was_created).to eq true

  end

  it 'gets all pre-existing tasks' do

    Task.create!(text: 'My second holiday task')

    tasks = Task.get_all_tasks

    expect(tasks.length).to eq Task.all.length

  end

  it 'deletes a pre-existing task' do


    task = Task.create!(text: 'My third holiday task')

    task_id = task.id

    Task.destroy_task(task_id)

    expect(Task.find_by(id: task_id)).to eq nil


  end

  it 'updates a pre-existing task' do

    task_id = Task.create!(text: 'My final holiday task').id

    new_holiday_task_text = 'The real final holiday task'

    Task.update_task(task_id, new_holiday_task_text )

    task = Task.find_by(id: task_id)

    expect(task.text).to eq new_holiday_task_text


  end


end
