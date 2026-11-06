import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF173B45);
    const accent = Color(0xFF35C9A5);
    const textColor = Color(0xFF173B45);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
        actions: [
          IconButton(onPressed: () {}, tooltip: "Search", icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, tooltip: "Settings", icon: Icon(Icons.settings)),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
              ),
              accountName: Text("Shuvo"),
              accountEmail: Text("durjoydasshuvo@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: accent,
                child: Icon(Icons.person, size: 40, color: color),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: () {}),
            Divider(),
            ListTile(leading: Icon(Icons.contacts), title: Text("Contact"), onTap: () {}),
            Spacer(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              onTap: () {},
            ),
          ],
        ),
      ),

      backgroundColor: const Color(0xFFEAF4F1),

      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: accent,
                    foregroundColor: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fixedSize: Size(130, 42),
                  ),
                  child: Text("Text Button"),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    foregroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text("Elevated Button"),
                ),
                SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: color,
                    side: BorderSide(color: accent, width: 2),
                    shape: StadiumBorder(),
                  ),
                  child: Text("Outlined Button"),
                ),
                SizedBox(height: 8),
                IconButton(
                  onPressed: () {},
                  tooltip: "Icon Button",
                  style: IconButton.styleFrom(
                    backgroundColor: accent,
                    foregroundColor: color,
                    fixedSize: Size(150, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.touch_app),
                      SizedBox(width: 4),
                      Text("Icon Button"),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  width: 300,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [color, Color(0xFF287C78)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: color.withValues(alpha: 0.2),
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  "Hello Flutter",
                  style: GoogleFonts.aleo(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}