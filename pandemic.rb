# frozen_string_literal: true

# pandemic

people_status = {
  'Jimmy' => '🦠',
  'Kim' => '👍🏻',
  'Kyle' => '🦠',
  'Justin' => '👍🏻'
}

def quarantine_timing
  Time.now + (2 * 7 * 24 * 60 * 60)
end

def virus_detector(people)
  patient_list = []
  people.each_pair do |name, status|
    patient_list.push({ name => quarantine_timing }) if status == '🦠'
  end
  patient_list
end

virus_detector(people_status)
# [{"Jimmy"=>2020-04-13 16:39:53 +0000}, {"Kyle"=>2020-04-13 16:39:53 +0000}]
