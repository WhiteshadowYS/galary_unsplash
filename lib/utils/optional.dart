class Optional<T> {
  final T _value;

  Optional(T value) : this._value = value;

  T get value => _value;
}
