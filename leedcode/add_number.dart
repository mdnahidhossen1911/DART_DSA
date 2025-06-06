
 class ListNode {
    int val;
    ListNode? next;
    ListNode([this.val = 0, this.next]);
 }

class Solution {

  ListNode? head;

  // Add at end
  void add(int data) {
    ListNode newNode = ListNode(data);
    if (head == null) {
      head = newNode;
    } else {
      ListNode temp = head!;
      while (temp.next != null) {
        temp = temp.next!;
      }
      temp.next = newNode;
    }
  }
  
  
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    List<int> firstNumbers = [];
    List<int> secNumbers = [];
    ListNode? returnNode= ListNode(0);

    ListNode? n1 = l1;
    while(n1 != null){
      firstNumbers.add(n1.val);
      n1 = n1.next;
    }

    ListNode? n2 = l2;
    while(n2 != null){
      secNumbers.add(n2.val);
      n2 = n2.next;
    }

    BigInt ans = BigInt.parse(firstNumbers.reversed.join()) + BigInt.parse(secNumbers.reversed.join());
    List<String> ansList = ans.toString().split('');


    for(int i =0; i<ansList.length; i++ ){
      int index= (ansList.length -1 )-i;
      add(int.parse(ansList[index]));
    }
    return head;
  }
}


void main(){
  ListNode? d= Solution().addTwoNumbers(ListNode(2,ListNode(3,ListNode(4))), ListNode(4));
  List<int> printList = [];
  ListNode? n2 = d;
  while(n2 != null){
    printList.add(n2.val);
    n2 = n2.next;
  }

  print(printList);

}