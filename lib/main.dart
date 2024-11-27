import 'package:flutter/material.dart';
import 'Controllers/Controlador.dart';
import 'models/modelo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final notes = Controlador().getNotes();

    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: notes.map((note) {
                    return nota(note);
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nota(Note note) {
    return Container(
      key: ValueKey(note.title),
      decoration: BoxDecoration(
        color: note.color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            note.icon,
            size: 40,
            color: Colors.black54,
          ),
          const SizedBox(height: 20),
          Text(
            note.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            note.content,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
