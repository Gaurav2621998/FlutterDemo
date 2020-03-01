import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';

class MusicHome extends StatefulWidget {
  @override
  _MusicHomeState createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {

  List<Song> _songsfinal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initplayer();

  }

  void initplayer() async{
    var songs=await MusicFinder.allSongs();
    var songs1=new List.from(songs);
        setState(() {
          _songsfinal=songs1;
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title:Text("Music Player")
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,int index){
            return new ListTile(
              leading:CircleAvatar(
                child: Text(_songsfinal[index].title[0]),
              ),
              title: Text(_songsfinal[index].title),
            );
            
          },

        ),
    );
  }
}