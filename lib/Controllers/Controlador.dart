import '../models/modelo.dart';
import 'package:flutter/material.dart';

class Controlador {
  List<Note> getNotes() {
    return [
      Note(
        title: 'Sabias que. . .?',
        content: 'El corazón de un camarón está en su cabeza',
        color: Colors.pink[100]!,
        icon: Icons.favorite,
      ),
      Note(
        title: 'Sabias que 2. . .?',
        content: 'El Sol huele a algo',
        color: Colors.blue[100]!,
        icon: Icons.star,
      ),
      Note(
        title: 'Sabias que 3. . .?',
        content: 'El chocolate blanco no es realmente "chocolate"',
        color: Colors.green[100]!,
        icon: Icons.lightbulb,
      ),
      Note(
        title: 'Sabias que 4. . .?',
        content: 'Las tortugas pueden respirar a través de su trasero',
        color: Colors.yellow[100]!,
        icon: Icons.work,
      ),
      Note(
        title: 'Sabias que 5. . .?',
        content: 'Los koalas tienen huellas dactilares similares a las humanas',
        color: Colors.red[100]!,
        icon: Icons.work,
      ),
    ];
  }
}
