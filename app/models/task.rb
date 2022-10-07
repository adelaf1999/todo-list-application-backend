class Task < ApplicationRecord


  def self.destroy_task(id)

    task = Task.find_by(id: id)

    if task.nil?

      false

    else

      task.destroy!

      true

    end


  end

  def self.update_task(id, text)

    task = Task.find_by(id: id)

    if task.nil?

      false

    else

      if text.blank?

        false

      else

        text = text.strip

        task.update!(text: text)

        true

      end

    end

  end

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

    Task.all.order('created_at DESC').each do |task|

      tasks.push({
                    id: task.id,
                    text: task.text
                 })

    end

    tasks

  end

end
