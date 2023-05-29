import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Whatsapp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.search,
            ),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(value: 1, child: Text('New Grup')),
                      PopupMenuItem(value: 2, child: Text('Settings')),
                      PopupMenuItem(value: 1, child: Text('Logout')),
                    ]),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(
          children: [
            Icon(Icons.camera_alt),
            ListView.builder(
                itemCount: 150,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                    title: Text('Shehzad'),
                    subtitle: Text('sanga chal dy jawad'),
                    trailing: Text('9:30 AM'),
                  );
                }),
            ListView.builder(
                itemCount: 150,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                                  )),
                              child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                            ),
                            title: Text('Mirchi'),
                            subtitle: Text('29m ago'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            )),
                        child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                      ),
                      title: Text('Mirchi'),
                      subtitle: Text('29m ago'),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                    title: Text('Shams'),
                    subtitle: Text(index / 2 == 0
                        ? 'You Missed audio Call'
                        : 'Call time is 9:23 am'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.call : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
