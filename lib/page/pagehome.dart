import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
   
   bool _active = false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[100],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('บริการรายวัน'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                height: MediaQuery.of(context).size.height * 0.35,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 8,
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.image),
                            title: Text('เสื้อเชิ้ต (ยาว)'),
                            subtitle: Text('25 บาท'),
                              onTap: (){
                              setState(() {
                                _active = true ;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                height: MediaQuery.of(context).size.height * 0.35,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 8,
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.image),
                            title: Text('เสื้อเชิ้ต (สั้น)'),
                            subtitle: Text('25 บาท'),
                            onTap: (){
                              setState(() {
                                _active = true ;
                              });
                            },
                          )
                        ],
                      ), 
                    ), 
                  ),
                ),
              ),
            )
          ],
        ), 
      ),
    );
    AddRemove(
        active: _active,
        onTap: (){
          setState(() {
            _active = false ;
          });
        },
    );
  }
}
class AddRemove extends StatefulWidget {
  final bool active ;
  final Function onTap ;

  const AddRemove({Key key, this.active, this.onTap}) : super(key: key);

  @override
  _AddRemoveState createState() => _AddRemoveState();
}

class _AddRemoveState extends State<AddRemove> {
    int qty =  1 ;

  void add(){
    setState(() {
      qty+=1;
    });
  }

  void remove(){
    setState(() {
      if(qty>1){
        qty-=1;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}