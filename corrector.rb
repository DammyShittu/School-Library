class Corrector
  def correct_name(name)
    name
      .split
      .map(&:capitalize)
      .join(' ')
      .slice(0, 11)
  end
end
