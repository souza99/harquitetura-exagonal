import 'package:principal/dominio/aprovacao-aluno.dart';
import 'package:principal/dominio/dto/resultado-dto.dart';
import 'package:principal/dominio/dto/aprovacao-aluno-dto.dart';
import 'package:principal/dominio/porta-entrada/aprovacaoInterface.dart';

class RecebeDados implements AprovacaoInterface {
  @override
  ResultadoDto verificaAprovacao(AprovacaoAlunoDTO aprovacaoAlunoDTO) {
    return AprovacaoAluno(aprovacaoAlunoDTO)
        .verificaAprovacaoFinal(aprovacaoAlunoDTO);
  }
}

void main(List<String> args) {
  AprovacaoAlunoDTO aprovacaoAlunoDTO =
      AprovacaoAlunoDTO(nota: 3, nota2: 6, faltas: 10, totalAulas: 80);
  print(RecebeDados().verificaAprovacao(aprovacaoAlunoDTO).resultado);
}
