import 'package:flutter/material.dart';
import 'services_page.dart';
import 'hours_page.dart';
import 'about_page.dart';
import 'contact_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Four'Az BARBER",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // HERO SECTION
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/barbershop.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  height: 350,
                  color: Colors.black54,
                ),

                const Positioned.fill(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Icon(
                          Icons.content_cut,
                          color: Colors.amber,
                          size: 60,
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Four'Az BARBER",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Premium Haircuts & Grooming",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // DASHBOARD MENU
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.5,
                children: [

                  dashboardCard(
                    context,
                    Icons.content_cut,
                    "Services",
                    const ServicesPage(),
                  ),

                  dashboardCard(
                    context,
                    Icons.access_time,
                    "Hours",
                    const HoursPage(),
                  ),

                  dashboardCard(
                    context,
                    Icons.info_outline,
                    "About",
                    const AboutPage(),
                  ),

                  dashboardCard(
                    context,
                    Icons.phone,
                    "Contact",
                    const ContactPage(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "OUR GALLERY",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(15),
              child: GridView.count(
                crossAxisCount:
                MediaQuery.of(context).size.width > 700 ? 4 : 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [

                  galleryImage(
                    'assets/images/barbershop.jpg',
                  ),

                  galleryImage(
                    'assets/images/fade haircut.jpg',
                  ),

                  galleryImage(
                    'assets/images/images (3).jpg',
                  ),

                  galleryImage(
                    'assets/images/kids haircut.jpg',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

Widget dashboardCard(
    BuildContext context,
    IconData icon,
    String title,
    Widget page,
    ) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => page,
        ),
      );
    },
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              size: 32,
              color: Colors.amber,
            ),

            const SizedBox(height: 8),

            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget galleryImage(String path) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Image.asset(
      path,
      fit: BoxFit.cover,
    ),
  );
}