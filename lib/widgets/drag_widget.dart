import 'package:woofer_app/main.dart';
import 'package:woofer_app/widgets/pet_profile.dart';
import 'package:flutter/material.dart';
import 'package:woofer_app/objects/pet_info.dart';

class DragWidget extends StatefulWidget {
  const DragWidget({
    Key? key, 
    required this.profile, 
    required this.index, 
    required this.swipeNotifier,
    this.isLastCard = false}) : super(key: key);
  final Profile profile;
  final int index;
  final ValueNotifier<Swipe> swipeNotifier;
  final bool isLastCard;

  @override
  State<DragWidget> createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Draggable<int>(
        data: widget.index,
        feedback: Material(
          color: Colors.transparent,
          child: ValueListenableBuilder(
            valueListenable: widget.swipeNotifier,
            builder: (context, swipe, _){
              return RotationTransition(
                turns: swipe != Swipe.none
                ? swipe == Swipe.left
                  ? const AlwaysStoppedAnimation(-15/360)
                  : const AlwaysStoppedAnimation(15/360)
                :const AlwaysStoppedAnimation(0),
                child: Stack(
                  children: [
                    PetProfile(profile: widget.profile),
                    widget.swipeNotifier.value != Swipe.none
                      ? widget.swipeNotifier.value == Swipe.right
                        ? Positioned(
                            top: 40,
                            left: 20,
                            child: Transform.rotate(
                              angle: 12,
                              ),
                        )
                        : Positioned(
                            top: 50,
                            right: 24,
                            child: Transform.rotate(
                              angle: -12,)
                        )
                      : const SizedBox.shrink(),
                  ],
                ),);
            },
          ),
        ),
      onDragUpdate: (DragUpdateDetails dragUpdateDetails){
        if (dragUpdateDetails.delta.dx > 0 && 
          dragUpdateDetails.globalPosition.dx > 
            MediaQuery.of(context).size.width / 2){
              widget.swipeNotifier.value = Swipe.right;
            }
        if (dragUpdateDetails.delta.dx < 0 && 
          dragUpdateDetails.globalPosition.dx < 
            MediaQuery.of(context).size.width / 2){
              widget.swipeNotifier.value == Swipe.left;
            }
      },
      onDragEnd: (drag){
        widget.swipeNotifier.value = Swipe.none;
      },

      childWhenDragging: Container(
        color: Colors.transparent,
      ),

      child: ValueListenableBuilder(valueListenable: widget.swipeNotifier
      , builder: (BuildContext context, Swipe swipe, Widget ? child){
        return Stack(
          children: [
            PetProfile(profile: widget.profile),
            swipe != Swipe.none && widget.isLastCard
              ? swipe == Swipe.right 
                ? Positioned(
                  top: 40,
                  left: 20,
                  child: Transform.rotate(
                    angle: 12,
                  ))
                : Positioned(
                  top: 50,
                  left: 24,
                  child: Transform.rotate(
                    angle: -12,
                ))
              : const SizedBox.shrink(),
          ],
        );
      }),
      ),);
  }
}