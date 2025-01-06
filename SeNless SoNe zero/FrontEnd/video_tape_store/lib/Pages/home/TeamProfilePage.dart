import 'package:flutter/material.dart';

class TeamProfilePage extends StatelessWidget {
  final List<Person> teamMembers = [
    Person(
        name: 'Marco Syahin Gahalta',
        id: '2702360100',
        photoUrl: 'assets/images/marco.jpg'),
    Person(
        name: 'Inner Journey Tazkie Ciputra Tangguh',
        id: '2702213524',
        photoUrl: 'assets/images/tazkie.png'),
    Person(
        name: 'Kenzi Romano',
        id: '2702302901',
        photoUrl: 'assets/images/kenzi.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemCount: teamMembers.length,
          itemBuilder: (context, index) {
            return TeamMemberCard(member: teamMembers[index]);
          },
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final Person member;

  const TeamMemberCard({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(member.photoUrl),
              radius: 120,
            ),
            const SizedBox(height: 20),
            Text(
              member.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'NIM: ${member.id}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class Person {
  final String name;
  final String id;
  final String photoUrl;

  Person({
    required this.name,
    required this.id,
    required this.photoUrl,
  });
}
