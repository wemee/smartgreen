# encoding: utf-8

namespace :demo do

  # task :build => ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate", :setup ]

  desc "demo"
  task create: :environment do ||
    # school = School.create(name: "國眾小學", address: "台北市內湖區陽光街298號3樓")
    # School.create(name: "國眾中學", address: "台北市內湖區陽光街298號3樓")

    # room = Room.create(label: "1年1班", school: school)
    # Room.create(label: "1年2班", school: school)
    # Room.create(label: "1年3班", school: school)
    # Room.create(label: "2年1班", school: school)
    # Room.create(label: "1年2班", school: school)
    # Room.create(label: "1年3班", school: school)

    types = []
    types[0] = Type.create(label: "TemperatureMeter")
    types[1] = Type.create(label: "IlluminanceMeter")
    types[2] = Type.create(label: "HumidityMeter")
    types[3] = Type.create(label: "AirQualityMeter")
    types[4] = Type.create(label: "LeoPlug")
    
    # sensors = [];
    # types.each{|type|
    #   sensors << Sensor.create(type: type, room: room)
    # }
    
    # hour = 0.0;
    # datetime = DateTime.new(2015,3,1)
    # 100.times{
    #   HumidityLog.create(sensor: sensors[0], value: rand(300)+300, date_time: datetime)
    #   AirQualityLog.create(sensor: sensors[1], value: rand(300)+300, date_time: datetime)
    #   TemperatureLog.create(sensor: sensors[2], value: rand(300)+300, date_time: datetime)
    #   IlluminanceLog.create(sensor: sensors[3], value: rand(300)+300, date_time: datetime)
    #   LeoPlugLog.create(sensor: sensors[4], date_time: datetime, 
    #     device: "light", standby_watt: rand(100), standby_watt: rand(100), voltage: rand(100), 
    #     amp: rand(100), power: rand(100), energy: rand(100), power_on_off: true, reactive_power: rand(100))
      
    #   hour += 1
    #   hour %= 24
    #   datetime += (hour/24)
    # }
    
    school = School.create(name: "名間國中", address: "名間國中")
    LeoPlug.create(mac:"20F85EA966C3", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA9546A", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA95CC2", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA972D1", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA95D19", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA0D75", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA96E6E", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA96E8C", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA963F8", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA96E72", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA972D9", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA95C63", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7654", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA54DD", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA29E3", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA75FC", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA96732", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA2A35", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA0F47", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA100E", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA10EF", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA508B", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA104A", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA1508", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA9C6C9", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA74A6", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA753A", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA14DB", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA14C9", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA764C", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7746", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6D9B", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7515", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA766F", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA51B7", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA73BB", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6F75", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7575", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA5104", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6F90", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA746B", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA74D9", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6DC6", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA0CA9", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA73AE", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA2885", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA75E4", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6F31", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA75B6", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7213", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6F4D", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA75EB", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6F94", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA51B1", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA73A9", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA5211", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA55E5", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7753", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6DA1", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA726E", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7667", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7223", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7514", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA6DE7", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7662", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7487", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA50A9", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7788", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA7443", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA75B5", school:school, brand:"FamilyAsyst", voltage:"AC110V")

    school = School.create(name: "和平高中", address: "和平高中")
    LeoPlug.create(mac:"20F85EAA5484", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA760E", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA95491", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA9639E", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA965A1", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA95CEB", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA14EB", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA95467", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA9737E", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA0FAC", school:school, brand:"FamilyAsyst", voltage:"AC110V")

    school = School.create(name: "河堤國小", address: "河堤國小")
    LeoPlug.create(mac:"20F85EAA109F", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA95D05", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA96EA6", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA0F67", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA96E8E", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA97374", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA95A08", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA5507", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EA9731D", school:school, brand:"FamilyAsyst", voltage:"AC110V")
    LeoPlug.create(mac:"20F85EAA1271", school:school, brand:"FamilyAsyst", voltage:"AC110V")

    LeoPlug.create(mac:"20F85EAA116F", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA1222", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA0F97", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA0F78", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA0F36", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA1160", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA1509", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA0F91", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA0F81", school:school, brand:"FamilyAsyst", voltage:"AC220V")
    LeoPlug.create(mac:"20F85EAA1162", school:school, brand:"FamilyAsyst", voltage:"AC220V")
  end
end