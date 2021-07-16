class Task
  attr_reader :title, :done

  def initialize(title)
    @title = title
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done
    @done = true
  end
end





