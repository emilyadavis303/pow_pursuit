ActiveRecord::Schema.define(version: 20141001200535) do

  create_table "resorts", force: true do |t|
    t.string   "name"
    t.string   "snotel_station"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
