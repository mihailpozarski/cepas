class PercentageValidator < ActiveModel::Validator
  def validate(record)
    return if record.assemblies.inject(0) { |t, v| t + v.percentage } == 100

    record.errors[:base] << 'check percentage'
  end
end
