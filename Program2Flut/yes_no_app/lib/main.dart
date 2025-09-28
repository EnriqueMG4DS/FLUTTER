import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

// es indispensable usar el proyecto en futuro 
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ChatProvider())
      ],
      child: MaterialApp(
        title: 'Yes no App',
        theme: AppTheme(selectedColor: 6).theme(),//linea para llamar a la clase para el tema
        debugShowCheckedModeBanner: false,
        home: 
          const ChatScreen() 
        /*
        Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body:  Center(
            child: FilledButton.tonal(
              onPressed: (){}, 
              child: Text('Clic me')),
          ),
        ),*/
      ),
    );
  }
}