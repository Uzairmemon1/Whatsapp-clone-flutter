import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
            title: Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: [
              Icon(Icons.search_rounded, color: Colors.white),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          value: '1',
                          child: Text('New Group'),
                        ),
                        PopupMenuItem(
                          value: '2',
                          child: Text('Settings'),
                        ),
                        PopupMenuItem(
                          value: '3',
                          child: Text('Logout'),
                        ),
                      ]),
              SizedBox(
                width: 10,
              ),
            ],
            backgroundColor: Colors.teal,
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt, color: Colors.white),
              ),
              Tab(
                  child: Text(
                'Chats',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
              Tab(
                  child: Text(
                'Status',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
              Tab(
                  child: Text(
                'Calls',
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
            ]),
          ),
          body: TabBarView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Icon(Icons.camera_alt)),
                SizedBox(
                  height: 10,
                ),
                Center(child: Text('Wait for Next Update')),
              ],
            ),
            //Chats
            ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQHopdlMcUJkVQ/profile-displayphoto-shrink_800_800/0/1690226639055?e=2147483647&v=beta&t=mBInZF2UVpe4xc9dku2wgPi_iHqGg4NudPjzA48w4jA'),
                        ),
                        title: Text('My Number'),
                        subtitle: Text('?'),
                        trailing: Text('07:08 pm'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQE15F57JDtuTQ/profile-displayphoto-shrink_200_200/0/1699822751458?e=2147483647&v=beta&t=7aTLF1UKalNdCt4j6YwMk3iT4uaS2nRM2Bs_vxxOyBg'),
                        ),
                        title: Text('Uzair'),
                        subtitle: Text('Brother'),
                        trailing: Text('05:54 pm'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQGkrozngU4VIQ/profile-displayphoto-shrink_800_800/0/1670664729352?e=2147483647&v=beta&t=WbqghbcyiCKZB7a-qYVByGsiVdfFryezI9Ab-_09BJc'),
                        ),
                        title: Text('Hasnain KK'),
                        subtitle: Text('Where are you bro?'),
                        trailing: Text('01:54 pm'),
                      ),
                    ],
                  );
                }),
            //Status
            ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://im.indiatimes.in/content/2023/Apr/Untitled-2_644182715f5cf.jpg?w=1200&h=900&cc=1'),
                        ),
                      ),
                      title: Text('My Status'),
                      subtitle: Text('Yesterday'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 240),
                      child: Text('Recent Status'),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQHopdlMcUJkVQ/profile-displayphoto-shrink_800_800/0/1690226639055?e=2147483647&v=beta&t=mBInZF2UVpe4xc9dku2wgPi_iHqGg4NudPjzA48w4jA'),
                        ),
                      ),
                      title: Text('My Number'),
                      subtitle: Text('11:19 am'),
                    ),
                  ]);
                }),

            // Calls
            ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQHopdlMcUJkVQ/profile-displayphoto-shrink_800_800/0/1690226639055?e=2147483647&v=beta&t=mBInZF2UVpe4xc9dku2wgPi_iHqGg4NudPjzA48w4jA'),
                        ),
                        title: Text('Uzair Memon'),
                        subtitle: Row(children: [
                          Icon(Icons.call_made_outlined),
                          SizedBox(width: 5),
                          Text('Today, 12:18 am')
                        ]),
                        trailing: Icon(Icons.phone),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQE15F57JDtuTQ/profile-displayphoto-shrink_200_200/0/1699822751458?e=2147483647&v=beta&t=7aTLF1UKalNdCt4j6YwMk3iT4uaS2nRM2Bs_vxxOyBg'),
                        ),
                        title: Text('A.Raheem'),
                        subtitle: Row(children: [
                          Icon(Icons.call_received_outlined),
                          SizedBox(width: 5),
                          Text('Yesterday, 05:00 pm')
                        ]),
                        trailing: Icon(Icons.phone),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQGkrozngU4VIQ/profile-displayphoto-shrink_800_800/0/1670664729352?e=2147483647&v=beta&t=WbqghbcyiCKZB7a-qYVByGsiVdfFryezI9Ab-_09BJc'),
                        ),
                        title: Text('Hasnain KK'),
                        subtitle: Row(children: [
                          Icon(Icons.call_received_outlined),
                          SizedBox(width: 5),
                          Text('Yesterday, 01:00 pm')
                        ]),
                        trailing: Icon(Icons.phone),
                      ),
                    ],
                  );
                }),
          ]),
        ));
  }
}
