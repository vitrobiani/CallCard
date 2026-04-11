import 'backend/schema/structs/project_card_struct.dart';
import 'backend/schema/structs/timeline_entry_struct.dart';
import 'backend/schema/structs/skill_item_struct.dart';
import 'backend/schema/structs/skill_category_struct.dart';
import 'backend/schema/enums/enums.dart';

class SkillsDetails {
  static final List<SkillCategoryStruct> skillsList = [
    lang_skills,
    tools,
  ];

  static final SkillCategoryStruct lang_skills = SkillCategoryStruct(
    categoryName: 'Languages',
    skills: [
      SkillItemStruct(name: 'Java', lang: Languages.Java),
      SkillItemStruct(name: 'Python', lang: Languages.Python),
      SkillItemStruct(name: 'C', lang: Languages.C),
      SkillItemStruct(name: 'C++', lang: Languages.Cpp),
      SkillItemStruct(name: 'Rust', lang: Languages.Rust),
      SkillItemStruct(name: 'SQL', lang: Languages.SQL),
      SkillItemStruct(name: 'Bash', lang: Languages.Bash),
      SkillItemStruct(name: 'Dart', lang: Languages.Dart),
    ],
  );
  static final SkillCategoryStruct tools = SkillCategoryStruct(
    categoryName: 'Tools & Frameworks',
    skills: [
      SkillItemStruct(name: 'Docker', tag: Tags.Docker),
      SkillItemStruct(name: 'Flutter', tag: Tags.Flutter),
      SkillItemStruct(name: 'PostgreSQL', tag: Tags.Postgresql),
      SkillItemStruct(name: 'SQLite', tag: Tags.SQLite),
      SkillItemStruct(name: 'Arduino', tag: Tags.Arduino),
      SkillItemStruct(name: 'Linux', tag: Tags.Linux),
      SkillItemStruct(name: 'Nix', tag: Tags.Nix),
      SkillItemStruct(name: 'Git'),
      SkillItemStruct(name: 'YOLO / OpenCV'),
    ],
  );
}

class TimelineDetails {
  static final List<TimelineEntryStruct> timelineList = [
    kernelios,
    engineering_degree,
    personal_projects,
  ];

  static final TimelineEntryStruct emptyTimelineEntry = TimelineEntryStruct(
    title: '',
    description: '',
    dateRange: '',
    langs: [],
    tags: [],
  );

  static final TimelineEntryStruct kernelios = TimelineEntryStruct(
    title: 'Cybersecurity Course at Kernelios',
    description: 'Studied various aspects of cybersecurity including network security, ethical hacking, and system vulnerabilities.'
        ' Gained hands-on experience with penetration testing tools and techniques.',
    dateRange: '2022 - 2023',
    langs: [Languages.Bash],
    tags: [Tags.Linux, Tags.Networks, Tags.ClientServer],
  );

  static final TimelineEntryStruct engineering_degree = TimelineEntryStruct(
    title: 'B.Sc. Software Engineering',
    description:
        'Studied core computer science fundamentals including data structures, algorithms, operating systems.'
            ' Completed coursework in systems programming, database management and design, embedded programing, maths and physics.',
    dateRange: '2022 - 2026',
    langs: [Languages.Java, Languages.C, Languages.Python, Languages.Cpp, Languages.SQL, ],
    tags: [Tags.Postgresql, Tags.Docker, Tags.Compilation, Tags.EmbeddedSystems, Tags.AI, Tags.Algorithms, Tags.DataStructures, Tags.OOP, Tags.OOD],
  );

  static final TimelineEntryStruct personal_projects = TimelineEntryStruct(
    title: 'Portfolio & Personal Projects',
    description:
        'Building a portfolio website and various side projects to explore new technologies.',
    dateRange: '2022 - Present',
    langs: [Languages.Rust, Languages.Dart],
    tags: [Tags.Flutter, Tags.Nix, Tags.Linux, Tags.Arduino, Tags.Soldering, Tags.SQLite ],
  );
}

class ProjectsDetails {
  static final List<ProjectCardStruct> projectsList = [
    TarotGame,
    SeminarPuzzleGame,
    COD_Beta,
    lzw_c_impl,
    bidirectional_bfs,
    gdo_compiler,
    BasysMX3Game,
    rfidEntranceSystem,
    finalOODProject,
    monsterTruck,
    aeorsense_integrative_project
  ];

  static final ProjectCardStruct emptyProject = ProjectCardStruct(
    name: '',
    langs: [],
    tags: [],
    summary: '',
    description: '',
    features: [],
    status: ProjectStatus.Archived,
    githubLink: '',
  );

  static final ProjectCardStruct aeorsense_integrative_project = ProjectCardStruct(
    name: 'AeorSense Integrative Project',
    langs: [Languages.Java, Languages.SQL, Languages.Dart],
    tags: [Tags.Postgresql, Tags.OOD, Tags.ClientServer, Tags.DataStructures, Tags.Docker, Tags.Flutter],
    summary: 'AeroSense is an aircraft cabin environmental monitoring and regulation system that ensures passenger health, safety, and '
              'comfort. It provides real-time monitoring of cabin climate through '
              'sensors, with automatic regulation to maintain optimal conditions. The system includes a dashboard for cabin crew, instant '
              'alerts for anomalies, and manual override capabilities when needed.',
    description: 'AeroSense is an aircraft cabin environmental monitoring and regulation system designed to ensure passenger health, safety, and '
                  'comfort. The system continuously monitors critical parameters including air pressure, '
                  'altitude, temperature, humidity, oxygen levels, CO2 concentration, and overall air quality through dedicated sensors. When '
                  'readings deviate from optimal ranges, the system automatically adjusts cabin conditions via regulators, or alerts cabin crew '
                  'for manual intervention if needed. The backend is built with Java Spring Boot and Postgres (later changed to MongoDB by request of the client (the lecturer)), '
                  'communicating via ActiveMQ Artemis'
                  'for asynchronous messaging, while the cross-platform Flutter client provides an intuitive dashboard for real-time data '
                  'visualization. Maintenance technicians receive diagnostic reports and sensor failure notifications for efficient system upkeep. '
                  'The architecture supports three primary actors: passengers who experience the regulated environment, cabin crew who monitor '
                  'and override when necessary, and technicians who maintain system reliability. '
                  'built for the Integrative Software Engineering course (Semester B, 2025).',
    features: [
      'Real-time monitoring of cabin air pressure, temperature, humidity, oxygen, and CO2 levels',
      'Automatic environmental regulation to maintain optimal cabin conditions',
      'Instant alerts for sensor failures and out-of-range readings',
      'Manual override controls for cabin crew intervention',
      'Cross-platform dashboard for mobile and desktop devices',
      'Automated system diagnostics and maintenance reporting',
      'Asynchronous messaging for reliable sensor-to-server communication',
    ],
    status: ProjectStatus.Archived,
    githubLink: 'https://github.com/vitrobiani/AeroSense',
  );

  static final ProjectCardStruct finalOODProject = ProjectCardStruct(
    name: 'Store Management System',
    langs: [Languages.Java, Languages.SQL],
    tags: [Tags.Postgresql, Tags.DataStructures, Tags.OOP, Tags.OOD, Tags.Postgresql],
    summary: 'A CLI-based store management system for a database class, interfacing with PostgreSQL via JDBC to manage products, orders, and shipping.',
    description: 'A Java terminal application built as a final project for a database course. It demonstrates core database principles by connecting to a PostgreSQL instance through JDBC and performing structured queries and updates. The system supports managing a store\'s product inventory, customer orders, invoices, and shipping companies through a menu-driven interface. Table names and column references are centralized in a dedicated constants file, and the schema can be auto-populated with seed data for testing.',
    features: [
      'Product management – add, remove, and update inventory by product code',
      'Order management – place and cancel orders with automatic invoice handling',
      'Shipping company management – add/remove companies with pending-order guard',
      'Customer and country support with hard-coded country seeding',
      'Auto-seed mode for test data (10 products, 3 companies, 3 customers, 7 orders)',
      'Reporting – per-product details, order history, invoices, and total store profit',
      'Full schema drop utility for dev/reset purposes',
      'PostgreSQL integration via JDBC with a backup file for easy DB restore',
    ],
    status: ProjectStatus.Archived,
    githubLink: 'https://github.com/vitrobiani/Final_Database_Java_Project',
  );


  static final ProjectCardStruct monsterTruck = ProjectCardStruct(
    name: 'BLE Monster Truck',
    langs: [Languages.Cpp, Languages.Dart],
    tags: [Tags.Flutter, Tags.EmbeddedSystems, Tags.Arduino, Tags.Soldering],
    summary: 'Bluetooth Low Energy controlled monster truck with an ESP32 firmware (C++)'
        ' and a Flutter joystick dashboard for real-time wireless motor control.',
    description: 'Built a wireless RC monster truck controlled over Bluetooth Low Energy,'
        ' The hardware layer runs on an ESP32, driving two DC motors through an'
        ' L293D motor driver for independent drive and steering control. The ESP32 exposes'
        ' a Nordic UART Service (NUS) GATT profile, allowing bidirectional BLE communication - '
        ' Commands are received over the RX characteristic and dispatched in real time '
        ' to the motor driver. The Flutter app handles runtime BLE permissions,'
        ' scans for the ESP32 by MAC address, discovers the NUS GATT service, and streams'
        ' directional commands from a joystick UI.',
    features: [
      'ESP32 BLE firmware exposing Nordic UART Service for wireless serial communication',
      'L293D motor driver controlling independent drive and steering DC motors',
      'Automatic BLE advertising restart after client disconnect',
      'Flutter app scanning and connecting to ESP32 by MAC address at runtime',
      'Runtime BLE and location permission handling on Android',
      'Joystick UI sending real-time directional commands over BLE',
      'Bidirectional communication with TX characteristic available for telemetry',
    ],
    status: ProjectStatus.Completed,
    githubLink: 'https://github.com/vitrobiani/MonsterTruck',
  );

  static final ProjectCardStruct rfidEntranceSystem = ProjectCardStruct(
    name: 'RFID Entrance System',
    langs: [Languages.Cpp, Languages.Rust, Languages.Dart, Languages.SQL],
    tags: [Tags.Flutter, Tags.EmbeddedSystems, Tags.ClientServer, Tags.Arduino, Tags.SQLite],
    summary: 'end-to-end RFID access control system with Arduino firmware (C++),'
        ' a Rust/Axum backend with SQLite logging and Server-Sent Events, and a'
        ' Flutter dashboard for real-time access monitoring.',
    description: 'Built an end-to-end RFID access control system spanning embedded hardware,'
        ' systems programming, and cross-platform frontend development. The hardware layer'
        ' runs on an Arduino Uno, integrating an RC522 RFID reader over SPI, an LCD1602 display,'
        ' a servo motor simulating a physical lock, and a buzzer for audio feedback. Access decisions'
        ' are made in real time based on a whitelist of authorized card UIDs, with every scan event'
        ' serialized and sent over USB serial to a Rust backend built with Axum and SQLite (easy transfer to postgres).'
        ' The backend exposes a Server-Sent Events stream so connected clients receive push updates the'
        ' moment a new event is logged, with no polling required. A Flutter dashboard consumes that'
        ' live stream and presents the full access log in a real-time data table. The project involved'
        ' debugging low-level hardware communication issues, managing blocking I/O safely within an async'
        ' Rust runtime, and integrating three different languages across four communication'
        ' protocols: Serial, SPI, HTTP, and SSE.',
    features: [
      'Real-time RFID card authentication with authorized UID whitelist',
      'Servo motor lock mechanism responding instantly to access decisions',
      'LCD display and buzzer providing on-device visual and audio feedback',
      'Rust/Axum backend with persistent SQLite access logging',
      'Server-Sent Events (SSE) push stream eliminating the need for frontend polling',
      'Flutter dashboard presenting a live updating access log data table',
      'Database layer abstracted for seamless migration from SQLite to PostgreSQL',
      'Full serial communication pipeline from Arduino hardware to backend service',
    ],
    status: ProjectStatus.Completed,
    githubLink: 'https://github.com/vitrobiani/EntranceSystem/',
  );

  static final ProjectCardStruct BasysMX3Game = ProjectCardStruct(
    name: 'BasysMX3 Game',
    langs: [Languages.C],
    tags: [Tags.GameDevelopment, Tags.EmbeddedSystems],
    summary: 'An adventure RPG game built in C for the Basys MX3 microcontroller,'
        ' displayed on a 16x2 character LCD. Built with MPLAB X.',
    description: 'You control a hero navigating through a meadow, cave, and'
        ' houses -- all rendered as custom pixel-art characters on the'
        ' LCD. The goal is to rescue all 4 lost children, bring them to'
        ' the old man, get the secret notes, and enter the castle to win.'
        ' \nThe hardware includes: \nmicrocontroller\nLCD display\n8 LEDs'
        ' 8 switches\n5 push-up buttons\n4x4 keypad\n7 segment display'
        ' \nAnalog potentiometer\nRGB light\nspeaker\nfor all I have'
        ' written dedicated drivers.',
    features: [
      'Custom pixel-art character rendering on a 16x2 LCD',
      'Dedicated low-level drivers for Keypad, LCD, LEDs, and Sensors',
      'Real-time hero movement and interaction logic',
      'Hardware-integrated gameplay using 4x4 keypad and push-buttons',
      'Multi-stage world design (Meadow, Cave, Houses, and Castle)',
    ],
    status: ProjectStatus.Completed,
    githubLink: 'https://github.com/vitrobiani/BasysMX3_Game',
  );

  static final ProjectCardStruct TarotGame = ProjectCardStruct(
    name: 'Tarot Game',
    langs: [Languages.Rust],
    tags: [Tags.GameDevelopment],
    summary: 'A tarot card game built with Rust and Macroquad, compiled to WebAssembly.',
    description:
        'This is a tarot card game developed in Rust using the Macroquad game framework.'
        ' The game has been compiled to WebAssembly (WASM) to run directly in the browser.'
        ' The game features interactive tarot card gameplay, allowing players to draw cards, view their meanings'
        ' or open the cards automatically in a known spread (3-card or celtic).'
        ' Click the preview button to play the game!',
    features: [
      'Open cards automatically in a known spread (3-card or celtic)',
      'Interactive tarot card gameplay',
    ],
    status: ProjectStatus.InProgress,
    githubLink: 'https://github.com/vitrobiani/tarot_macro',
    previewLink: 'wasm/tarot_game.wasm',
  );

  static final ProjectCardStruct gdo_compiler = ProjectCardStruct(
    name: 'The GDO Compiler',
    langs: [Languages.Python],
    tags: [Tags.Compilation],
    summary:
        'The GDO Compiler is a compiler for a simple functional programming language called GDO.',
    description:
        'The compiler is implemented in Python which takes the the GDO source code lexes it and interprets it according to our BNF Grammar.'
        ' The language supports basic programming ideas such as variables, functions, conditionals, recursion and writing to the screen.'
        ' The compiler was built as part of a university course on compilation and language design.'
        ' The project involved designing the language syntax and semantics, implementing the lexer and parser, and creating the interpreter to execute the compiled code.'
        ' The GDO compiler also has a \'line by line\' mode, which allows users to execute code line by line, just like in a REPL environment.',
    features: [
      'Lexical analysis and parsing of GDO source code',
      'Support for variables, functions, conditionals, and recursion',
      'Line by line execution mode for interactive coding',
      'Error handling and reporting for syntax and runtime errors',
    ],
    status: ProjectStatus.Completed,
    githubLink: '',
  );

  static final ProjectCardStruct bidirectional_bfs = ProjectCardStruct(
      name: 'Bidirectional BFS',
      langs: [Languages.Cpp],
      tags: [Tags.Algorithms, Tags.DataStructures],
      summary:
          'An implementation of the Bidirectional Breadth-First Search (BFS) algorithm in C++. ',
      description:
          'This project implements the Bidirectional BFS algorithm, which is an optimization of the traditional BFS algorithm.'
          ' It simultaneously searches from both the start and goal nodes, meeting in the middle to reduce the search space and time complexity.'
          ' The algorithm was implemented on a tiled grid graph, where each tile represents a node and edges connect adjacent tiles.'
          ' There is a visual real-time representation of the search process using a simple GUI built with libgl.',
      features: [
        'Efficient bidirectional search algorithm',
        'Path reconstruction from start to goal',
        'Real-time visualization of the search process',
      ],
      status: ProjectStatus.Completed,
      githubLink: 'https://github.com/vitrobiani/bidirectional_BFS_GUI');

  static final ProjectCardStruct lzw_c_impl = ProjectCardStruct(
    name: 'lzw C Implementation',
    langs: [Languages.C],
    tags: [Tags.Algorithms, Tags.Networks],
    summary:
        'This is a C implementation of the LZW compression algorithm done while doing an information theory course.',
    description:
        'The compression algorithm works by replacing repeated sequences of data with shorter codes.'
        ' It builds a dictionary of sequences as it processes the input data, allowing it to efficiently encode and decode the data.'
        ' This implementation includes functions for both compression and decompression.',
    features: [
      'Efficient LZW compression and decompression',
      'Includes the option to print the dictionaries used during the process',
    ],
    status: ProjectStatus.Completed,
    githubLink: 'https://github.com/vitrobiani/LZW_C_impl',
  );

  static final ProjectCardStruct COD_Beta = ProjectCardStruct(
    name: 'COD Beta',
    langs: [Languages.Cpp],
    tags: [Tags.Algorithms, Tags.AI, Tags.GameDevelopment, Tags.OOP, Tags.OOD],
    summary: 'This was a project made for a university course on AI in games.'
        ' It is a computer playing against itself a 2D top-down (birds eye view) shooting game'
        ' There are 2 teams, each with 4 soldiers, and the goal is to eliminate the other team.',
    description:
        'The project involved implementing searching and resource management algorithms to control the soldiers in the game.'
        ' Each soldier is controlled by a state machine that dictates its behavior based on the current situation.'
        ' The AI uses pathfinding algorithms to navigate the map, taking into account obstacles and enemy positions.'
        ' Decision-making is handled through a combination of rule-based systems and utility-based AI, allowing soldiers to choose actions such as attacking, retreating, seeking cover or replenishing consumables based on their health, the proximity of the enemies and their location.'
        ' The game also features a simple physics engine to handle bullet trajectories and collisions.'
        ' The project was developed in C++ using libgl for graphics rendering and input handling.'
        ' All the maps are procedurally generated and the soldiers are created with different "personalities", providing a unique experience each time the game is played.',
    features: [
      'State machine-based AI for soldier behavior',
      'Pathfinding algorithms for navigation',
      'Rule-based and utility-based decision-making',
      'Procedurally generated maps',
      'Simple physics engine for bullet trajectories and collisions',
    ],
    status: ProjectStatus.Completed,
    githubLink: 'https://github.com/vitrobiani/COD_beta',
  );

  static final ProjectCardStruct SeminarPuzzleGame = ProjectCardStruct(
    name: 'Seminar Puzzle Game',
    langs: [Languages.Python],
    tags: [Tags.Algorithms, Tags.ClientServer, Tags.GameDevelopment],
    summary:
        'A Client Server Slider Puzzle Game and solver!. written in Python,'
        ' opens a server and allows opening 2 clients: human player and computer player.'
        ' all statistics and records of both players are accessible from the server side.',
    description:
        'This project implements a slider puzzle game using a client-server architecture in Python.'
        ' The server manages the game state and allows two types of clients to connect: a human player and a computer player as singletons.'
        ' The human player interacts with the game through a graphical interface, while the computer player uses algorithms to solve the puzzle automatically.'
        ' The computer player employs 2 algorithms BFS and what we call the "Human algorithm" to find the optimal solution.'
        ' The Human algorithm mimics human strategies for solving the puzzle, providing a more intuitive approach compared to traditional search algorithms like BFS by basically solving just the first row and column'
        ' each time its solving them its lowering the degree of the puzzle it needs to solve.'
        ' The server keeps track of all game statistics and records for both players, which can be accessed and analyzed to compare performance.'
        ' The server is opened on localhost:5000, and clients can connect to it to start playing.',
    features: [
      'Graphical interface for human player interaction',
      'Automated puzzle solving using BFS and Human-like algorithms',
      'Comprehensive statistics tracking for performance analysis',
      'Detailed logging of game sessions and outcomes on the server side',
      'Allow games from size 3x3 to 10x10',
    ],
    status: ProjectStatus.InProgress,
    githubLink: 'https://github.com/vitrobiani/SeminarPuzzleGame',
  );
}
