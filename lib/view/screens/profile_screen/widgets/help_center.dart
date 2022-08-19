import 'package:flutter/material.dart';
import 'package:movies_db/view/screens/profile_screen/widgets/contact_us_button.dart';
import 'package:movies_db/view/screens/profile_screen/widgets/custom_expansion_panel.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpCenter extends StatefulWidget {

  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04
        ),
        child: Column(
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabController,
                labelStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.w600),
                tabs: const [
                  Tab(text: 'FAQ'),
                  Tab(text: 'Contact Us'),
                ]
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                  children: [
                  FirstTab(context),
                  SecondTab(context)
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget FirstTab(BuildContext context){
  return SingleChildScrollView(
    child: Column(
      children: const [
        CustomExpansionPanel(
          title: 'What is Mova?',
          description: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
        ),

        CustomExpansionPanel(
          title: 'How to remove wish list?',
          description: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
        ),

        CustomExpansionPanel(
          title: 'How do I subscribe to premium?',
          description: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
        ),

        CustomExpansionPanel(
          title: 'How to unsubscribe from premium?',
          description: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
        ),

      ],
    ),
  );
}

Widget SecondTab(BuildContext context){

  Uri uri = Uri(
    scheme: 'https',
    host: 'telegram.me',
    path: '/@NkVladimir'
  );

  void launchTelegram() async{
    print(uri);
    if(await canLaunchUrl(uri)){
      await launchUrl(uri);
    }
  }

  return Column(
    children:[
      ContactUsButton(
        onPressed: (){},
        icon: 'assets/icons/email.png',
        text: 'Mail',
      ),
      ContactUsButton(
        onPressed: (){},
        icon: 'assets/icons/telegram.png',
        text: 'Telegram',
      ),
      ContactUsButton(
        onPressed: () => launchTelegram(),
        icon: 'assets/icons/whatsapp.png',
        text: 'WhatsApp',
      )
    ]
  );
}
