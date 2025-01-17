class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    unless backer.backed_projects.include?(self)
      backer.backed_projects << self
    end
  end
end