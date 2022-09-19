class Contact{
  final String name;
  final int? accountNumber;

  Contact(this.name, this.accountNumber);

  String toString() {
    return '${name} - ${accountNumber}';
  }
}