void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};

  print('Initial gifts: $gifts');
  print('Initial nobleGases: $nobleGases');

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';

  gifts['nama'] = 'Vidi Joshubzky Saviola';
  gifts['nim'] = '2341720112';

  nobleGases[1] = 'Vidi Joshubzky Saviola';
  nobleGases[99] = '2341720112';

  mhs1['nama'] = 'Vidi Joshubzky Saviola';
  mhs1['nim'] = '2341720112';

  mhs2[1] = 'Vidi Joshubzky Saviola';
  mhs2[99] = '2341720112';

  print('\n=== HASIL AKHIR ===');
  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}
