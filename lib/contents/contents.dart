import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

List Images = [
  'https://imgs.search.brave.com/8hJLUD9MStYieV0GZglvD4XijtnMyEVXIEvPm75xdmo/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5j/RmpqQXJlWXRodmdl/ZlljRXVIYTFRSGFF/NyZwaWQ9QXBp',
  'https://imgs.search.brave.com/ouBL8cUXjcd2N9mbRckBUZDfMvUSPuQrOIrnJoLqAaM/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5L/WXFQMGlaRUdVQnp3/UjBpVmJaQ19BSGFF/NyZwaWQ9QXBp',
  'https://imgs.search.brave.com/p4qrvq4cf-I2CMwJS1MBRcIEg4YJ8OPdzTDIj5AR85o/rs:fit:674:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC45/dHQ5V1J1bGR2NE9H/d0t2NTRSUTB3SGFG/TiZwaWQ9QXBp',
  'https://imgs.search.brave.com/WkWMEoWESA-wPyfKNDTDLcv0CpL6HoALgLT92SZkxnU/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2U0/LmV4cGxpY2l0LmJp/bmcubmV0L3RoP2lk/PU9JUC5hWVZicUVG/YjJNLVNXc0JoX0xh/ZklRSGFIYSZwaWQ9/QXBp',
  'https://imgs.search.brave.com/t_vkvt6tLGTG35IlIh8gy3OMrHoo9iW5zwm25BCxqmY/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC45/VVpFLU92UVBJWkdn/LXdSNjNkVjBRSGFG/aiZwaWQ9QXBp',
  'https://imgs.search.brave.com/8hJLUD9MStYieV0GZglvD4XijtnMyEVXIEvPm75xdmo/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5j/RmpqQXJlWXRodmdl/ZlljRXVIYTFRSGFF/NyZwaWQ9QXBp',
  'https://imgs.search.brave.com/ouBL8cUXjcd2N9mbRckBUZDfMvUSPuQrOIrnJoLqAaM/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5L/WXFQMGlaRUdVQnp3/UjBpVmJaQ19BSGFF/NyZwaWQ9QXBp',
  'https://imgs.search.brave.com/p4qrvq4cf-I2CMwJS1MBRcIEg4YJ8OPdzTDIj5AR85o/rs:fit:674:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC45/dHQ5V1J1bGR2NE9H/d0t2NTRSUTB3SGFG/TiZwaWQ9QXBp',
  'https://imgs.search.brave.com/WkWMEoWESA-wPyfKNDTDLcv0CpL6HoALgLT92SZkxnU/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2U0/LmV4cGxpY2l0LmJp/bmcubmV0L3RoP2lk/PU9JUC5hWVZicUVG/YjJNLVNXc0JoX0xh/ZklRSGFIYSZwaWQ9/QXBp',
  'https://imgs.search.brave.com/t_vkvt6tLGTG35IlIh8gy3OMrHoo9iW5zwm25BCxqmY/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC45/VVpFLU92UVBJWkdn/LXdSNjNkVjBRSGFG/aiZwaWQ9QXBp',
];

List time = [
  'yesterday at 5.30',
  'yesterday at 5.50',
  'yesterday at 6.30',
  'yesterday at 7.00',
  'yesterday at 5.30',
  'yesterday at 5.50',
  'yesterday at 6.30',
  'yesterday at 7.00',
  'yesterday at 5.30',
  'yesterday at 5.50',
];
List Names = [
  'rono',
  'messi',
  'mbappe',
  'neymar',
  'ramu',
  'ravi',
  'rono',
  'messi',
  'mbappe',
  'neymar'
];
List Names1 = [
  'bimal kumar kumaran ms',
  'messi',
  'mbappe',
  'neymar',
  'ramu',
  'ravi',
  'rono',
  'messi',
  'mbappe',
  'neymar'
];
List values = [
  '50M',
  '40M',
  '10M',
  '50M',
  '40M',
  '10M',
  '50M',
  '40M',
  '10M',
  '50M',
];
List Icons_name = [
  'Feeds',
  'Friends',
  'Groups',
  'Market place',
  'Videos',
  'Memories',
  'Saved',
  'Pages',
  'Reels',
  'Events',
  'Gaming',
  'Stories'
];
List symbols = [
  'assets/images/feeds.png',
  'assets/images/friends.png',
  'assets/images/teamwork.png',
  'assets/images/market.png',
  'assets/images/play.png',
  'assets/images/memory-game.png',
  'assets/images/save-instagram.png',
  'assets/images/page.png',
  'assets/images/reels.png',
  'assets/images/schedule.png',
  'assets/images/gaming.png',
  'assets/images/book.png'
];
