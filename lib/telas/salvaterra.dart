import 'package:flutter/material.dart';



class salvaterraHome extends StatelessWidget {

  String servico = "Serviços:";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Salvaterra", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),

      body: ListView(children: <Widget>[
        //LOJA UMUARAMA
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/umuarama.jpg"))
                ),
                child: InkWell(
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: Column(children: <Widget>[
                        Text("Oi")
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK")
                        , child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Pousada Umuarama",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                  
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM UMUARAMA

        //LOJA SABOR MARAJO
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/sabormarajo.jpg"))
                ),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: Column(children: <Widget>[
                        Text("Oi")
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK")
                        , child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Sabor marajó",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                  
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM SABOR MARAJO

        //Loja MURRAS
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/murras.PNG"))
                ),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: Column(children: <Widget>[
                        Text("Oi")
                        ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                        child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Murrah's",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM MURRAS

        //Loja tchaba

        //Fim loja tchaba



      ],)
      

    );
  }
}