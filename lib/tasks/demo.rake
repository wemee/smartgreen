# encoding: utf-8

namespace :demo do

  # task :build => ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate", :setup ]

  desc "demo"
  task create: :environment do ||
    school = School.create(name: "國眾小學", address: "台北市內湖區陽光街298號3樓")
    School.create(name: "國眾中學", address: "台北市內湖區陽光街298號3樓")

    room = Room.create(label: "1年1班", school: school)
    Room.create(label: "1年2班", school: school)
    Room.create(label: "1年3班", school: school)
    Room.create(label: "2年1班", school: school)
    Room.create(label: "1年2班", school: school)
    Room.create(label: "1年3班", school: school)

    types = []
    types[0] = Type.create(label: "TemperatureMeter")
    types[1] = Type.create(label: "IlluminanceMeter")
    types[2] = Type.create(label: "HumidityMeter")
    types[3] = Type.create(label: "AirQualityMeter")
    types[4] = Type.create(label: "LeoPlug")
    
    sensors = [];
    types.each{|type|
      sensors << Sensor.create(type: type, room: room)
    }
    
    hour = 0.0;
    datetime = DateTime.new(2015,3,1)
    100.times{
      HumidityLog.create(sensor: sensors[0], value: rand(300)+300, date_time: datetime)
      AirQualityLog.create(sensor: sensors[1], value: rand(300)+300, date_time: datetime)
      TemperatureLog.create(sensor: sensors[2], value: rand(300)+300, date_time: datetime)
      IlluminanceLog.create(sensor: sensors[3], value: rand(300)+300, date_time: datetime)
      LeoPlugLog.create(sensor: sensors[4], date_time: datetime, 
        device: "light", standby_watt: rand(100), standby_watt: rand(100), voltage: rand(100), 
        amp: rand(100), power: rand(100), energy: rand(100), power_on_off: true, reactive_power: rand(100))
      
      hour += 1
      hour %= 24
      datetime += (hour/24)
    }
    
  end
end