# :first_in sets how long it takes before the job is first run.
# In this case, it is run immediately
Dashing.scheduler.every '10s' do
  last_valuation = current_valuation
  current_valuation = rand(100)

  Dashing.send_event('valuation', { current: current_valuation, last: last_valuation })
  Dashing.send_event('synergy',   { value: rand(100) })
  Dashing.send_event('welcome',   { title: 'cool' })

end
