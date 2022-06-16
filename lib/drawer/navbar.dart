import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 105,
              child: const DrawerHeader(
                child: Text(
                  'Side menu',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
              ),
            ),
            ExpansionTile(
              title: const Text('Home'),
              trailing: const Icon(Icons.add),
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title:  Text('Home Page 1',style: TextStyle(color: Colors.green)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Home Page 2'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Home Page 3'),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 0,
            ),
            const ListTile(
              title: const Text('About'),
              onTap: null,
            ),
            const Divider(
              height: 0,
            ),
            ExpansionTile(
              title: const Text('Jobs'),
              trailing: const Icon(Icons.add),
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: Text('Job List',style: TextStyle(color: Colors.green)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Favourite Jobs'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Job Details'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Post A Job'),
                  ),
                )
              ],
            ),
            const Divider(
              height: 0,
            ),
            ExpansionTile(
              title: const Text('Candidates'),
              trailing: const Icon(Icons.add),
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: Text('Candidate List',style: TextStyle(color: Colors.green)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Candidate Details'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Single Resume'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Submit Resume'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Pricing'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: Text('Candidate Dashboard'),
                  ),
                )
              ],
            ),
            const Divider(
              height: 0,
            ),
            ExpansionTile(
              title: const Text('Pages'),
              trailing: const Icon(Icons.add),
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: Text('Company List', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Company Details'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Login Page'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Create Account Page'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: Text('Profile'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Single Profile'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('404'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('FAQ'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Terms and Conditions'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: Text('Privacy Policy'),
                  ),
                )
              ],
            ),
            const Divider(
              height: 1,
            ),
            ExpansionTile(
              title: const Text('Blogs'),
              trailing: const Icon(Icons.add),
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: Text('Blog' ,style: TextStyle(color: Colors.green)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const ListTile(
                    title: const Text('Blog Details'),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 0,
            ),
            const ListTile(
              title: Text('Contact'),
              onTap: null,
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.add_box_outlined),
              title: Text('Login'),
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}
