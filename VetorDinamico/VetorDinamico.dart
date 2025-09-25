class VetorDinamico<T> {
  late List<T?> _elementos;
  int _tamanho = 0;

  VetorDinamico([int capacidadeInicial = 4]) {
    // final significa que que só pode atribuir valor uma única vez.
    final capacidadeReal = capacidadeInicial < 1 ? 1 : capacidadeInicial;
    //inicializa o vetor com null.
    _elementos = List.filled(capacidadeReal, null);
  }

  void _validarIndice(int indice, {bool paraInsercao = false}) {
    final limite = paraInsercao ? _tamanho : _tamanho - 1;

    if (indice < 0 || indice > limite || (limite < 0 && indice == 0)) {
      throw RangeError.index(indice, this, 'índice inválido');
    }
  }

  T operator [](int indice) {
    _validarIndice(indice);
    return _elementos[indice] as T;
  }

  void operator []=(int indice, T valor) {
    _validarIndice(indice);
    _elementos[indice] = valor;
  }

  void _garantirCapacidade(int capacidadeMinima) {
    if (_elementos.length >= capacidadeMinima) {
      return;
    }
    int novaCapacidade = _elementos.length * 2;

    if (novaCapacidade < capacidadeMinima) {
      novaCapacidade = capacidadeMinima;
    }
    //cria uma nova list maior
    final novaLista = List<T?>.filled(novaCapacidade, null);

    //copia todos os dados da lista antiga para a nova
    for (int i = 0; i < _tamanho; i++) {
      novaLista[i] = _elementos[i];
    }
    //substitui a lista antiga pela nova
    _elementos = novaLista;
  }

  //adiciona no final da lista
  void adicionar(T valor) {
    //verifica se tem espaço para mais um elemento na lista
    _garantirCapacidade(_tamanho + 1);
    //adicionar novo elemento na lista
    _elementos[_tamanho] = valor;
    //incrementa contador
    _tamanho++;
  }

  void inserir(int indice, T valor) {
    _validarIndice(indice, paraInsercao: true);

    _garantirCapacidade(_tamanho + 1);

    for (int i = _tamanho; i > indice; i--) {
      _elementos[i] = _elementos[i - 1];
    }
    _elementos[indice] = valor;
    _tamanho++;
  }

  T removerEm(int indice) {
    _validarIndice(indice);

    final valorRemovido = _elementos[indice] as T;

    for (int i = indice; i < _tamanho - 1; i++) {
      _elementos[i] = _elementos[i + 1];
    }
    _tamanho--;

    _elementos[_tamanho] = null;

    return valorRemovido;
  }

  void limpar() {
    // Apenas resetamos o contador. A capacidade alocada é mantida.
    for (int i = 0; i < _tamanho; i++) {
      _elementos[i] = null;
    }
    _tamanho = 0;
  }

  int indiceDe(T valor) {
    // Percorre apenas os elementos válidos.
    for (int i = 0; i < _tamanho; i++) {
      if (_elementos[i] == valor) {
        return i; // Encontrou, retorna a posição.
      }
    }
    return -1; // Não encontrou.
  }

  bool contem(T valor) {
    return indiceDe(valor) != -1;
  }

  @override // Sobrescrevendo o método padrão do Dart
  String toString() {
    if (_tamanho == 0) {
      return '[]';
    }

    final buffer = StringBuffer();
    buffer.write('[');
    for (int i = 0; i < _tamanho - 1; i++) {
      buffer.write('${_elementos[i]}, ');
    }
    buffer.write('${_elementos[_tamanho - 1]}]');
    return buffer.toString();
  }

  //Retorna a quantidade o número de elementos no List
  int tamanho() {
    return _tamanho;
  }

  //Se o List estiver vazio retorna um true
  bool estaVazio() {
    return _tamanho == 0;
  }

  //Conta o tamanho total da lista
  int capacidade() {
    return _elementos.length;
  }
}
