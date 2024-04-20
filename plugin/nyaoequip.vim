fu! s:setup()
ruby << RUBY
class NyaoEquip
  attr_accessor :equipment, :equipped

  Equipment = Struct.new(:label, :operation)

  def initialize   = @equipment = []
  def <<(o)        = @equipment << o
  def equip(label) = @equpped = @equipment.find { |e| e.label == label }
  def fzf_equip    = equip @equipment.map(&:label).fzf.first
  def execute      = @equpped.operation.call
end
RUBY
endfu

call s:setup()
