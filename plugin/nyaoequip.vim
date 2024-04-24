fu! s:setup()
ruby << RUBY
class Nyao装
  attr_accessor :装備, :備わり

  C服 = Struct.new(:名, :為)

  def initialize = @装備 = []
  def 備わる(名) = @備わり = @装備.find { _1.名 == 名 }
  def 靄備わる   = 備わる @装備.map(&:名).fzf.first
  def 行く       = @備わり.為.call

  def <<(o)
    @装備.reject! { _1.名 == o.名 }
    @装備 << o
  end
end
RUBY
endfu

call s:setup()
