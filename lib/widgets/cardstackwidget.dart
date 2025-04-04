import 'package:woofer_app/design/cardStackBG.dart';
import 'package:woofer_app/objects/pet_info.dart';
import 'package:woofer_app/objects/user_info.dart';
import 'package:woofer_app/widgets/contactInfoWidget.dart';
import 'package:woofer_app/widgets/drag_widget.dart';
import 'package:woofer_app/widgets/navbar.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:woofer_app/widgets/userProfile.dart';


class JoinedCardStack extends StatelessWidget {
  const JoinedCardStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
        child: Stack(
           children: const [
            BackgroudCurveWidget(),
            Cardstackwidget(),
            
          ],
        ),
      ),
    );
  }
}

class Cardstackwidget extends StatefulWidget {
  const Cardstackwidget({ Key? key }) : super(key: key);

  @override
  State<Cardstackwidget> createState() => _CardstackwidgetState();
}

//Preloading list with different dogs
class _CardstackwidgetState extends State<Cardstackwidget> 
  with SingleTickerProviderStateMixin{
  List<Profile> draggableItems = petInfo;

  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);
  late final AnimationController _animationController;

  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animationController.addStatusListener((status) {
      if (status== AnimationStatus.completed){
        draggableItems.removeLast();
        _animationController.reset();

        swipeNotifier.value = Swipe.none;
      }
    });
  }

@override
  Widget build(BuildContext context) {
    return Stack( // Code for creating stack of cards with pet info. 
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (context, swipe, _) => Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: List.generate(draggableItems.length, (index){
                if (index == draggableItems.length - 1) {
                  return PositionedTransition(
                    rect: RelativeRectTween(
                      begin: RelativeRect.fromSize(
                        const Rect.fromLTWH(0,0,580,340),
                        const Size(580, 340)),
                      end: RelativeRect.fromSize(
                        Rect.fromLTWH(
                          swipe != Swipe.none
                            ? swipe == Swipe.left
                              ? -300
                              : 300
                            : 0,
                          0,
                          580,
                          340),
                        const Size(580, 340)),
                      ).animate(CurvedAnimation(
                        parent: _animationController,
                        curve: Curves.easeInOut,
                      )),
                      child: RotationTransition(
                        turns: Tween<double>(
                          begin: 0,
                          end: swipe != Swipe.none
                              ? swipe == Swipe.left
                                ? -0.1 * 0.3
                                : 0.1 * 0.3
                              : 0.0).animate(
                                CurvedAnimation(
                                  parent: _animationController, 
                                  curve: 
                                  const Interval(0,0.4, curve: Curves.easeInOut),
                                  ),
                              ),
                        child: DragWidget(
                          profile: draggableItems[index],
                          index: index,
                          swipeNotifier: swipeNotifier,
                          isLastCard: true,
                        ),
                      ),
                    );
                } else {
                  return DragWidget(
                    profile: draggableItems[index],
                    index: index, 
                    swipeNotifier: swipeNotifier,
                  );
                }
              }),
            ),
          ),
        ),
      Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 46.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Navbar(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: 
                (context) => user_Page(UserInfo2[giveCurrentUser()])
                  ),
                );
              }, 
              icon: const Icon(
                Icons.person,
                color: Colors.amberAccent),
              ),
            const SizedBox(width: 20),
            Navbar(onPressed: (){

              }, 
            icon: const Icon(
              Icons.menu,
              color: Colors.amberAccent),
              ),
            const SizedBox(width: 20),
            Navbar(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: 
              (context) => ContactInfoWidget()
                  ),
                );
              }, 
            icon: const Icon(
              Icons.contact_phone,
              color: Colors.amberAccent),
              ),
            ],
          ),
        )
      ),
      Positioned(
        left: 0,
        child: DragTarget<int>(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return IgnorePointer(
              child: Container(
                height: 700.0,
                width: 80.0,
                color: Colors.transparent,
              ),
            );
          },
          onAccept: (int index) {
            setState(() {
              draggableItems.removeAt(index);
            });
          },
        )
      ),
      Positioned(
        right: 0,
        child: DragTarget<int>(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ){
            return IgnorePointer(
              child: Container(
                height: 700.0,
                width: 80.0,
                color: Colors.transparent,
              ),
            );
          },
          onAccept: (int index) {
            setState(() {
              addPets(draggableItems[index]);
              draggableItems.removeAt(index);
            });
          },
        )
      )
      ],

    );}}