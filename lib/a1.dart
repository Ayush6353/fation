import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MY1_List extends StatefulWidget{
  @override
  State<MY1_List> createState() => _MY1_ListState();
}

class _MY1_ListState extends State<MY1_List> {
  @override
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image', style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.image, color: Colors.black,),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(crossAxisCount: 2,
        children: [
          DraggableScrollableSheet(
              initialChildSize: 0.2,
              maxChildSize: 0.8,
              minChildSize: 0.2,
              builder: (context, scrollControllor){
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Scrollbar(
                    child: ListView.builder(
                      controller: scrollControllor,
                        itemCount: 200,
                        itemBuilder: (context, index){
                        return ListTile(
                          title: Text('User ${index+1}'),
                          leading: Icon(Icons.download_for_offline_rounded),
                        );
                        }),
                  ),
                );
              }),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://i.ytimg.com/vi/7oIAs-0G4mw/maxresdefault.jpg',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOldIjvct4dRACoLNyCxgN87WFba2j9Hffmg&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6iGDmTcIHYoVymjCbfsyx8aKoeOJfGC-8gt65vDSAL_kk4VIc5ns1UMzXYf51nOxCJ9Y&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTNIkSCgY43AoSppFGew3dYp0h0L1d0QbzmA&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiH1e8JJg9E8V7nXnKQ_nEu5ANWXPrI0yCXg&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvd8JLDATAj9ONtCouASPBmquO2iXPAJlAUA&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm1vcHvEYyEXaw4rjQoy3bhQk2hee9VGsDBg&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjmQa9khuCG3t-aI0qqqP-Iz1JerabbB89HA&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1TXvS8asBqugiNkEzo2bm_uD6KoJSWb5E0g&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLq2PtSGMxgEvCWuhEJaknuc0Tlb1QgEd88w&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvE_jBjImtG2Q8tgf_1o9HpPxScf_taZRoZg&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            elevation: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUEOBqGkHg3zFC5F4DJgAo_8LlUpr4Dwo8A0S5IXOe8ADMuNeaJe8YMmu4JODfK2zJKzE&usqp=CAU',
                    height: 150, width: 200, fit: BoxFit.fitWidth,),
                  Container(
                    margin: EdgeInsets.only(top: 142, left: 47),
                    height: 30, width: 100,
                    child: Stack(
                      children: [
                        ElevatedButton(onPressed: () {
                          myAlert(context);
                        }, child: Text('Download'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void myAlert(BuildContext context) {
    var alert = AlertDialog(
      title: Text('Download'),
      content: Text('Are You Sure??'),
      actions: [
        ListTile(
          leading: Icon(Icons.access_time),
          onTap: OpenTimePicker,
        ),
        ListTile(
          leading: Icon(Icons.date_range),
          onTap: OpenDatePicker,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Downloading...  ${time.hour} : ${time.minute}'),
                action: SnackBarAction(
                  onPressed: () {},
                  label: "Cancel",
                ),
              ),
            );
          },
          child: Text('Yes'),
        ),
        TextButton(onPressed: () {
          Navigator.of(context).pop();
        },
          child: Text('No'),
        ),
      ],
    );

    showDialog(context: context,
        barrierDismissible: false,
        builder: (context) {
          return alert;
        });
  }

  void OpenTimePicker() async {
    TimeOfDay? t = await showTimePicker(
      context: (context),
      initialTime: time,
    );
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }

  void OpenDatePicker() async {
    DateTime? d = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2018),
        lastDate: DateTime(2025));
    if (d != null) {
      setState(() {
        date = d;
      });
    }
  }
}