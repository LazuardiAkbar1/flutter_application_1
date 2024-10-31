import 'package:flutter/material.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          // children: [
          //   Icon(Icons.notifications, color: Colors.black),
          //   SizedBox(width: 16),
          //   Icon(Icons.person, color: Colors.black),
          // ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header User
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/user_avatar.jpg'), // Ganti dengan gambar pengguna Anda
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat Pagi,',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        'Maman Abdurahman',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.qr_code, color: Colors.grey[700]),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.grey),
                  Text(
                    'Green Ville Residence',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  Icon(Icons.settings, color: Colors.grey),
                ],
              ),
              SizedBox(height: 20),

              // Ad Banner
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage('https://www.example.com/your-ad-image.jpg'), // Ganti dengan gambar iklan Anda
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Billing and Tebengan Section
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.red[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Iuran Wajib Bulanan', style: TextStyle(fontSize: 16, color: Colors.black)),
                            Text('Periode bulan Agustus 2024', style: TextStyle(color: Colors.grey)),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Bayar'),
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Card(
                      color: Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mencari Tebengan Pulang', style: TextStyle(fontSize: 16, color: Colors.black)),
                            Text('Jhon Key (Blok D1 No. 12)', style: TextStyle(color: Colors.grey)),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Lihat'),
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Layanan Section
              Text(
                'Layanan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildServiceIcon(Icons.phone, 'Darurat', Colors.red),
                  _buildServiceIcon(Icons.camera_alt, 'CCTV', Colors.blue),
                  _buildServiceIcon(Icons.attach_money, 'Keuangan', Colors.green),
                  _buildServiceIcon(Icons.directions_car, 'Nebeng', Colors.yellow),
                  _buildServiceIcon(Icons.security, 'Keamanan', Colors.teal),
                  _buildServiceIcon(Icons.phone, 'Layanan 6', Colors.purple),
                  _buildServiceIcon(Icons.add, 'Layanan 7', Colors.grey),
                  _buildServiceIcon(Icons.add, 'Layanan 8', Colors.grey),
                ],
              ),
              SizedBox(height: 20),

              // SOS Button
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('SOS'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                    textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Berita'),
          BottomNavigationBarItem(icon: Icon(Icons.apartment), label: 'Komplek'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Pengguna'),
        ],
      ),
    );
  }

  Widget _buildServiceIcon(IconData icon, String label, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color, size: 28),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
