class Task < ApplicationRecord

  def self.create_task(text)

    if text.blank?

      false

    else

      text = text.strip

      task = Task.create!(text: text)

      task.nil? ? false : true

    end


  end

  def self.get_all_tasks

    tasks = []

    Task.all.each do |task|

      tasks.push({
                    id: task.id,
                    text: task.text
                 })

    end

    tasks

  end

end
