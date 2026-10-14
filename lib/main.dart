import 'package:flutter/material.dart';

void main() {
  runApp(const MonaPortfolioApp());
}

class MonaPortfolioApp extends StatelessWidget {
  const MonaPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mona Chandrika | Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF315C81),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F8FB),
        fontFamily: 'Roboto',
      ),
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  static const Color navy = Color(0xFF183B56);
  static const Color blue = Color(0xFF315C81);
  static const Color background = Color(0xFFF6F8FB);

  final List<Map<String, String>> projects = const [
    {
      'title': 'Neoterra',
      'subtitle': 'Smart Waste Management Platform',
      'description':
          'Developed an agentic multi-agent reinforcement learning environment for smart waste management using Python, FastAPI and Docker.',
      'details':
          'Designed REST APIs, containerized services and integrated Google Cloud Run, Firestore and Firebase Authentication.',
      'tag': 'Meta OpenEnv Hackathon 2026',
    },
  ];

  final List<Map<String, String>> skills = const [
    {
      'title': 'Programming',
      'items': 'Java, Python, C, SQL, JavaScript',
    },
    {
      'title': 'Core Computer Science',
      'items':
          'Data Structures & Algorithms, OOP, Software Design, Design Patterns, SDLC, DBMS, Operating Systems',
    },
    {
      'title': 'Web & APIs',
      'items': 'HTML, CSS, Node.js, FastAPI, REST API Design',
    },
    {
      'title': 'Cloud & DevOps',
      'items':
          'Google Cloud Platform, Cloud Run, Firestore, Firebase Authentication, Docker, Git, GitHub, Linux',
    },
    {
      'title': 'Artificial Intelligence',
      'items':
          'Agentic AI, Multi-Agent Systems, Prompt Engineering, Generative AI, AI-Assisted Development',
    },
  ];

  final List<Map<String, String>> achievements = const [
    {
      'title': 'AspireforHer Hackathon by Logitech',
      'description': 'Semifinalist.',
    },
    {
      'title': 'Myntra WeForShe Hackathon',
      'description': 'Ranked among the Top 100 teams.',
    },
    {
      'title': 'Competitive Programming',
      'description': 'Solved 500+ algorithmic problems on CodeChef.',
    },
  ];

  final List<Map<String, String>> certifications = const [
    {
      'title': 'Google Cloud Skills Boost',
      'description': 'Gold Badge',
    },
    {
      'title': 'Infosys',
      'description': 'Web Development',
    },
    {
      'title': 'CodeChef',
      'description': 'Java Programming',
    },
    {
      'title': 'CodeChef',
      'description': 'Data Structures & Algorithms',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Mona Chandrika',
          style: TextStyle(
            color: navy,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => scrollTo(context, 'about'),
            child: const Text('About'),
          ),
          TextButton(
            onPressed: () => scrollTo(context, 'projects'),
            child: const Text('Projects'),
          ),
          TextButton(
            onPressed: () => scrollTo(context, 'skills'),
            child: const Text('Skills'),
          ),
          TextButton(
            onPressed: () => scrollTo(context, 'contact'),
            child: const Text('Contact'),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            heroSection(context),
            aboutSection(),
            experienceSection(),
            projectsSection(),
            skillsSection(),
            educationSection(),
            achievementsSection(),
            certificationsSection(),
            contactSection(context),
            footer(),
          ],
        ),
      ),
    );
  }

  void scrollTo(BuildContext context, String section) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Navigate to the $section section by scrolling.'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  Widget heroSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 64,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFEAF2F9),
            Color(0xFFF6F8FB),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1050),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 650;

              final intro = Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: const Color(0xFFD7E4F0),
                      ),
                    ),
                    child: const Text(
                      'COMPUTER SCIENCE UNDERGRADUATE',
                      style: TextStyle(
                        color: blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Hello, I’m',
                    style: TextStyle(
                      color: blue,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Mona Chandrika\nJarubula',
                    style: TextStyle(
                      color: navy,
                      fontSize: 42,
                      height: 1.15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Building practical software and AI-powered solutions.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.6,
                      color: Color(0xFF526171),
                    ),
                  ),
                  const SizedBox(height: 26),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      FilledButton.icon(
                        onPressed: () =>
                            scrollTo(context, 'projects'),
                        icon: const Icon(Icons.work_outline),
                        label: const Text('Explore Projects'),
                        style: FilledButton.styleFrom(
                          backgroundColor: navy,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () =>
                            scrollTo(context, 'contact'),
                        icon: const Icon(Icons.mail_outline),
                        label: const Text('Contact Me'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: navy,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );

              final profile = Container(
                width: 250,
                padding: const EdgeInsets.all(26),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    color: const Color(0xFFDCE6EF),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: navy.withValues(alpha: 0.07),
                      blurRadius: 24,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 125,
                      width: 125,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAF2F9),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFD0DFED),
                          width: 2,
                        ),
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        size: 72,
                        color: navy,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Mona Chandrika',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: navy,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Software Development | AI',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blueGrey,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Divider(),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 17,
                          color: blue,
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            'Computer Science & Engineering',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );

              if (isWide) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: intro),
                    const SizedBox(width: 40),
                    profile,
                  ],
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  intro,
                  const SizedBox(height: 40),
                  Center(child: profile),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget section({
    required String id,
    required String title,
    required Widget child,
    String? subtitle,
  }) {
    return Container(
      key: ValueKey(id),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 42,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: navy,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 4,
                width: 55,
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 12),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                  ),
                ),
              ],
              const SizedBox(height: 25),
              child,
            ],
          ),
        ),
      ),
    );
  }

  Widget aboutSection() {
    return section(
      id: 'about',
      title: 'About Me',
      subtitle: 'A little introduction',
      child: const Text(
        'I am a Computer Science undergraduate with strong foundations in '
        'Java, Data Structures and Algorithms, and software design. '
        'I enjoy building API-driven applications, exploring cloud-native '
        'technologies, and developing AI-powered systems. My experience '
        'includes software development, multi-agent AI systems, API design, '
        'and working across the software development lifecycle.',
        style: TextStyle(
          fontSize: 16,
          height: 1.9,
          color: Color(0xFF526171),
        ),
      ),
    );
  }

  Widget experienceSection() {
    return section(
      id: 'experience',
      title: 'Work Experience',
      subtitle: 'Professional experience',
      child: card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Web Development Intern',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Balaji Landscapes  |  June 2026 – August 2026',
              style: TextStyle(
                fontSize: 13,
                color: blue,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 18),
            bullet(
              'Built and deployed a production website with responsive interfaces and application features.',
            ),
            bullet(
              'Gathered stakeholder requirements and translated them into web solutions across the software development lifecycle.',
            ),
            bullet(
              'Resolved development issues while working with version control, deployment workflows, and software delivery practices.',
            ),
          ],
        ),
      ),
    );
  }

  Widget projectsSection() {
    return section(
      id: 'projects',
      title: 'Projects',
      subtitle: 'Selected technical work',
      child: Column(
        children: projects.map((project) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEAF2F9),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.recycling_outlined,
                          color: navy,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              project['title']!,
                              style: const TextStyle(
                                color: navy,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              project['subtitle']!,
                              style: const TextStyle(
                                color: blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    project['description']!,
                    style: const TextStyle(
                      height: 1.7,
                      fontSize: 14,
                      color: Color(0xFF526171),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    project['details']!,
                    style: const TextStyle(
                      height: 1.7,
                      fontSize: 14,
                      color: Color(0xFF526171),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAF2F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      project['tag']!,
                      style: const TextStyle(
                        color: navy,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget skillsSection() {
    return section(
      id: 'skills',
      title: 'Technical Skills',
      subtitle: 'Technologies and areas of expertise',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final columns = constraints.maxWidth > 650 ? 2 : 1;
          final itemWidth =
              (constraints.maxWidth - (columns - 1) * 16) / columns;

          return Wrap(
            spacing: 16,
            runSpacing: 16,
            children: skills.map((skill) {
              return SizedBox(
                width: itemWidth,
                child: card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        skill['title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: navy,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        skill['items']!,
                        style: const TextStyle(
                          height: 1.8,
                          fontSize: 14,
                          color: Color(0xFF526171),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }

  Widget educationSection() {
    return section(
      id: 'education',
      title: 'Education',
      subtitle: 'Academic background',
      child: Column(
        children: [
          educationCard(
            year: '2024 – 2028',
            degree: 'B.Tech, Computer Science & Engineering',
            institution:
                'BVRIT Hyderabad College of Engineering for Women',
            score: '8.06 CGPA',
          ),
          const SizedBox(height: 14),
          educationCard(
            year: '2022 – 2024',
            degree: 'Higher Secondary Education',
            institution: 'Sri Chaitanya',
            score: '96.3%',
          ),
          const SizedBox(height: 14),
          educationCard(
            year: '2022',
            degree: 'Secondary School Education',
            institution: 'Sri Chaitanya Schools',
            score: '9.8 CGPA',
          ),
        ],
      ),
    );
  }

  Widget educationCard({
    required String year,
    required String degree,
    required String institution,
    required String score,
  }) {
    return card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: const Color(0xFFEAF2F9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.school_outlined,
              color: navy,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  year,
                  style: const TextStyle(
                    color: blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  degree,
                  style: const TextStyle(
                    color: navy,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  institution,
                  style: const TextStyle(
                    color: Color(0xFF526171),
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  score,
                  style: const TextStyle(
                    color: blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget achievementsSection() {
    return section(
      id: 'achievements',
      title: 'Achievements',
      subtitle: 'Milestones and recognition',
      child: Column(
        children: achievements.map((achievement) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.emoji_events_outlined,
                    color: blue,
                    size: 28,
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          achievement['title']!,
                          style: const TextStyle(
                            color: navy,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          achievement['description']!,
                          style: const TextStyle(
                            color: Color(0xFF526171),
                            height: 1.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget certificationsSection() {
    return section(
      id: 'certifications',
      title: 'Certifications',
      subtitle: 'Learning and professional development',
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: certifications.map((certification) {
          return Container(
            width: 220,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: const Color(0xFFE1E8F0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.verified_outlined,
                  color: blue,
                  size: 26,
                ),
                const SizedBox(height: 12),
                Text(
                  certification['title']!,
                  style: const TextStyle(
                    color: navy,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  certification['description']!,
                  style: const TextStyle(
                    color: Color(0xFF526171),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget contactSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 50,
      ),
      color: navy,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 950),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Let’s Connect',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'I am always interested in learning, collaborating, '
                'and exploring new opportunities.',
                style: TextStyle(
                  color: Color(0xFFD8E4EF),
                  height: 1.7,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 28),
              contactRow(
                Icons.email_outlined,
                'monachandrikajarubula@gmail.com',
              ),
              const SizedBox(height: 16),
              contactRow(
                Icons.phone_outlined,
                '+91 9553348399',
              ),
              const SizedBox(height: 16),
              contactRow(
                Icons.code,
                'GitHub',
              ),
              const SizedBox(height: 16),
              contactRow(
                Icons.business_center_outlined,
                'LinkedIn',
              ),
              const SizedBox(height: 28),
              const Text(
                'Email, GitHub and LinkedIn details are listed above. '
                'Replace the social labels with your profile URLs if needed.',
                style: TextStyle(
                  color: Color(0xFFB8C9D9),
                  fontSize: 12,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFFD8E4EF),
          size: 21,
        ),
        const SizedBox(width: 12),
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget footer() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      color: const Color(0xFF102C42),
      child: const Text(
        '© 2026 Mona Chandrika Jarubula. All rights reserved.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFFD8E4EF),
          fontSize: 12,
        ),
      ),
    );
  }

  Widget card({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFE1E8F0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.025),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }

  Widget bullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Icon(
              Icons.circle,
              size: 7,
              color: blue,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                height: 1.7,
                color: Color(0xFF526171),
              ),
            ),
          ),
        ],
      ),
    );
  }
}