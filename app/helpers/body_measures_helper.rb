module BodyMeasuresHelper
  def categorize_bmi(bmi)
    case bmi
    when 0..15
      'Very severely underweight'
    when 15..16
      'Severely underweight'
    when 16..18.5
      'Underweight'
    when 18.5..25
      'Normal (healthy weight)'
    when 25..30
      'Overweight'
    when 30..35
      'Obese Class I (Moderately obese)'
    when 35..40
      'Obese Class II (Severely obese)'
    when 40..45
      'Obese Class III (Very severely obese)'
    end
  end
end
