# http://vipiskaegrul.ru/slovar-terminov/kod-prichiny-postanovki-kpp.html
class KppValidator < ValidatesRussian::Validator
  validates_using do |kpp|
    next false unless kpp.size == 9
    next false unless ValidatesRussian::REGION_NUMBERS.include?(kpp[0..1])
    next false unless kpp =~ /^\d+$/
    next false unless kpp[5..6] != '00'
  end
end
