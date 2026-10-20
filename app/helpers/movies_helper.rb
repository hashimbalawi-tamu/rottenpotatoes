module MoviesHelper
  def sort_link(column, label)
    direction = (@sort == column && @direction == "asc") ? "desc" : "asc"
    link_to label, movies_path(sort: column, direction: direction)
  end
end
