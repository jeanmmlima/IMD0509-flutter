import 'package:f3_lugares/models/place.dart';
import 'package:flutter/material.dart';

import '../models/country.dart';

const DUMMY_COUNTRIES = const [
  Country(
    id: 'c1',
    title: 'Estanos Unidos',
    color: Colors.purple,
  ),
  Country(
    id: 'c2',
    title: 'Canada',
    color: Colors.red,
  ),
  Country(
    id: 'c3',
    title: 'Suiça',
    color: Colors.orange,
  ),
  Country(
    id: 'c4',
    title: 'Chile',
    color: Colors.amber,
  ),
  Country(
    id: 'c5',
    title: 'Espanha',
    color: Colors.amber,
  ),
  Country(
    id: 'c7',
    title: 'Peru',
    color: Colors.lightBlue,
  ),
  Country(
    id: 'c8',
    title: 'Brasil',
    color: Colors.lightGreen,
  ),
  Country(
    id: 'c10',
    title: 'Egito',
    color: Colors.teal,
  ),
];

const DUMMY_PLACES = const [
  Place(
    id: 'p1',
    titulo: 'Praia',
    paises: ['c8', 'c5', 'c9'],
    avaliacao: 4.8,
    custoMedio: 20,
    recomendacoes: [
      '1. Leve protetor solar',
      '2. Se hidrate',
      '3. Não jogue lixo na praia',
      '4. Tome água de coco'
    ],
    imagemUrl:
        'https://s2.glbimg.com/Qgl26Ze8x7iJ1HoFwwRkwfjgGrM=/smart/e.glbimg.com/og/ed/f/original/2020/11/05/brasil-tem-duas-praias-entre-as-cinco-melhores-do-mundo.jpg',
  ),
  Place(
    id: 'p2',
    titulo: 'Montanha',
    paises: ['c1', 'c2', 'c4', 'c3'],
    avaliacao: 4.2,
    custoMedio: 50,
    recomendacoes: [
      '1. Leve tenis para hiking',
      '2. Levar kit de primeiros socorros',
      '3. Roupa para frio'
    ],
    imagemUrl:
        'https://images.memphistours.com/large/60e4be05c4ef4373c71802b0dd3f9e62.jpg',
  ),
  Place(
    id: 'p3',
    titulo: 'Deserto',
    paises: ['c10', 'c4'],
    avaliacao: 4.1,
    custoMedio: 20,
    recomendacoes: [
      '1. Leve protetor solar',
      '2. Leva uma reserva de água',
      '3. roupas de lã'
    ],
    imagemUrl:
        'https://s4.static.brasilescola.uol.com.br/be/2021/11/deserto.jpg',
  ),
  Place(
    id: 'p4',
    titulo: 'Monumentos Antigos',
    paises: ['c10', 'c7', 'c5'],
    avaliacao: 4.7,
    custoMedio: 45,
    recomendacoes: [
      '1. Tenis leve para caminhada',
      '2. Procure um guia',
      '3. Contribua para preservação'
    ],
    imagemUrl:
        'https://www.momondo.com.br/discover/wp-content/uploads/sites/282/2019/12/R_DEST_MEXICO_Chiche_n-Itza_eyeem-107976661.jpg_Universal_Within_usage_period_31588.jpg',
  ),
  Place(
    id: 'p5',
    titulo: 'Monumentos Modernos',
    paises: ['c1'],
    avaliacao: 4.2,
    custoMedio: 30,
    recomendacoes: [
      '1. Tenis leve para caminhada',
      '2. Passeios em grupo',
    ],
    imagemUrl:
        'https://www.infoescola.com/wp-content/uploads/2009/03/estatua-da-liberdade.jpg',
  ),
  Place(
    id: 'p6',
    titulo: 'Maravilhas da Natureza',
    paises: ['c2', 'c8'],
    avaliacao: 4.4,
    custoMedio: 40,
    recomendacoes: [
      '1. Tenis leve para caminhada',
      '2. Passeios em grupo e com guia',
      '3. Contribua para preservação'
    ],
    imagemUrl:
        'http://www.loumarturismo.com.br/img/passeios-860x600/cataratas-860x600.jpg',
  ),
];
