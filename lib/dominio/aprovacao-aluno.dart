import 'package:principal/dominio/dto/aprovacao-aluno-dto.dart';
import 'package:principal/dominio/dto/resultado-dto.dart';

class AprovacaoAluno {
  late double nota;
  late double nota2;
  late int faltas;
  late int totalAulas;

  AprovacaoAluno(AprovacaoAlunoDTO aprovacaoAlunoDTO) {
    this.nota = aprovacaoAlunoDTO.nota;
    this.nota2 = aprovacaoAlunoDTO.nota2;
    this.faltas = aprovacaoAlunoDTO.faltas;
    this.totalAulas = aprovacaoAlunoDTO.totalAulas;
  }

  ResultadoDto verificaAprovacaoFinal(AprovacaoAlunoDTO aprovacaoAluno) {
    bool nota =
        verificaAprovacaoNota(aprovacaoAluno.nota, aprovacaoAluno.nota2);
    bool falta = verificaAprovacaoPresenca(faltas, totalAulas);
    if (!nota && !falta) {
      return ResultadoDto(resultado: "Reprovado");
    }

    return ResultadoDto(resultado: "Aprovado");
  }

  bool verificaAprovacaoNota(double nota, double nota2) {
    return ((nota + nota2) / 2 >= 6);
  }

  bool verificaAprovacaoPresenca(int faltas, int totalAulas) {
    return ((100 * faltas / totalAulas) >= 25);
  }
}
