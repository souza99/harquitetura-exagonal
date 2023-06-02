import 'package:principal/dominio/dto/aprovacao-aluno-dto.dart';
import 'package:principal/dominio/dto/resultado-dto.dart';

abstract class AprovacaoInterface {
  ResultadoDto verificaAprovacao(AprovacaoAlunoDTO aprovacaoAlunoDTO);
}
