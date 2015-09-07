# encoding: utf-8
require 'open-uri'
namespace :crawler do

  # task :build => ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate", :setup ]

  desc "nccu"
  task nccu: :environment do ||
    result = JSON.parse(open("http://140.119.98.20:8080/nccu/Servlet?type=1").read)

    dt = DateTime.strptime(result["timestamp"],'%s') + 8.hour

    TemperatureLog.create(sensor:Sensor.find(6), value:result["temp1"], date_time:dt)
    TemperatureLog.create(sensor:Sensor.find(7), value:result["temp2"], date_time:dt)

    IlluminanceLog.create(sensor:Sensor.find(8), value:result["lux1"], date_time:dt)
    IlluminanceLog.create(sensor:Sensor.find(9), value:result["lux2"], date_time:dt)

    HumidityLog.create(sensor:Sensor.find(10), value:result["rh1"], date_time:dt)
    HumidityLog.create(sensor:Sensor.find(11), value:result["rh2"], date_time:dt)

    AirQualityLog.create(sensor:Sensor.find(12), value:result["co21"], date_time:dt)
    AirQualityLog.create(sensor:Sensor.find(13), value:result["co22"], date_time:dt)
  end
end