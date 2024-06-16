final List<String> keywords = [
  'quem e voce',
  'Para que serve este projeto',
  'E o Galo',
  'Desculpe'
];

final List<String> responses = [
  'Eu sou um bot criado para um trabalho da UC de UWMJ 2024-1 da universidade de Belo Horizonte - Estoril',
  'Trabalho final da parte de mobile que é ministrada pelo professor Marco Calijorne com o intuito de demonstrar as habilidades aprendidas durante o curso.',
  'Galo Ganhou!',
  'Sem problemas, Desculpado'
];


String getResponse(String input) {
  input = input.toLowerCase();

  for (int i = 0; i < keywords.length; i++) {
    if (input.contains(keywords[i].toLowerCase())) {
      return responses[i];
    }
  }
  
  return 'Desculpe, não entendi sua pergunta.';
}