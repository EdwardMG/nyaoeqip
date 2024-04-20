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

$enter_equipment = NyaoEquip.new

$enter_equipment << (NyaoEquip::Equipment.new 'source vim', -> { Ex.source Ev.expand('%') })
$enter_equipment << (NyaoEquip::Equipment.new 'run current file in ruby', -> { Vim.command "!ruby %" })

$enter_equipment.equip 'source vim'


RUBY
endfu

call s:setup()

nno <CR> :ruby $enter_equipment.execute<CR>
nno ,ee :ruby $enter_equipment.fzf_equip<CR>
