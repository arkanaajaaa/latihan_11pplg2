import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView( // ✅ Tambahkan ini
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40), // beri padding atas bawah
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto Profil
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://scontent-cgk2-1.cdninstagram.com/v/t51.29350-15/463142545_1220703232472403_3743763526878522299_n.webp?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6IkNBUk9VU0VMX0lURU0uaW1hZ2VfdXJsZ2VuLjE0NDB4MTgwMC5zZHIuZjI5MzUwLmRlZmF1bHRfaW1hZ2UuYzIifQ&_nc_ht=scontent-cgk2-1.cdninstagram.com&_nc_cat=103&_nc_oc=Q6cZ2QHq0XQLgEvq9BYsv-R123JscU8ET18m0YM2czs6Uqy0uHPvn6zpKoFZ6sczEKwjyZ4&_nc_ohc=gs3Na6TpfywQ7kNvwG8ZR3X&_nc_gid=6cOH_BMk90YCrsWdUHqOtQ&edm=APoiHPcBAAAA&ccb=7-5&ig_cache_key=MzQ3Nzg2MjQwMDUzODU0MjcyMg%3D%3D.3-ccb7-5&oh=00_AfVYXHT9DMugPuO3wI6u7B7wmUc2DoYhYc6ldcHtk60FYQ&oe=68AB021F&_nc_sid=22de04'),
              ),
              const SizedBox(height: 20),

              // Nama
              const Text(
                'Arkana.ajaaa',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // Email
              Text(
                'myarkana12@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 20),

              // Informasi Lain
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Username'),
                        subtitle: Text('Aindirr'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('Telepon'),
                        subtitle: Text('+62 81221448601'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('Alamat'),
                        subtitle: Text('Bogor, Jawa Barat'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Tombol Edit Profil


               
                

              const SizedBox(height: 40), // ✅ Tambahkan jarak bawah agar tidak mepet
            ],
          ),
        ),
      ),
    );
  }
}
