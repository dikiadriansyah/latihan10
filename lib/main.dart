import 'package:flutter/material.dart';

void main() {
  runApp(const AppKu());
}

class AppKu extends StatelessWidget{
  const AppKu({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Latihan 10',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home:
      // const FirstScreen(), // Panggil FirstScreen di sini
      // const TwoScreen(),
      // const Threecreen(),
      // const Fourcreen(),
      const Fivecreen(),
    );
  }
}

// cara penerapan widget Textfield menggunakan onChanged

// class FirstScreen extends StatefulWidget{
//   const FirstScreen({Key? key}): super(key: key);
//
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen>{
//   String _name = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body:
//       // TextField(
//         // onChanged: (String value){
//         //   setState((){
//         //     _name = value;
//         //   });
//         // },
//
//         // onSubmitted: (String value){
//         //   setState((){
//         //     _name = value;
//         //   });
//         // },
//
//       // )
//       Padding(
//        padding: const EdgeInsets.all(16.0),
//        child: Column(
//          children: [
//            TextField(
//              decoration: const InputDecoration(
//                hintText: 'Write your name here..',
//                labelText: 'Your Name'
//              ),
//              onChanged: (String value){
//                setState((){
//                  _name = value;
//                });
//              },
//            ),
//            const SizedBox(height: 20),
//            ElevatedButton(
//              child: const Text('Submit'),
//              onPressed: (){
//                showDialog(
//                  context: context,
//                  builder: (context){
//                    return AlertDialog(
//                      content: Text('Hai, $_name'),
//                    );
//                  }
//                );
//              },
//            )
//          ],
//        ),
//       )
//     );
//   }
// }

// ---------------------
// cara penerapan widget Textfield menggunakan controller
// class TwoScreen extends StatefulWidget{
//   const TwoScreen({Key? key}): super(key: key);
//
//   @override
//   State<TwoScreen> createState() => _TwoScreenState();
// }


// class _TwoScreenState extends State<TwoScreen> {
  /*
  dengan TextEditingController alias controller, kita cukup membuat variabel TextEditingController lalu menambahkannya ke widget TextField.
   */
  // TextEditingController _controller = TextEditingController();
  //
  // @override
  // Widget build(BuildContext context){
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('TwoScreen'),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: Column(
  //         children: [
  //           TextField(
  //             controller: _controller,
  //             decoration: const InputDecoration(
  //               hintText: 'Write your name here..',
  //               labelText: 'Your Name'
  //             ),
  //           ),
  //           const SizedBox(height: 20),
  //           ElevatedButton(
  //             child: const Text('Submit'),
  //             onPressed: (){
  //               showDialog(
  //                 context: context,
  //                 builder: (context){
  //                   return AlertDialog(
  //                     content: Text('Hai, ${_controller.text}'),
  //                   );
  //                 }
  //               );
  //             },
  //           )
  //         ],
  //       )
  //     ),
  //   );
  // }

  /*
  Ketika menggunakan controller, pastikan untuk menghapus controller ketika halaman atau widget sudah tidak digunakan.
  Ini bertujuan supaya tidak menimbulkan kebocoran memori (memory leak).
   */
//   @override
//   void dispose(){
//     _controller.dispose();
//     super.dispose();
//   }
// }
// -----------------------
// cara penerapan widget menggunakan Switch
// class Threecreen extends StatefulWidget{
//   const Threecreen({Key? key}): super(key: key);
//
//   @override
//   State<Threecreen> createState() => _ThreeScreenState();
// }
//
// class _ThreeScreenState extends State<Threecreen>{
//   bool lightOn = false;
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Switch(
//         value: lightOn,
//         onChanged: (bool value){
//           setState((){
//             lightOn = value;
//           });
//
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(lightOn? 'Light On' : 'Light Off'),
//               duration: Duration(seconds: 1)
//             )
//           );
//         },
//       ),
//     );
//   }
// }
/*
Pada contoh tersebut value dari Switch berupa boolean di mana ketika boolean tersebut false maka Switch akan berada pada posisi nonaktif.
Switch umumnya digunakan sebagai konfigurasi on/off pada halaman setting.
 */
//-----------------
//Radio
// class Fourcreen extends StatefulWidget{
//   const Fourcreen({Key? key}): super(key: key);
//
//   @override
//   State<Fourcreen> createState() => _FourScreenState();
// }
//
// class _FourScreenState extends State<Fourcreen>{
//   String? language;
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ListTile(
//             leading: Radio<String>(
//               value: 'Dart',
//               groupValue: language,
//               onChanged: (String? value){
//                 setState((){
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: Text('Dart'),
//           ),
//           ListTile(
//             leading: Radio<String>(
//               value: 'Kotlin',
//               groupValue: language,
//               onChanged: (String? value){
//                 setState((){
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: Text('Kotlin'),
//           ),
//           ListTile(
//             leading: Radio<String>(
//               value: 'Swift',
//               groupValue: language,
//               onChanged: (String? value){
//                 setState((){
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: Text('Swift'),
//           ),
//           ListTile(
//             leading: Radio<String>(
//               value: 'Php',
//               groupValue: language,
//               onChanged: (String? value){
//                 setState((){
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: Text('Php'),
//           ),
//           ListTile(
//             leading: Radio<String>(
//               value: 'Java',
//               groupValue: language,
//               onChanged: (String? value){
//                 setState((){
//                   language = value;
//                   showSnackbar();
//                 });
//               },
//             ),
//             title: Text('Java'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void showSnackbar(){
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('$language Selected'),
//         duration: Duration(seconds: 1),
//       )
//     );
//   }
//
// }
/*
Pada contoh tersebut terdapat variable language yang digunakan pada groupValue tiap Radio.
Language inilah yang menyimpan nilai Radio yang dipilih. Nilainya akan berubah ketika fungsi onChanged terpanggil.
 */
//------------------------------------
// Checkbox
class Fivecreen extends StatefulWidget{
  const Fivecreen({Key? key}): super(key: key);

  @override
  State<Fivecreen> createState() => _FiveScreenState();
}

class _FiveScreenState extends State<Fivecreen>{
  bool agree = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value){
            setState(() {
              agree = value!;
            });
          },
        ),
        title: Text('Agree / Disagree'),
      ),
    );
  }
}