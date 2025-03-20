import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework1/data/rate_item_data.dart';

class RateItemWidget extends ConsumerWidget {
  final RateItemData rateItem;

  const RateItemWidget({super.key, required this.rateItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateNotifier = ref.watch(rateitemProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(184, 241, 233, 107),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                ),
                child: Icon(
                  Icons.fastfood,
                  color: Colors.lightBlue,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  rateItem.itemname,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () => rateNotifier.toggleBad(rateItem.itemid),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: rateItem.isBad ? Colors.black : Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)), // 設置圓角半徑
                  ),
                  child: Icon(
                    Icons.thumb_down_off_alt,
                    color: rateItem.isBad ? Color(0xFFF3F3F3) : Color(0xFF5E5E5E),
                    size: 22,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () => rateNotifier.toggleGood(rateItem.itemid),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: rateItem.isGood ? Colors.black : Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)), // 設置圓角半徑
                  ),
                  child: Icon(
                    Icons.thumb_up_off_alt,
                    color: rateItem.isGood ? Color(0xFFF3F3F3) : Color(0xFF5E5E5E),
                    size: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        if (rateItem.isBad)
          Wrap(
            spacing: 10.0,
            runSpacing: 1.0,
            children: rateItem.rates.map(
              (rate) {
                return ChoiceChip(
                  showCheckmark: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24), // 設定圓角
                  ),
                  backgroundColor: Color(0xFFF3F3F3),
                  selectedColor: Color(0xFF5E5E5E),
                  label: Text(
                    rate.ratetext,
                    style: TextStyle(
                      color: rate.rateselected ? Colors.white : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  selected: rate.rateselected,
                  onSelected: (selected) => rateNotifier.toggleRateSelection(rateItem.itemid, rate.ratevalue),
                );
              },
            ).toList(),
          ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class RateList extends ConsumerWidget {
  const RateList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateList = ref.watch(rateitemProvider);

    return ListView.builder(
      shrinkWrap: true, // ListView只用必要的高度
      physics: NeverScrollableScrollPhysics(), // 禁止內層捲動
      itemCount: rateList.length,
      itemBuilder: (context, index) {
        return RateItemWidget(rateItem: rateList[index]);
      },
    );
  }
}
