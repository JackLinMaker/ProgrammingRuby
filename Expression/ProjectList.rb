class ProjectList
  def initialize
    @projects = []
  end
  
  def projects=(list)
    @projects = list.map(&:upcase)
  end
  
  def [](offset)
    @projects[offset]
  end
end

list = ProjectList.new
list.projects = %w{strip sand prime sand paint sand paint ruby paint}
list[3]
list[4]