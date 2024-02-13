import 'package:flutter/material.dart';
import 'package:flutter_ui_clone/widgets/schedulecard.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRch6CDHA9hqbe3GbIo6O0T-EWeIL7JJ8_cpQ&usqp=CAU'),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'MONDAY 16',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    const Text(
                      'TODAY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '${index + 17}',
                              style: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                fontSize: 50,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ScheduleCard(
                        title: 'Design Meeting',
                        startTime: '11:30',
                        endTime: '12:20',
                        participants: ['Alex', 'Helena', 'Nana'],
                      ),
                      ScheduleCard(
                        title: 'Daily PROJECT',
                        startTime: '12:35',
                        endTime: '12:50',
                        participants: ['Luke', 'Leia', 'ciry', '+4'],
                      ),
                      ScheduleCard(
                        title: 'WEEKLY PLANNMING',
                        startTime: '13:00',
                        endTime: '14:00',
                        participants: ['Yoda', 'Obi-Wan', 'Anakin'],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
