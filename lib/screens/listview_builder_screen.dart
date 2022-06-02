import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';


class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  
  
  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      //print(' ${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent} ');
      if ( (scrollController.position.pixels + 500 ) >= scrollController.position.maxScrollExtent ) {
        //add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {

    //si esta en true no haga nada, pero al ser la primera vez entrara si o si
    if (isLoading ) return;

    //lo ponemos en true para iniciarlizarlo
    isLoading = true;

    // al ponerlo en true trae datos y se necesitan dibujar en pantalla con el Setstate
    setState(() {});

    //tiempo de duración para la carga de fotos por 3 segundos, para detener el proceso
    await Future.delayed( const Duration(seconds: 3 ));

    //llamo a la función de agregar las 5 imagenes
    add5();

    //se vuelve a poner el isLoading en false para repetir la accion
    isLoading = false;

    //se vuelve a dibujar
    setState(() { });


    //para cargar la animación si estoy cerca del final de la pantalla
    if ( scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;

    //animación para la carga
    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn
    );

  }



  void add5(){
    final lastid = imagesIds.last;

    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastid + e)
    );
    setState(() {
      
    });
  }

  Future<void>onRefresh() async {
    
    await Future.delayed( const Duration(seconds: 2 ));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add( lastId + 1 );
    add5();

  }
  
  
  
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      //backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                //animacion similar a iOS donde el final del scroll es suave
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage('https://picsum.photos/500/300?image=${ imagesIds[index]}'),
                  );
                },
              ),
            ),
            
            if (isLoading) 
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,

              child: _LoadingIcon()
            )
            
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),  
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,

      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary
      ),
    );
  }
}