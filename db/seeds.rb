# frozen_string_literal: true

# Create level 1 if it doesn't exist , it is mandatory for users to have a initial level
Level.create!(
  level_int: 1,
  title: 'The Beginning'
)

puts 'Level 1 created!.............'

puts 'Seeding data for users!.............'
users = [
  {
    email: 'god@god.god',
    password: 'shishumanu',
    name: 'RubyMoon',
    image: 'https://i.pinimg.com/564x/dd/ed/dd/ddeddda4430440578f6f4c11bdc5eaa0.jpg'
  },
  {
    email: 'ai@ices.edu',
    password: 'aiices',
    name: 'AI',
    image: 'https://hackandhunt.blob.core.windows.net/hack/AI.jpg'
  },
  {
    email: 'teamatom@ices.edu',
    password: 'teamatomices',
    name: 'Atom',
    image: 'https://hackandhunt.blob.core.windows.net/hack/Team%20Atom%20logo.png'
  },
  {
    email: 'theboys@ices.edu',
    password: 'theboysices',
    name: 'The Boys',
    image: 'https://hackandhunt.blob.core.windows.net/hack/The-Boys-Logo.png'
  },
  {
    email: 'nexgennavigator@ices.edu',
    password: 'nexgennavigatorices',
    name: 'NexGen Navigator',
    image: 'https://hackandhunt.blob.core.windows.net/hack/nexgennavigator.jpg'
  },
  {
    email: 'teamzoro@ices.edu',
    password: 'teamzoroices',
    name: 'Zoro',
    image: 'https://hackandhunt.blob.core.windows.net/hack/teamZoro.jpg'
  },
  {
    email: 'nepotronics@ices.edu',
    password: 'nepotronicsices',
    name: 'Nepotronics',
    image: 'https://hackandhunt.blob.core.windows.net/hack/Nepotronics.png'
  },
  {
    email: 'alpha@ices.edu',
    password: 'alphaices',
    name: 'Alpha',
    image: 'https://hackandhunt.blob.core.windows.net/hack/alpha.jpg'
  },
  {
    email: 'teamkk@ices.edu',
    password: 'teamkkices',
    name: 'KK',
    image: 'https://hackandhunt.blob.core.windows.net/hack/teamkk.jpg'
  },
  {
    email: 'teamarkaya@ices.edu',
    password: 'teamarkayaices',
    name: 'ARKAYA',
    image: 'https://hackandhunt.blob.core.windows.net/hack/teamarkaya.png'
  },
  {
    email: 'crkogang@ices.edu',
    password: 'crkogangices',
    name: 'Cr ko gang',
    image: 'https://hackandhunt.blob.core.windows.net/hack/crkogang.jpg'
  },
  {
    email: 'screenwarriors@ices.edu',
    password: 'screenwarriorsices',
    name: 'Screen warriors',
    image: 'https://hackandhunt.blob.core.windows.net/hack/screenwarriors.jpg'
  },
  {
    email: 'bytehunters@ices.edu',
    password: 'bytehuntersices',
    name: 'ByteHunters',
    image: 'https://hackandhunt.blob.core.windows.net/hack/bytehunters.png'
  },
  {
    email: 'teamhacker@ices.edu',
    password: 'teamhackersices',
    name: 'Hacker',
    image: 'https://hackandhunt.blob.core.windows.net/hack/teamhacker.jpg'
  },
  {
    email: 'narpichas@ices.edu',
    password: 'narphichasices',
    name: 'Narpichas',
    image: 'https://hackandhunt.blob.core.windows.net/hack/narpichas.jpeg'
  },
  {
    email: 'odd80@ices.edu',
    password: 'odd80ices',
    name: 'Odd80',
    image: 'https://hackandhunt.blob.core.windows.net/hack/odd80.jpg'
  },
  {
    email: 'teammatrix@ices.edu',
    password: 'teammatrixices',
    name: 'MATRIX',
    image: 'https://hackandhunt.blob.core.windows.net/hack/teammatrix.jpg'
  },
  {
    email: 'voyager@ices.edu',
    password: 'voyagerices',
    name: 'Voyager',
    image: 'https://hackandhunt.blob.core.windows.net/hack/voyager.png'
  },
  {
    email: 'letshunt@ices.edu',
    password: 'letshuntices',
    name: "Let's Hunt",
    image: 'https://hackandhunt.blob.core.windows.net/hack/hunters2.jpg'
  },
  {
    email: 'digitx@ices.edu',
    password: 'digitxices',
    name: 'DigitX',
    image: 'https://hackandhunt.blob.core.windows.net/hack/digitx.jpeg'
  },
  {
    email: 'spykids@ices.edu',
    password: 'spykidsices',
    name: 'Spy kids',
    image: 'https://hackandhunt.blob.core.windows.net/hack/spykids.jpeg'
  },
  {
    email: 'bughunterz@ices.edu',
    password: 'bughunterzices',
    name: 'Bug Hunterz',
    image: 'https://hackandhunt.blob.core.windows.net/hack/bugHunterz.jpg'
  },
  {
    email: 'teamrobotics@ices.edu',
    password: 'teamroboticsices',
    name: 'Robotics',
    image: 'https://hackandhunt.blob.core.windows.net/hack/teamRobotics.jpg'
  },
  {
    email: 'thetwintitans@ices.edu',
    password: 'thetwintitansices',
    name: 'The Twin Titans',
    image: 'https://hackandhunt.blob.core.windows.net/hack/theTwinTitans.jpg'
  },
  {
    email: '100xdev@ices.edu',
    password: '100xdevices',
    name: '100xdev',
    image: 'https://hackandhunt.blob.core.windows.net/hack/100xdev.png'
  },
  {
    email: 'bee@ices.edu',
    password: 'beeices',
    name: 'Bee',
    image: 'https://hackandhunt.blob.core.windows.net/hack/bee.jpg'
  },
  {
    email: 'teamzero@ices.edu',
    password: 'teamzeroices',
    name: 'Zero',
    image: 'https://hackandhunt.blob.core.windows.net/hack/teamZero.JPG'
  },
  {
    email: 'rip@ices.edu',
    password: 'ripices',
    name: 'RIP',
    image: 'https://hackandhunt.blob.core.windows.net/hack/rip.jpg'
  },
  {
    email: 'binarybandits@ices.edu',
    password: 'binarybanditsices',
    name: 'Binary Bandits',
    image: 'https://hackandhunt.blob.core.windows.net/hack/binaryBandits.jpg'
  },
  {
    email: 'zeropoint@ices.edu',
    password: 'zeropointices',
    name: '0.0.1',
    image: 'https://hackandhunt.blob.core.windows.net/hack/001.jpg'
  },
  {
    email: 'teamclueless@ices.edu',
    password: 'teamcluelessices',
    name: 'Clueless',
    image: 'https://hackandhunt.blob.core.windows.net/hack/teamClueless.jpeg'
  },
  {
    email: '4khunters@ices.edu',
    password: '4khuntersices',
    name: '4k Hunters',
    image: 'https://hackandhunt.blob.core.windows.net/hack/4kHunters.jpg'
  },
  {
    email: 'kiranxkiran@ices.edu',
    password: 'kirankiranices',
    name: 'KIRANxKIRAN',
    image: 'https://hackandhunt.blob.core.windows.net/hack/kiranXkiran.png'
  },
  {
    email: 'beatit@ices.edu',
    password: 'beatitices',
    name: 'BeatIt',
    image: 'https://hackandhunt.blob.core.windows.net/hack/beatit.jpeg'
  },
  {
    email: 'hauntedhackers@ices.edu',
    password: 'hauntedhackersices',
    name: 'HAUNTED HACKERS',
    image: 'https://hackandhunt.blob.core.windows.net/hack/hauntedHackers.jpg'
  },
  {
    email: 'thegodfather@ices.edu',
    password: 'thegodfatherices',
    name: 'GOD FATHER',
    image: 'https://hackandhunt.blob.core.windows.net/hack/thegodfather.png'
  },
  {
    email: 'titech@ices.edu',
    password: 'titechices',
    name: 'Titech',
    image: 'https://hackandhunt.blob.core.windows.net/hack/titech.png'
  },
  {
    email: 'thesharingan@ices.edu',
    password: 'thesharinganices',
    name: 'The Sharingan',
    image: 'https://hackandhunt.blob.core.windows.net/hack/thesharingan.jpg'
  },
  {
    email: 'digbata@ices.edu',
    password: 'digbataices',
    name: 'Dig Bata',
    image: 'https://hackandhunt.blob.core.windows.net/hack/digbata.webp'
  },
  {
    email: 'prometheus@ices.edu',
    password: 'prometheusices',
    name: 'Prometheus',
    image: 'https://hackandhunt.blob.core.windows.net/hack/prometheus.png'
  },
  {
    email: 'nissanenigma@ices.edu',
    password: 'nissanenigmaices',
    name: 'NisSan Enigma',
    image: 'https://hackandhunt.blob.core.windows.net/hack/nissanEnigma.jpg'
  },
  {
    email: 'blackserpents@ices.edu',
    password: 'blackserpentsices',
    name: 'Black Serpents',
    image: 'https://hackandhunt.blob.core.windows.net/hack/blackSerpents.jpg'
  },
  {
    email: 'almightytoxica@ices.edu',
    password: 'almightytoxicaices',
    name: 'AlmightyToxica',
    image: 'https://hackandhunt.blob.core.windows.net/hack/inbound7801391415623658076 - TheToxicVenomX.jpg'
  },
  {
    email: 'aqua@ices.edu',
    password: 'aquaices',
    name: 'Team Aqua',
    image: 'https://hackandhunt.blob.core.windows.net/hack/Aqua.jpg'
  },
  {
    email: 'thehunters@ices.edu',
    password: 'thehuntersices',
    name: 'The Hunters',
    image: 'https://hackandhunt.blob.core.windows.net/hack/The%20Hunters.png'
  },
  {
    email: 'hunters3@ices.edu',
    password: 'hunters3ices',
    name: 'Hunters3',
    image: 'https://hackandhunt.blob.core.windows.net/hack/hunters3.gif'
  }
]

users.each do |user|
  User.create(user)
end

puts 'Seed data for users!.............'

levels = [
  {
    title: 'Simple coding',
    level_int: 2
  },
  {
    title: 'The secret place',
    level_int: 3
  },
  {
    title: 'Code',
    level_int: 4
  },
  {
    title: 'Temple area',
    level_int: 5
  },
  {
    title: 'Debug level',
    level_int: 6
  },
  {
    title: 'Departments',
    level_int: 7
  },
  {
    title: 'Password cracker',
    level_int: 8
  },
  {
    title: 'Somewhere around',
    level_int: 9
  },
  {
    title: 'The secret',
    level_int: 10
  }
]

puts 'seeding data for levels .......'

levels.each do |level|
  Level.create(level)
end

puts 'Seed data for levels created!'

level1 = Level.find_by(level_int: 1)
level2 = Level.find_by(level_int: 2)
Level.find_by(level_int: 3)
Level.find_by(level_int: 4)
level5 = Level.find_by(level_int: 5)
level6 = Level.find_by(level_int: 6)
level7 = Level.find_by(level_int: 7)
level8 = Level.find_by(level_int: 8)
level9 = Level.find_by(level_int: 9)
Level.find_by(level_int: 10)

riddles = [
  {
    # level 1
    "question": "To start a journey full of fun, Find the place where news is spun. Look for the latest club's delight, On platforms where we share our sight. Seek the post that starts the quest, Follow the link and be our guest. Who am I?",
    "answer": 'hackandhunt',
    "is_trap": false,
    level: level1
  },
  # level2
  {
    "question": "In a place where art is shown, \nAnd towering greens have grown, \nA circle where friends meet, \nTo plan events, both grand and sweet. \nSports and fests are discussed with care, \nAll in this park, so fair. What am I?",
    "answer": '152587890625',
    "is_trap": true,
    level: level2
  },
  {
    "question": "In a place where art is shown, \nAnd towering greens have grown, \nA circle where friends meet, \nTo plan events, both grand and sweet. \nSports and fests are discussed with care, \nAll in this park, so fair. \nWhat am I?",
    "answer": '152587890625',
    "is_trap": true,
    level: level2
  },
  {
    "question": "In one of Mr. Umi's exhilarating escapades, \nhe finds himself unraveling the ancient secrets of a mystical temple \nWithin the temple's inner sanctum, \nhe encounters a legendary puzzle inscribed on a golden tablet. \nThe puzzle reads: 'The greatest treasures can only be found by those who solve the riddle of numbers. \nTo unlock the hidden chamber, \nyou must find the smallest positive number that is evenly divisible by all the numbers from 1 to 15.' \nOne who cracks this mystic rhyme, \nWill find Umi's secret in good time. \nSeek the number, pass the test, \nAnd find the secret where it rests.",
    "answer": '360360',
    "is_trap": false,
    level: level2
  },
  {
    "question": "I echo with history, \ngrand and tall, \nWhere whispers of the events softly call. \nHalls adorned with tales of old, \nIn me, \nthe echoes of ages unfold.",
    "answer": 'vector',
    "is_trap": true,
    level: level2
  },
  {
    "question": "I am the place where cravings fade, \nWhere sustenance is crafted and scents pervade. \nAfter lectures long and projects due, \nA place to refuel, \na rest for you. \nHere, \nlaughter and chatter fill the air, \nAs students gather, \nfree from care. \nWhere am I?",
    "answer": 'graphics.h',
    "is_trap": true,
    level: level2
  },
  {
    "question": "I stand tall and proud, \nunseen by most, \nThe lifeblood of the campus, \na hidden host. \nMy silent strength ensures all can thrive, \nseeing the red flag is a vibe. \nWhat am I?",
    "answer": 'loop',
    "is_trap": true,
    level: level2
  },
  {
    "question": "I hum unseen, \na vital core, \nStep up or step down I make the campus roar. \nNo longer a mystery, \nmy location is known, \nBehind the place where meals are sown. \nWhat am I?",
    "answer": 'typecasting',
    "is_trap": true,
    level: level2
  },
  {
    "question": "I challenge all to test their might, \nWith backhand swoops and forehand fight. \nThey call me bad but I am fun so take my stand, \nA place for competition with a feathered projectile in hand. \nWhat am I?",
    "answer": 'malloc',
    "is_trap": true,
    level: level2
  },
  {
    "question": "Near the guardians of order, \na building I stand, \nWhere robotic dreams take flight, \ncontrolled by hand. \nBut within my walls, \nanother purpose resides, \nA place for healing bumps and scrapes, \nwhere worry subsides. \nWhat am I?",
    "answer": 'nipuna sewa',
    "is_trap": true,
    level: level2
  },
  {
    "question": "Ahead of where code wizards gather, \na spot to rest and let thoughts gather. \nWith stones arranged 'neath a shady tree, \nwhere students find peace and glee. \nRefuel your spirit before you soar, \na tranquil spot, \nnot far from the coding roar.",
    "answer": '360360',
    "is_trap": false,
    level: level2
  },
  {
    "question": "Where minds unite, \nvoices free, \nIn the heart of student liberty. \nSeek the place where rights entwine, \nWhere students' beacon brightly shines. \nTo advocate and voices bold, \nFind the place where students hold.",
    "answer": 'book mart',
    "is_trap": true,
    level: level2
  },
  {
    "question": "I stand with grace, \na quenching stream, \nNear halls of tech and books of dream. \nA twist of fate, \na simple turn, \nIn my cool embrace, \nyour thirst will burn. \nWhat am I?",
    "answer": '3',
    "is_trap": true,
    level: level2
  },
  {
    "question": "I’m a creature, \nquiet and sleek, \nIn the world of commands, \nit’s me you seek. \nWith a name that purrs, \nI roam the lines, \nBringing text together, \nmaking it shine. \nWhat command am I, \nthat reads and displays, \nFiles in one view, \nin efficient ways?",
    "answer": 'cat',
    "is_trap": true,
    level: level2
  },
  # level 3
  {
    "question": "In the heart of where codes intertwine, \nfind a room with knowledge so fine. \nNext to where ideas take flight, \nwhere minds ignite with digital light. \nSeek the space where innovation blooms, \njust beside where the code wizards loom.",
    "answer": 'roadmap',
    "is_trap": true,
    "level_id": 3
  },
  {
    "question": "In the heart of knowledge where wisdom blooms, \nFind the place where thoughts consume. \nA chamber hidden, secrets to find, \nWhere the past and present intertwine. \nAmong the pages, dusty and old, \nLies the first clue, brave and bold. \nSolve this riddle, unlock the door, \nTo start your quest and seek much more. \nWho am I?",
    "answer": '10203040',
    "is_trap": false,
    "level_id": 3
  },
  {
    "question": "Where giants of steel slumber and girls find their rest, \nAn old warrior of asphalt, timeworn and distressed. \nBeside a mighty container, its secrets reside, \nSeek me out, treasure hunter, and let the next clue confide. \nWhat am I?",
    "answer": '354224848179261915075',
    "is_trap": true,
    "level_id": 3
  },
  {
    "question": "In a place where tools and hammers clatter, \nFind the key where inventors gather. \nAmong the wrenches, bolts, and screws, \nSeek the spot where creations brew.",
    "answer": 'motor',
    "is_trap": true,
    "level_id": 3
  },
  {
    "question": "A quiet retreat, yet open to all, \nWhether working solo or making a call. \nHere, every mind stands tall, \nLearning together, giving it their all. \nWho am I?",
    "answer": '5+udy20n3',
    "is_trap": false,
    "level_id": 3
  },
  {
    "question": "In the realm where signals race, \nA cyber domain, a virtual space. \nBytes of data, streams of light, \nWhere minds connect through the digital flight. \nWho am I?",
    "answer": 'e',
    "is_trap": false,
    "level_id": 3
  },
  {
    "question": "Simple gear for every move, \nA place where wellness finds its groove. \nWarm up, cool down, and improve, \nHere, your health will surely improve. \nWho am I?",
    "answer": 'thisisatrap',
    "is_trap": false,
    "level_id": 3
  },
  {
    "question": "To find the next clue, search this place: \nwhere cheers echo and runners race. \nA field of green with seats all around, \nwhere victories and losses are equally found. \nWhere sports are played under the sky so wide, \nand the spirit of competition takes stride.",
    "answer": 'never giving up',
    "is_trap": true,
    "level_id": 3
  },
  {
    "question": "Beneath the ground, where secrets dwell, \nMy entrance hidden, safe and well. \nCovered by a shutter, closed tight, \nYet open wide to the depths of night. \nFind me by walking steep, \nIt’s superficial so don’t think too deep!",
    "answer": 'ices@wrc.edu.np',
    "is_trap": true,
    "level_id": 3
  },
  {
    "question": "In the 3 letter building on the highest floor, \ndon’t be slow just rush through the door, \nOn most days, the water flows, \nBut some days it just slows, \nSometimes dry, sometimes great. \nTurn me on, and quietly wait.",
    "answer": 'solidworks',
    "is_trap": true,
    "level_id": 3
  },
  # level 4
  {
    "question": "I’m a place with many rows,\nWhere people come and time slows. \nYou might hear a speech or watch a show, \nBut not outside, where winds may blow. \nA library? No, not quite right. \nGuess again, and think of the night. \nIt's a place where silence isn’t key, \nWhere am I, can you see?",
    "answer": 'vector',
    "is_trap": true,
    "level_id": 4
  },
  {
    "question": "There's a building that bustles, \nwith a sign you can see, \nRight next to where you learn and grow, \nreaching for what could be. \nThey don't sell toys or books, \nthat's not quite their game, \nBut they can help you save your money, \nall safe and the same. \nCan you uncover the secret?",
    "answer": '55',
    "is_trap": true,
    "level_id": 4
  },
  {
    "question": "According to Mr. Umi, time itself holds the keys to untold mysteries. \nDuring one of his thrilling adventures, Mr. Umi stumbles upon an \nancient chronicle detailing the secrets of the 20th century. \nWithin its pages, he finds something cool that his birthday \nMonday was special, he figured out that the solution to the \nnext path moving forward is to find how many Mondays \nfell on the first of the month between January 1, 1901, and December 31, 2023? \n\nTo solve this riddle, Mr. Umi must rely on his sharp mind and these \ncrucial facts from the chronicle: \n\n 1.) January 1, 1900, was a Monday. \n\n2.) 'Thirty days hath September, April, June, and November. \nAll the rest have thirty-one, except February alone, which has \ntwenty-eight, but on leap years, twenty-nine. \n\nA leap year occurs every four years, except for years ending\n in 00, which must be divisible by 400 to be a leap year. \n\nArmed with this knowledge, can Mr. Umi figure out the number of \nMondays that landed on the first of the month during the entire \n20th/21st century? Join him in this temporal treasure hunt and \ndiscover the answer to this intriguing enigma!",
    "answer": '210',
    "is_trap": false,
    "level_id": 4
  },
  {
    "question": "I'm where wires twist and circuits hum, \nWhere metal hands deftly come undone. \nIn this realm of gears and code so grand, \nWhere machines meet their maker's hand. \nWhat am I?",
    "answer": '13',
    "is_trap": true,
    "level_id": 4
  },
  {
    "question": "Where the big boys sleep and the future is made, \nFind a place to play ping pong, in some shade. \nThe oldest table on campus, for a friendly game to start, \nHit the ball back and forth, right by where builders play their part. \nWhat is your next destination?",
    "answer": 'logical',
    "is_trap": true,
    "level_id": 4
  },
  {
    "question": "Sometimes it's full, sometimes just a few guests, \na place I am where wheels come to rest \nNear the giant building, a convenience you see, \nWhat is this place, where you walk by with glee?",
    "answer": 'grandfather',
    "is_trap": true,
    "level_id": 4
  },
  {
    "question": "Where events unfold in vibrant hue, \nNear the gate where posters queue. \nAnswers whispered, tales untold, nHere they're found, in tales of bold.",
    "answer": '26+28i',
    "is_trap": true,
    "level_id": 4
  },
  {
    "question": "In the maze of choices, paths intertwined, \nrecall the journey you left behind. \nTo the level before, with options arrayed, \nseek the place where decisions were made. \nThe previous step you must now retrace, \nfind the option nine in the second place. \nThe answer you found, a clue in disguise, \nwill lead you back where the solution lies. \nTransform this number, manipulate with flair, \nInto a program code, hidden with care. \nTake each digit, cube its might, \nSum them up to find the light.",
    "answer": '4073',
    "is_trap": true,
    "level_id": 4
  },
  {
    "question": "Where gears turn and engines hum, \nFind where mechanics deftly come. \nIn the workshop where wheels align, \nA bike waits outside, a sign so fine. \nNear the hub where knowledge springs, \nDiscover where engineering sings.",
    "answer": 'yamaha',
    "is_trap": true,
    "level_id": 4
  },
  # level 5

  {
    "question": "रातको अध्यारोमा पनि तिनीहरूको आँखा कहिल्यै बन्द हुँदैन,\nदिनको उज्यालोमा पनि तिनीहरूको सतर्कता कम हुँदैन।\nसधैं खटिन्छन्, आफ्नो स्थान कहिल्यै छोड्दैनन्,\nकसैलाई स्वागत गर्न होस् या कसैलाई रोक्न होस्, आफ्नो कर्तव्यमा कुनै चुक हुँदैनन् ।",
    "answer": '15',
    "is_trap": true,
    level: level5
  },
  {
    "question": "In the heart of where minds meet the dawn,\nWhere dreams are born and doubts withdrawn.\nThrough gates of learning, paths entwined,\nWhere futures sparked and goals aligned.\nWhat place am I, where you first stepped in,\nWhere your WRC’s journey did begin?",
    "answer": 'holiday',
    "is_trap": true,
    level: level5
  },
  {
    "question": "I'm where roads meet and travelers convene,\nA cozy spot under a leafy green.\nNearby, a place for coffee and tea,\nBut not quite the cafe you might see.\nShaped with three sides and open to all,\nWhere travelers stop and stories recall.\nWhat am I?",
    "answer": 'coffee',
    "is_trap": true,
    level: level5
  },
  {
    "question": "Where currents flow and circuits spark,\nNear the girls' hostel, not far to embark.\nIn the first semester, all make their way,\nClose to the road, both black and gray.\nWhat am I?",
    "answer": 'rectifier',
    "is_trap": true,
    level: level5
  },
  {
    "question": "In names we find a hidden key,\nThe middle word that stands with glee.\nBetween the first and last it lies,\nA simple truth before your eyes.\n\nI am the keeper of funds,\nWhose middle name in secret runs.",
    "answer": 'ale',
    "is_trap": true,
    level: level5
  },
  {
    "question": "I am a place where peace prevails,\nwhere silence speaks and wisdom hails.\nPeople come to seek the light,\nin sacred halls, day and night.\nIn exams is when it is most packed.\nBut fret not just like Hack&Hunt your progress is tracked!",
    "answer": 'temple',
    "is_trap": false,
    level: level5
  },
  {
    "question": "In a book of code, on a numbered page,\nA word awaits, unlocking sage.\nThe error page not found is the page number,\nOOP with C++ Robert Lafore is the author,\nEnter the first word of fourth edition",
    "answer": 'member',
    "is_trap": false,
    level: level5
  },
  {
    "question": "In a realm of text and code, a challenge awaits,\nThree lines of output, one reveals the gates.\nSearch within the file, where knowledge blends,\nTo find the line that solves and mends.\nin the document, one stands true and clear,\nThe answer you seek, without a peer.\nSeek the file where wisdom might reside,\nAnd in those lines, your path will guide.\nhint: Search the envelope where your footwear are placed",
    "answer": '2345',
    "is_trap": true,
    level: level5
  },
  {
    "question": "Mr. Umi was a man of faith, deeply devout,\nIn the temple’s shadow, he’d often be found out.\nHe left a clue, a number to discover,\nThe area of his favorite temple, you must uncover. To find this secret, here’s what you need: \nThe base and the height, to solve and succeed. \nHalf the base times the height, the formula’s clear, \nDecode this riddle, and his secret will appear.\n\nhttps://docs.google.com/document/d/1R3iHJd6QE_9lY_7HFI6z0B_3Vyf4Z7KSo_4JDIRE3Y4/edit?usp=sharing",
    "answer": '195.50',
    "is_trap": false,
    level: level6
  },
  {
    "question": "I am a number that marks the time,\nWith each tick, I make a climb.\nBorn anew every January’s light,\nIn my digits, history takes flight. \nHint: Input the digits 2024\n\nhttps://docs.google.com/document/d/184h5uXyeNF2xGxUkue6y_YENpFuxUeLu7xWuBwXGoSQ/edit?usp=sharing",
    "answer": '11111101000',
    "is_trap": false,
    level: level6
  },
  {
    "question": "We are the nth generation of the club,\nA lineage with a proud hub.\nFind the generations, down to the core.\nSolve for n, and you'll see,\nThe answer will reveal and you shall jump in glee.\n\nhttps://docs.google.com/document/d/1QwOiqhPypapo4JmdinEIr3PN9_TK5tto6adutpGhCr8/edit?usp=sharing",
    "answer": '13',
    "is_trap": false,
    level: level6
  },
  {
    "question": "This number, so large, in billions it soars,\nNine, seven, four, and then a bit more.\nTo find the true sum, and be one of the few,\nSolve this great puzzle, then reverse the clue.\n\nhttps://docs.google.com/document/d/19a0ZBLt77k_n_mcZzhDC7JmK1ephmuJ1uiG4Femj5v4/edit?usp=sharing",
    "answer": '9745810304',
    "is_trap": false,
    level: level6
  },
  {
    "question": "Check the output, make sure it's right,\nDebug the code, and end this plight.\nWhen it's fixed, run it anew,\nThe correct result, I'll reveal to you.\ncan you find me? \nI’ll tell you, the hottest room, the place to be. \nWhere wires hum and data flows, bringing knowledge to thee. \nIn this building, secrets are stored and connections are made. \nWhat is it, where the servers never fade?\n\nhttps://docs.google.com/document/d/15R0xyBzHV8HXgKiAucq75aD7y8-tiHrR8gFIps5OKQw/edit?usp=sharing",
    "answer": '203',
    "is_trap": false,
    level: level6
  },
  {
    "question": "In an ancient land with spires tall,\nFour golden rings, a puzzle for all.\nFrom big to small, they must align,\nWith each move made, only one at a time,\nHow many moves from start to end? \nInput the count and the riddle will mend.\n\nhttps://docs.google.com/document/d/1leuI7anIbYE2CWNoH8T7D-Hf-VRlC3GZvPTn1uHPYVU/edit?usp=sharing",
    "answer": '15',
    "is_trap": false,
    level: level6
  },
  {
    "question": "In the maze where Mr. Umi roamed astray,\nA cryptic symbol he left on his way.\n\"What pattern in me do you perceive?\"\nThe answer's in the code believe me.\n\nhttps://docs.google.com/document/d/1QzWrl4daIIUjxYx9KNKLVMI0GSiqzc6hSpJ2DDsXTyk/edit?usp=sharing",
    "answer": 'flag',
    "is_trap": false,
    level: level6
  },
  {
    "question": "I'm not too early in the year's great run,\nIn the February heart, I find my sun.\nTwo digits form me, add up to ten,\nAt the month's end, I settle in.\nEnter me in the code, where secrets unwind,\nTreasure awaits when the answer align.\n\nhttps://docs.google.com/document/d/1606G6BGS08M0iwwnZ2quT9orFj9wJE5j1uz1BtbENzY/edit?usp=sharing",
    "answer": '107',
    "is_trap": false,
    level: level6
  },
  {
    "question": "Wherefrom transcended depths calculations bend,\nIn mirrored realms thrice others blend.\nadjacent to soil whereporcelain bides,\nBeyond edificial schemes dictates hide.\nThreefold the measure others extend.",
    "answer": '2.02',
    "is_trap": false,
    level: level7
  },
  {
    "question": "Where the quest's origin hides its thread,\nIn crimson walls that newly spread,\nWithin a chamber's solitary space,\nWhere C weaves its trace.\nBeside the seat of power's hold,\nWhere concepts gleam in wealth untold.",
    "answer": '5445',
    "is_trap": false,
    level: level7
  },
  {
    "question": "I'm the barrier that separates sky and stands,\nWhere spectators watch with clapping hands.\nFrom here, the view is clear and grand,\nWhat am I, in this sports wonderland?",
    "answer": 'structural',
    "is_trap": true,
    level: level7
  },
  {
    "question": "Where whispers vanish in Badnam galli's lane,\nRIC's mysteries in currents remain.\nTCC's park, where soft lights play,\nFollow the route to an energy display.\nLed by youthful wisdom, a head of gold",
    "answer": 'wheatstone bridge',
    "is_trap": false,
    level: level7
  },
  {
    "question": "Beyond the throng, in a craftsman's domain,\nWhere metal and cogs in harmony reign,\nI'm where gears spin and engines roar,\nThermodynamics studied to the core.\nAmidst components that breathe life unseen,\nBy the sentinel tree of verdant sheen,\nDiscover the core where engineered spirits convene.",
    "answer": 'you_lucky_duck_098675$$%&jkh',
    "is_trap": true,
    level: level7
  },

  {
    "question": "Where teacher’s offspring await their ride,\n By the playground, where fun abides.\n At the threshold of teachers' homes, I stand, \n What am I, where young minds land?",
    "answer": 'infinite',
    "is_trap": true,
    level: level8
  },
  {
    "question": "Instruments buzz and data flows,\n Where particles scatter and knowledge grows.\n From motion to energy, experiments unfold,\n What place am I, where hypotheses are bold?",
    "answer": '4.9',
    "is_trap": true,
    level: level8
  },
  {
    "question": "In the realm of logic, where structure prevails, a program lies dormant, awaiting to unveil. \nLetters and digits hold the key, decode the script to set you free. Hidden within, functions interplay, but a bug in the loop leads you astray.\n Correct the errors, ensure it compiles, and a secret message will surface with smiles. These numbers, when translated from their numeric \ndomain, will reveal a truth that's worth the strain. Solve the riddle, let your prowess be shown,\n and the concealed code will be your own.",
    "answer": 'i-CES{h4cKanDHunT1c35}',
    "is_trap": false,
    level: level8
  },
  {
    "question": "Beneath the buzz where ideas ignite, lies a room cloaked in\n the shadows of night. Once a hub of digital dreams, now \nit rests, or so it seems. Seek the space where screens once glowed, directly below\n where knowledge flowed. Find the door where echoes remain, in the\n lab of yesteryears, you'll unlock the next gain.",
    "answer": 'noguest',
    "is_trap": true,
    level: level8
  },
  {
    "question": "To find the answer that you seek,\n Look for a clue that's unique.\n A path to take, a guide to show,\n Click on the words, and you will know.\n Hidden in text, a journey begun,\n With just a click, the riddle is done.\n https://drive.google.com/file/d/1M9eoyOb9AL6tJC2Xvpx93vgAHh5nDwvX/view?usp=sharing",
    "answer": 'morse code',
    "is_trap": false,
    level: level8
  },
  {
    "question": "Where people gather for dunks and shoot,\nNext to the net where spikes echo with brute.\nBalls bouncing and cheers abound,\nnear the place where boys rest around.",
    "answer": '29.5',
    "is_trap": true,
    level: level9
  },
  {
    "question": "In the body of learning, where knowledge flows,\nbeside the sacred dome where devotion grows.\nNear the board that proudly displays our brand,\nWhat am I, where documents expand?",
    "answer": 'imposition',
    "is_trap": true,
    level: level9
  },
  {
    "question": "In this place, skills are showcased, knowledge is shared, and friendships are made. It's where victories and setbacks are met with passion, where learning and teaching go hand in hand. Here, people gather not just to compete, but to inspire and grow together, striving for excellence in both individual and collective efforts.",
    "answer": 'next_level',
    "is_trap": false,
    level: level9
  },
  {
    "question": "In the realm of scholars and engineering minds,\nA special place for students you'll find.\nIn the master building, next to food's retreat,\nNear the hall where performances and gatherings meet.\n\nSeek the room of the student engineers,\nWhere ideas bloom and learning adheres.\nA haven for those with technical flair,\nWhat is this room where innovation is in the air?",
    "answer": 'compass',
    "is_trap": true,
    level: level9
  },
  {
    "question": "I stand tall on a three-story height,\nMade of concrete, a solid sight.\nI hold water, cool and clear,\nReady to quench your thirst and cheer.\nThough I do not speak or move,\nI serve a purpose, that's my groove.\nWhat am I?",
    "answer": 'calculus',
    "is_trap": true,
    level: level9
  },
  {
    "question": "I flow with grace on special days,\nQuenching thirst in limited ways.\nFor new beginnings, I make my start,\nAnd on a day of wisdom and art.\nTwo days a year, I come to play,\nWhat am I, can you say?",
    "answer": 'bhanu bhakta acharya',
    "is_trap": true,
    level: level9
  }

]

riddles.each do |riddle|
  Riddle.create(riddle)
end
