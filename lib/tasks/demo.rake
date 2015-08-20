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
    
    School.create(name: "名間國中", address: "名間國中")
    "20F85EA966C3"
    "20F85EA9546A"
    "20F85EA95CC2"
    "20F85EA972D1"
    "20F85EA95D19"
    "20F85EAA0D75"
    "20F85EA96E6E"
    "20F85EA96E8C"
    "20F85EA963F8"
    "20F85EA96E72"
    "20F85EA972D9"
    "20F85EA95C63"
    "20F85EAA7654"
    "20F85EAA54DD"
    "20F85EAA29E3"
    "20F85EAA75FC"
    "20F85EA96732"
    "20F85EAA2A35"
    "20F85EAA0F47"
    "20F85EAA100E"
    "20F85EAA10EF"
    "20F85EAA508B"
    "20F85EAA104A"
    "20F85EAA1508"
    "20F85EA9C6C9"
    "20F85EAA74A6"
    "20F85EAA753A"
    "20F85EAA14DB"
    "20F85EAA14C9"
    "20F85EAA764C"

    School.create(name: "和平高中", address: "和平高中")
    "20F85EAA5484"
    "20F85EAA760E"
    "20F85EA95491"
    "20F85EA9639E"
    "20F85EA965A1"
    "20F85EA95CEB"
    "20F85EAA14EB"
    "20F85EA95467"
    "20F85EA9737E"
    "20F85EAA0FAC"

    School.create(name: "河堤國小", address: "河堤國小")
    "20F85EAA109F"
    "20F85EA95D05"
    "20F85EA96EA6"
    "20F85EAA0F67"
    "20F85EA96E8E"
    "20F85EA97374"
    "20F85EA95A08"
    "20F85EAA5507"
    "20F85EA9731D"
    "20F85EAA1271"
  end
end