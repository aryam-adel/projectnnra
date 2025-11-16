import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // قائمة لتخزين الأسماء التي تظهر عند الضغط
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Hadrami Stor',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        // القائمة المنسدلة (ثلاث نقاط) في اليسار
        leading: PopupMenuButton<String>(
          icon: const Icon(Icons.more_vert),
          onSelected: (value) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('اخترت: $value')));
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
                value: 'men clothes',
                child: Text('men clothes',
                    style: TextStyle(color: Colors.yellow, fontSize: 30))),
            const PopupMenuItem(
                value: ' women clothes',
                child: Text('women clothes',
                    style: TextStyle(color: Colors.yellow, fontSize: 30))),
            const PopupMenuItem(
                value: 'girls clothes',
                child: Text('girls clothes',
                    style: TextStyle(color: Colors.yellow, fontSize: 30))),
          ],
        ),

        // أيقونة القائمة الجانبية (Drawer)
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),

      // القائمة الجانبية
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 16, 155, 255)),
              child: const Text(
                'القائمة الجانبية',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home',
                  style: TextStyle(color: Colors.yellow, fontSize: 30)),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('تم اختيار Home')));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About Me',
                  style: TextStyle(color: Colors.yellow, fontSize: 30)),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('تم اختيار About Me')));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting',
                  style: TextStyle(color: Colors.yellow, fontSize: 30)),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('تم اختيار Setting')));
              },
            ),
          ],
        ),
      ),

      // محتوى الصفحة
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // تمرير عمودي
          child: Column(
            children: [
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    names.add(
                      "I am Nafesa ,Aryam , Raja ",
                    );
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'اضغط هنا',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(height: 30),

              // عرض الأسماء التي تمت إضافتها عند الضغط
              for (var name in names)
                Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
              //تمرير أفقي وعمودي
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // تمرير أفقي
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Text(
                            'Welcom to our App and our names is Nafesa ,Aryam , Raja we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja , nosiba, we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja,nosiba  we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                        Text(
                            'Welcom to our App and our names are Nafesa ,Aryam , Raja ,nosiba we are from yemen this the first Task in the flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        SizedBox(height: 10),
                      ],
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
