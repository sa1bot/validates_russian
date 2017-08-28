class BikFormatValidator < ValidatesRussian::Validator
  validates_using do |bik|
    next false unless bik.length == 9
    next false unless bik[0..1] == '04'
    next false unless ValidatesRussian::OKATO_REGION_NUMBERS.include?(bik[2..3])
    next false unless bik =~ /\A\d{6}(0[5-9][0-9]|[1-9][0-9]{2})\z/i
  end
end
