import 'dart:io';
import 'package:pdf/widgets.dart' as pw;
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:intl/intl.dart';

class EstadoCuentaExportService {
  
  static Future<void> exportarPDF(dynamic mes) async {
    final pdf = pw.Document();
    final fechaInicio = DateFormat('dd/MM/yyyy').format(mes.fechaInicio!);
    final fechaFin = DateFormat('dd/MM/yyyy').format(mes.fechaFin!);

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text("Estado de Cuenta - ${mes.nombreMes}", style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)),
            pw.Divider(),
            pw.SizedBox(height: 10),
            _itemPdf("Periodo:", "$fechaInicio al $fechaFin"),
            _itemPdf("Saldo Anterior:", "\$${mes.saldoAnterior}"),
            _itemPdf("Total Créditos:", "\$${mes.totalCreditos}"),
            _itemPdf("Total Débitos:", "\$${mes.totalDebitos}"),
            _itemPdf("Saldo Actual:", "\$${mes.saldoActual}"),
            _itemPdf("Saldo Promedio:", "\$${mes.saldoPromedio}"),
          ],
        ),
      ),
    );

    await _guardarYCompartir(await pdf.save(), "${mes.nombreMes}_estado.pdf");
  }

  static Future<void> exportarExcel(dynamic mes) async {
    var excel = Excel.createExcel();
    Sheet sheetObject = excel['Resumen'];
    sheetObject.appendRow([
      TextCellValue('Concepto'), 
      TextCellValue('Detalle')
    ]);
    sheetObject.appendRow([
      TextCellValue('Mes'), 
      TextCellValue(mes.nombreMes)
    ]);
    
    sheetObject.appendRow([
      TextCellValue('Saldo Anterior'), 
      DoubleCellValue(mes.saldoAnterior ?? 0.0)
    ]);

    sheetObject.appendRow([
      TextCellValue('Total Créditos'), 
      DoubleCellValue(mes.totalCreditos ?? 0.0)
    ]);

    sheetObject.appendRow([
      TextCellValue('Total Débitos'), 
      DoubleCellValue(mes.totalDebitos ?? 0.0)
    ]);

    sheetObject.appendRow([
      TextCellValue('Saldo Actual'), 
      DoubleCellValue(mes.saldoActual ?? 0.0)
    ]);

    final bytes = excel.save();
    if (bytes != null) {
      await _guardarYCompartir(bytes, "${mes.nombreMes}_estado.xlsx");
    }
  }

  static Future<void> _guardarYCompartir(List<int> bytes, String fileName) async {
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/$fileName');
    await file.writeAsBytes(bytes);
    await Share.shareXFiles([XFile(file.path)]);
  }

  static pw.Widget _itemPdf(String label, String value) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(vertical: 4),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [pw.Text(label), pw.Text(value)],
      ),
    );
  }
}