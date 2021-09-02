import 'package:englishapp/Models/Notes.dart';
import 'package:englishapp/db/notes_database.dart';
import 'package:englishapp/screens/Home_Notes/Edit_Notes_Page.dart';
import 'package:englishapp/screens/Home_Notes/Notes_Detail_Page.dart';
import 'package:englishapp/screens/Home_Notes/Widget/Note_Card_Wiget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late List<Note> notes;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }

  // @override
  // void dispose() {
  //   NotesDatabase.instance.close();

  //   super.dispose();
  // }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllNotes();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: isLoading
                ? CircularProgressIndicator()
                : notes.isEmpty
                    ? Text(
                        'You have no notes',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    : buildNotes(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(Icons.add, color: Colors.black),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddEditNotePage()),
            );

            refreshNotes();
          },
        ),
      );

  Widget buildNotes() => StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(8),
        itemCount: notes.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final note = notes[index];

          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NoteDetailPage(
                  noteId: note.id!,
                ),
              ));

              refreshNotes();
            },
            child: NoteCardWidget(note: note, index: index),
          );
        },
      );
}
