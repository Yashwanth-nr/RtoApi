task :setup_data => :environment do 
    ka = State.create(name: "Karnataka", transport_code: "KA")
    kl = State.create(name: "Kerala", transport_code: "KL")
    ap = State.create(name: "Andhra Pradesh", transport_code: "AP")

    ka01 = Rto.create(state_id: ka.id, code: "01", vehicle_number: "KA-01", address: "Kormangala", phone: "12345678")

    ka02 = Rto.create(state_id: ka.id, code: "02", vehicle_number: "KA-02", address: "Rajajinagar", phone: "12345678")

    ka03 = Rto.create(state_id: ka.id, code: "03", vehicle_number: "KA-03", address: "Indiranagar", phone: "12345678")

    ka04 = Rto.create(state_id: ka.id, code: "04", vehicle_number: "KA-04", address: "Yeshwanath", phone: "12345678")

    ka05 = Rto.create(state_id: ka.id, code: "05", vehicle_number: "KA-05", address: "Jayanagar 4 block", phone: "12345678")


    Location.create(rto_id: ka05.id, name: "Jayanagar 1st Block")
    Location.create(rto_id: ka05.id, name: "Basavanagudi")
    Location.create(rto_id: ka05.id, name: "Banashankri")

    Location.create(rto_id: ka03.id, name: "Defence Colony")
    Location.create(rto_id: ka03.id, name: "New Tippasandra")
    Location.create(rto_id: ka03.id, name: "Indiranagar")

    Location.create(rto_id: ka04.id, name: "Peenya")
    Location.create(rto_id: ka04.id, name: "Malleshwaram")
end