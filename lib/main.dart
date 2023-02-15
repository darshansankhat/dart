//Program 1

// import 'dart:io';
//
// void main() {
//   List l1 = [];
//   int n, i;
//
//   print("Enter The Size Of Array :");
//   n = int.parse(stdin.readLineSync()!);
//
//   print("\n\n>>>>>=== Enter Element ===<<<<<\n\n");
//
//   for (i = 0; i < n; i++)
//   {
//     int n1 = int.parse(stdin.readLineSync()!);
//
//     l1.add(n1);
//   }
//
//   print("\n\n>>>>>=== Print Negative Element ===<<<<<\n\n");
//
//   for (i = 0; i < n; i++)
//   {
//     if (l1[i] <= 0)
//     {
//       print(l1[i]);
//     }
//   }
// }

//Program 2

// import 'dart:io';
//
// void main()
// {
//   List l1 = [];
//   int n, i;
//
//   print("Enter The Size Of Array :");
//   n = int.parse(stdin.readLineSync()!);
//
//   print("\n\n>>>>>=== Enter Element ===<<<<<\n\n");
//
//   for (i = 0; i < n; i++)
//   {
//     int n1 = int.parse(stdin.readLineSync()!);
//
//     l1.add(n1);
//   }
//
//   print("\n\n>>>>>=== Print Largest Element ===<<<<<\n\n");
//
//   for (i = 1; i < n; i++)
//   {
//           if (l1[0] < l1[i])
//           {
//             l1[0]=l1[i];
//           }
//   }
//
//   print("Largest Number is = ${l1[0]}");
// }

//Program 4

// import 'dart:io';
//
// void main() {
//   List l1 = [];
//   List l2 = [];
//   List sum = [];
//   int n;
//   int i, j;
//
//   print("Enter The Size Of Array :");
//   n = int.parse(stdin.readLineSync()!);
//
//   print("\n\n>>>>>=== Enter Array 1 ===<<<<<\n\n");
//
//   for (i = 0; i < n; i++) {
//     List l3 = [];
//     for (j = 0; j < n; j++) {
//       int n1 = int.parse(stdin.readLineSync()!);
//
//       l3.add(n1);
//     }
//     l1.add(l3);
//   }
//
//   print("\n\n>>>>>=== Enter Array 2 ===<<<<<\n\n");
//
//   for (i = 0; i < n; i++) {
//     List l3 = [];
//     for (j = 0; j < n; j++) {
//       int n2 = int.parse(stdin.readLineSync()!);
//
//       l3.add(n2);
//     }
//     l2.add(l3);
//   }
//
//   print("\n\n>>>>>=== SUM Of Array ===<<<<<\n\n");
//
//   for (i = 0; i < n; i++) {
//     List l3 = [];
//     for (j = 0; j < n; j++) {
//       int n3 = l1[i][j] + l2[i][j];
//       l3.add(n3);
//     }
//     sum.add(l3);
//   }
//
//   for (i = 0; i < n; i++) {
//     print(sum[i]);
//   }
// }


//Program 5


import 'dart:io';

void main()
{
  List l1 = [];
  List l2 = [];
  List l3 = [];
  List l4 = [];
  num ans=0;
  int n,no;
  int i, j;

  print("Enter The Size Of Array :");
  n = int.parse(stdin.readLineSync()!);

  print("\n\n>>>>>=== Enter Array 1 ===<<<<<\n\n");

  for (i = 0; i < n; i++)
  {
    List l3 = [];
    for (j = 0; j < n; j++) {
      int n1 = int.parse(stdin.readLineSync()!);

      l3.add(n1);
    }
    l1.add(l3);
  }

  print("Press 1 for Sum of All Elements :");
  print("Press 2 for Sum of Specific Row :");
  print("Press 3 for Sum of Specific Column:");
  print("Press 4 for Sum of Diagonal Elements :");
  print("Press 5 for Sum of Anti Diagonal Elements :");
  print("Press 0 for Exit :");

  no = int.parse(stdin.readLineSync()!);

  switch(no)
  {
    case 1:

        for(i=0;i<n;i++)
          {
            print(l1[i]);
            for(j=0;j<n;j++)
              {
                ans = ans + l1[i][j];
              }
          }
        print("Ans is : $ans");
        break;

    case 2:

      for(i=0;i<n;i++)
      {
        ans=0;
        print(l1[i]);
        for(j=0;j<n;j++)
        {
          ans = ans + l1[i][j];
        }
        print("Ans is : $ans");
      }
      break;
    case 3:
      for(j=0;j<n;j++)
      {
        ans=0;
        print(l1[j]);
        for(i=0;i<n;i++)
        {
          ans = ans + l1[i][j];
        }
        print("Ans is : $ans");
      }
      break;
    case 4:

      for(i=0;i<n;i++)
      {
        print(l1[i]);
        for(j=0;j<n;j++)
        {
          if(i==j)
            {
              ans = ans + l1[i][j];
            }
        }
      }
      print("Ans is : $ans");
      break;
    case 5:

      for(i=0;i<n;i++)
      {
        print(l1[i]);
        for(j=0;j<n;j++)
        {
          if(i+j==n-1)
          {
            ans = ans + l1[i][j];
          }
        }
      }
      print("Ans is : $ans");
      break;
    case 0:
      break;
    default :

      print("Wrong Choice .....!!!!");
  }
}
