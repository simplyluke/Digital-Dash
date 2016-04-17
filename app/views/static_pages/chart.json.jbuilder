dates = @stocks.collect {|s| s.created_at.strftime('%H:%M %b%d')}

json.labels dates
json.datasets(['']) do |hack|
  json.label "Stock Bid Price"
  json.fillColor "rgba(220,220,220,0.2)"
  json.strokeColor "rgba(220,220,220,1)"
  json.pointColor "rgba(220,220,220,1)"
  json.pointStrokeColor "#fff"
  json.pointHighlightFill "#fff"
  json.pointHighlightStroke "rgba(220,220,220,1)"
  stocks = @stocks.collect {|s| (s.bid )} 
  json.data stocks
end
