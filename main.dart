void main() {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  var maiores20Anos = 0;
  var familias = List<String>();

  for (final paciente in pacientes) {
    final dadosPaciente = paciente.split('|');
    if (int.parse(dadosPaciente[1]) > 20) {
      maiores20Anos++;
    }

    final sobrenome = dadosPaciente[0].split(' ')[1];
    if (!familias.contains(sobrenome)) {
      familias.add(sobrenome);
    }
  }

  print('================================================');
  print(' Quantidade de pacientes com mais de 20 anos: $maiores20Anos');
  print('================================================');

  for (final sobrenomeFamilia in familias) {
    print(' Família: $sobrenomeFamilia');

    final familiares = pacientes.where((p) => p.contains(sobrenomeFamilia)).toList();
    for (final paciente in familiares) {
      print('  ${paciente.split('|')}');
    }

    print('================================================');
  }
}
