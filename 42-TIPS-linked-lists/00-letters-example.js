<script>
class ListNode {
  constructor(data, next=null) {
    this.data = data
    this.next = next
  }
}

let a = new ListNode('A')
let b = new ListNode('B')
let c = new ListNode('C')
let d = new ListNode('D')
let e = new ListNode('E')

let front = a
a.next = b
b.next = c
c.next = d
d.next = e

console.log(front)
</script>
