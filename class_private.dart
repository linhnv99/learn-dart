class Cat {
  String? _name;

  Cat(name) : this._name = name;

  get getName {
    return this._name;
  }
}

  // * underscore (_name). private means it is accessible in the file it is in and not accessible to other files.
