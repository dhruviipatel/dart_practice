/* 
note : if you want to remove duplicate item from list then you can convert it
       in set and then again convert it in list so it remove all duplicates item
       because set does not contain duplicate values
*/

//check even odd / pallindrom
void main() {
  //remove duplicate item from list
  List duplicate = [1, 4, 8, 1, 5, 0, 2, 5, 3];

  print('without duplicate ${duplicate.toSet().toList()}');

  //short list from less to greter
  List mlist = [1, 7, 5, 9, 45, 0, 3];
  mlist.sort((x, y) => x.compareTo(y));

  print(mlist);

  //even odd
  int aa = 16;
  if (aa % 2 == 0) {
    print('even');
  } else {
    print('odd');
  }

  //pallindrom
  String mystr = 'abcba 1 2 1 abcba 2';

  String inlowercase = mystr.toLowerCase();

  String revstr = inlowercase.split(' ').reversed.join(' ');

  if (revstr == inlowercase) {
    print('pallindrome');
  } else {
    print('not pallindrome');
  }

  //1) get same number from both list
  //2) get number which are not same in both list

  List l1 = [1, 7, 4, 0, 2, 8, 9];
  List l2 = [11, 15, 33, 22, 4, 9, 0, 2, 1];
  List samelist = [];
  List difflist = [];

  for (var i in l1) {
    for (var j in l2) {
      if (i == j) {
        if (!samelist.contains(i)) {
          samelist.add(i);
        }
      }
    }
  }

  for (var i in l1) {
    if (!l2.contains(i)) {
      if (!difflist.contains(i)) {
        difflist.add(i);
      }
    }
  }

  for (var j in l2) {
    if (!l1.contains(j)) {
      if (!difflist.contains(j)) {
        difflist.add(j);
      }
    }
  }

  print('same in both list = $samelist');
  print('not available in both list = $difflist');

  //prime and not prime

  int checkprime = 14;

  List<int> li = [
    for (var i = 1; i <= checkprime; i++)
      if (checkprime % i == 0) i
  ];
  print(li);
  if (li.length == 2) {
    print('prime');
  } else {
    print('not prime');
  }

  //fibonacy series

  int limit = 5;
  List fibo = [0, 1];

  while (fibo.length < limit) {
    int next = fibo[fibo.length - 1] + fibo[fibo.length - 2];
    fibo.add(next);
  }
  print(fibo);

  //reverse string without revers word insight string
  String inputstring = 'Hello This Is Flutter';
  String reversedString = inputstring.split(' ').reversed.toList().join(' ');
  print(reversedString); //output : Flutter Is This Hello

  //print maximum, second maximum , third maximum num from list without
  //using max function, i have 2 ways 1)using loop and 2)using sorting technique

  //1) using for loop
  List a = [2, 5, 3, 8, 7, 3, 9, 5, 13, 9, 45];
  var maxnum = a[0];
  var secondmax = a[0];
  var thirdmax = a[0];

  for (var i = 1; i < a.length; i++) {
    if (a[i] > maxnum) {
      maxnum = a[i];
    }
  }
  print('first max num: $maxnum');
  //second max num;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != maxnum && a[i] > secondmax) {
      secondmax = a[i];
    }
  }
  print('second max num: $secondmax');

  //third max num
  for (var i = 0; i < a.length; i++) {
    if (a[i] != maxnum && a[i] != secondmax && a[i] > thirdmax) {
      thirdmax = a[i];
    }
  }

  print('third max num: $thirdmax');

  //2)using sorting

  List b = a.toSet().toList();
  b.sort((x, y) => y.compareTo(x));
  print('maximum 3 num from list = ${b.take(3)}');

  //check occurance of word in string
  var occurance = {};
  List<String> morethan2 = [];

  String thistring =
      "this is dhruvi patel my name is dhruvi , say hello dhruvi";

  List strelementlist = thistring.split(' ');

  strelementlist.forEach((e) {
    occurance[e] = (occurance[e] ?? 0) + 1;
  });

  //intead of above function you can also use below function
  // strelementlist.forEach((e) {
  //   if (occurance.containsKey(e)) {
  //     occurance[e] += 1;
  //   } else {
  //     occurance[e] = 1;
  //   }
  // });

  occurance.forEach(
    (word, count) {
      if (count > 2) {
        morethan2.add(word);
      }
    },
  );

  print(occurance);
  print(morethan2);
}

//completed excercises :1,2,3,4,5,6,7,10,11,12,13,14,22.
