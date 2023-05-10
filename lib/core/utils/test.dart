class Member {
  final int id;
  final String name;
  double balance;

  Member(this.id, this.name, this.balance);
}

class Ticket {
  final String source;
  final String destination;
  final double distance;

  Ticket(this.source, this.destination, this.distance);
}

class Admin {
  void updateBalance(Member member, double amount) {
    double newBalance = member.balance + amount;
    member.balance = newBalance;
  }
}

class Ticketing {
  List<Member> members = [];
  List<Ticket> tickets = [];
  UniqueId uniqueId = UniqueId();
  Account account = Account();

  void registerMember(String name, double balance) {
    int id = uniqueId.generateId();
    Member member = Member(id, name, balance);
    members.add(member);
    print('Member $name registered with ID $id');
  }

  Member? getMemberById(int id) {
    for (Member member in members) {
      if (member.id == id) {
        return member;
      }
    }
    return null;
  }

  void bookTicket(int memberId, String source, String destination) {
    Member? member = getMemberById(memberId);
    if (member == null) {
      print('Member with ID $memberId not found');
      return;
    }
    double distance = calculateDistance(source, destination);
    Ticket ticket = Ticket(source, destination, distance);
    tickets.add(ticket);
    double fare = calculateFare(distance);
    if (member.balance < fare) {
      print('Insufficient balance');
      return;
    }
    member.balance -= fare;
    account.update(member, fare);
    print('Ticket booked for ${member.name} from $source to $destination');
  }

  double calculateDistance(String source, String destination) {
    // Code to calculate distance between stations goes here
    return 10.0;
  }

  double calculateFare(double distance) {
    // Code to calculate fare based on distance goes here
    return 50.0;
  }
}

class UniqueId {
  int currentId = 1000;

  int generateId() {
    currentId++;
    return currentId;
  }
}

class Account {
  void update(Member member, double amount) {
    // Code to update account balance goes here
    print('Account balance updated for ${member.name}');
  }
}

void main() {
  Ticketing ticketing = Ticketing();
  ticketing.registerMember('John', 100.0);
  ticketing.registerMember('Alice', 50.0);
  ticketing.bookTicket(1001, 'Station A', 'Station B');
  ticketing.bookTicket(1002, 'Station B', 'Station C');
  Admin admin = Admin();
  admin.updateBalance(ticketing.getMemberById(1001)!, 20.0);
  admin.updateBalance(ticketing.getMemberById(1002)!, 30.0);
}
