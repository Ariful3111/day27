import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Stream<QuerySnapshot> _productStream= FirebaseFirestore.instance.collection('user').snapshots();

    return Scaffold(
      body: StreamBuilder(
        stream: _productStream,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
          if(snapshot.hasError){
            return Center(child: Text('Something wrong'));
          }

          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child: Text('Loading'));
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
              Map<String, dynamic> data = documentSnapshot.data()!as Map<String , dynamic>;
              return Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: NetworkImage(data['image']),
                          fit: BoxFit.cover
                          ),

                        ),
                      )),
                      Expanded(child: Column(
                        children: [
                          Text(data['title']),
                          Text(data['des']),
                        ],
                      )),
                    ],
                  ),
                ),
              );
            } ).toList(),
          );
        },
      ),
    );
  }
}
