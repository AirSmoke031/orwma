class Player {
  String imageUrl;
  String name;
  String nickname;
  String position;
  String country;
  String team;
  List<String> heroes;
  int rating;
  int earnings;
  int mmr;


  Player({
    this.imageUrl,
    this.name,
    this.nickname,
    this.country,
    this.team,
    this.position,
    this.heroes,
    this.rating,
    this.earnings,
    this.mmr,
  });
}
final List<Player> players = [
  Player(
    imageUrl: 'assets/images/Arteezy.jpg',
    name: 'Artour Babaev',
    nickname: 'Arteezy',
    country: 'Taškent, Uzbekistan',
    team: 'Evil Geniuses',
    position: 'Carry',
    heroes: ['Drow Ranger', 'Lycan', 'Arc Warden'],
    rating: 5,
    earnings: 2257369,
    mmr: 11000,
),
  Player(
    imageUrl: 'assets/images/Dendi.jpg',
    name: 'Danil Ishutin',
    nickname: 'Dendi',
    country: 'Ukraine',
    team: 'B8',
    position: 'Solo Mid',
    heroes: ['Pudge', 'Queen of Pain','Puck'],
    rating: 4,
    earnings: 803057,
    mmr: 8500,
  ),
  Player(
    imageUrl: 'assets/images/MATUMBAMAN.jpg',
    name: 'Lasse Urpalainen',
    nickname: 'MATUMBAMAN',
    country: 'Finland',
    team: 'Team Secret',
    position: 'Carry',
    heroes: ['Lycan', 'Naga Siren','Lone Druid'],
    rating: 5,
    earnings: 3702103,
    mmr: 10000,
  ),
  Player(
    imageUrl: 'assets/images/Miracle.jpg',
    name: 'Amer Al-Barkawi',
    nickname: 'Miracle',
    country: 'Jordan',
    team: 'Team Nigma',
    position: 'Carry',
    heroes: ['Ember Spirit', 'Slark', 'Anti Mage'],
    rating: 5,
    earnings: 4768999,
    mmr: 11000,
  ),
  Player(
    imageUrl: 'assets/images/N0tail.jpg',
    name: 'Johan Sundstein',
    nickname: 'N0tail',
    country: 'Denmark',
    team: ' OG',
    position: 'Hard Support',
    heroes: ['Io', 'Abbadon','Chen'],
    rating: 5,
    earnings: 6904849,
    mmr: 10000,
  ),
  Player(
    imageUrl: 'assets/images/Nikobaby.jpg',
    name: 'Nikolay Nikolov',
    nickname: 'Nikobaby',
    country: 'Bulgaria',
    team: 'Alliance',
    position: 'Hard Carry',
    heroes: ['Morphling', 'Slark','Juggernaut'],
    rating: 4,
    earnings: 237854,
    mmr: 10000,
  ),
  Player(
    imageUrl: 'assets/images/Puppey.jpg',
    name: 'Clement Ivanov',
    nickname: 'Puppey',
    country: 'Estonia',
    team: 'Team Secret',
    position: 'Hard Support, Captain',
    heroes: ['Chen', 'Enchantress','Bounty Hunter'],
    rating: 5,
    earnings: 2804543,
    mmr: 10000,
  ),
  Player(
    imageUrl: 'assets/images/s4.jpg',
    name: 'Gustav Magnusson',
    nickname: 's4',
    country: 'Sweden',
    team: 'Alliance',
    position: 'Offlane',
    heroes: ['Puck', 'Magnus','Batrider'],
    rating: 5,
    earnings: 2524120,
    mmr: 10000,
  ),
  Player(
    imageUrl: 'assets/images/SumaiL.jpg',
    name: 'Syed Sumail Hassan',
    nickname: 'SumaiL',
    country: 'Pakistan',
    team: 'Evil Geniuses',
    position: 'Solo Mid',
    heroes: ['Storm Spirit', 'Ember Spirit','Puck'],
    rating: 5,
    earnings: 3608750,
    mmr: 11000,
  ),
  Player(
    imageUrl: 'assets/images/Topson.jpg',
    name: 'Topias Miikka Taavitsainen',
    nickname: 'Topson',
    country: 'Finland',
    team: 'OG',
    position: 'Solo Mid',
    heroes: ['Monkey King', 'Invoker','Tiny'],
    rating: 5,
    earnings: 5424214,
    mmr: 10000,
  ),
  Player(
    imageUrl: 'assets/images/ivky.jpg',
    name: 'Ivan Ivezić',
    nickname: 'Ivky',
    country: 'Croatia',
    team: 'Team Elitni Odredi',
    position: 'Solo Mid',
    heroes: ['Monkey King', 'Invoker','Tiny'],
    rating: 5,
    earnings: 5424214,
    mmr: 10000,
  ),



];