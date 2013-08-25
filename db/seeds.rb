# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
places = Place.create([
  { latitude: 41.259475, longitude: 140.345028, description: '階段国道' },
  { latitude: 41.185235, longitude: 140.443702, description: '三厩駅自転車置き場' },
  { latitude: 41.185283, longitude: 140.443773, description: '三厩駅待ち合い室' },
  { latitude: 41.185259, longitude: 140.443891, description: '三厩駅ホーム' },
  { latitude: 41.183592, longitude: 140.487997, description: '今別川岸' },
  { latitude: 41.182954, longitude: 140.487466, description: 'あすなろ橋' },
  { latitude: 41.181947, longitude: 140.487418, description: '旧・今別営林署前バス停' },
  { latitude: 41.181708, longitude: 140.487472, description: '増川営林署今別営林事務所' },
  { latitude: 41.179556, longitude: 140.490353, description: 'バス回転場所' },
  { latitude: 41.179350, longitude: 140.490489, description: '伊藤食堂' },
  { latitude: 41.179219, longitude: 140.491144, description: '今別駅ホーム' },
  { latitude: 41.179439, longitude: 140.490642, description: '今別駅改札' },
  { latitude: 41.046969, longitude: 140.636447, description: '蟹田警察署前' },
  { latitude: 41.033441, longitude: 140.645714, description: '桜町踏切' },
  { latitude: 41.034056, longitude: 140.646092, description: '桜町踏切先堤防' },
  { latitude: 41.038525, longitude: 140.642514, description: '蟹田駅' },
  { latitude: 41.038088, longitude: 140.642954, description: '蟹田駅跨線橋' },
  { latitude: 41.038430, longitude: 140.642431, description: '蟹田駅ホーム' },
  { latitude: 41.038250, longitude: 140.642799, description: '蟹田駅ホーム' },
  { latitude: 41.038536, longitude: 140.642469, description: '蟹田駅ホーム' },
  { latitude: 41.007164, longitude: 140.648151, description: '瀬辺地駅近く制限高2.7m標識' },
  { latitude: 40.828663, longitude: 140.734895, description: '青森駅前' },
  { latitude: 40.828760, longitude: 140.734728, description: '青森駅改札' },
  { latitude: 0.000000, longitude: 0.000000, description: '津軽線車両内' },
  { latitude: 0.000000, longitude: 0.000000, description: '津軽線車両内' },
  { latitude: 0.000000, longitude: 0.000000, description: '津軽線車両内' },
  { latitude: 0.000000, longitude: 0.000000, description: '津軽線車両内' },
  { latitude: 0.000000, longitude: 0.000000, description: '津軽線車両内' },
  { latitude: 0.000000, longitude: 0.000000, description: '津軽線車両内' },
  { latitude: 0.000000, longitude: 0.000000, description: '津軽線車両内' },
  { latitude: 0.000000, longitude: 0.000000, description: '津軽線車両内' }
])
