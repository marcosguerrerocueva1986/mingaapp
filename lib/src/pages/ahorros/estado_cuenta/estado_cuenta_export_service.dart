import 'dart:io';
import 'package:get_storage/get_storage.dart';
import 'package:pdf/pdf.dart';
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
    build: (pw.Context context) {
      return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start, 
        children: [
            pw.Center(
              child: pw.Column(
                  children: [
                  pw.Text(
                    "COOPERATIVA DE AHORRO Y CREDITO MINGA LTDA",
                    style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.Text(
                    "ESTADO DE CUENTA",
                    style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            _filaInfoPdf("Cliente:", "${mes.nombreCliente}"),
            _filaInfoPdf("Cuenta:", "${mes.numeroCuenta}"),
            _filaInfoPdf("Tipo Cuenta:", "${mes.tipoCuenta}"),
            pw.SizedBox(height: 20),
            pw.SizedBox(height: 15),
            pw.Divider(thickness: 0.5, borderStyle: pw.BorderStyle.dashed),
            pw.SizedBox(height: 20),
            pw.Text("Estado de Cuenta - ${mes.nombreMes}", 
              style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)
            ),
            pw.SizedBox(height: 10),
            _itemPdf("Fecha Inicio:", fechaInicio),
            pw.SizedBox(height: 5),
            _itemPdf("Fecha Fin:", fechaFin),
            pw.SizedBox(height: 5),
            pw.Divider(borderStyle: pw.BorderStyle.dashed),
            pw.SizedBox(height: 5),
            _itemPdf("Saldo Anterior:", "\$${mes.saldoAnterior}"),
            pw.SizedBox(height: 5),
            _itemPdf("Total Créditos:", "\$${mes.totalCreditos}"),
            pw.SizedBox(height: 5),
            _itemPdf("Total Débitos:", "\$${mes.totalDebitos}"),
            pw.SizedBox(height: 5),
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(vertical: 10),
              child: pw.Container(
                padding: const pw.EdgeInsets.all(10),
                decoration: const pw.BoxDecoration(color: PdfColors.grey100),
                child: _itemPdf("Saldo Actual:", "\$${mes.saldoActual}"),
              ),
            ),
            _itemPdf("Saldo Promedio:", "\$${mes.saldoPromedio}"),
          ],
        );
      },
    ),
  );

  await _guardarYCompartir(await pdf.save(), "${mes.nombreMes}_estado.pdf");
}
static pw.Widget _filaInfoPdf(String etiqueta, String valor) {
  return pw.Padding(
    padding: const pw.EdgeInsets.symmetric(vertical: 1),
    child: pw.Row(
      children: [
        pw.SizedBox(
          width: 80, 
          child: pw.Text(
            etiqueta,
            style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10),
          ),
        ),
        pw.Text(
          valor,
          style: const pw.TextStyle(fontSize: 10),
        ),
      ],
    ),
  );
}
  static Future<void> exportarExcel(dynamic mes) async {
    var excel = Excel.createExcel();
    Sheet sheetObject = excel['Resumen'];
    CellStyle tituloStyle = CellStyle(
      bold: true,
      fontSize: 14,
      horizontalAlign: HorizontalAlign.Center,
    );
    CellStyle labelStyle = CellStyle(
      bold: true,
      fontSize: 10,
    );
    sheetObject.merge(CellIndex.indexByString("A1"), CellIndex.indexByString("B1"));
    var cellTitulo = sheetObject.cell(CellIndex.indexByString("A1"));
    cellTitulo.value = TextCellValue('COOPERATIVA DE AHORRO Y CREDITO MINGA LTDA');
    cellTitulo.cellStyle = tituloStyle;

    sheetObject.merge(CellIndex.indexByString("A2"), CellIndex.indexByString("B2"));
    var cellSubtitulo = sheetObject.cell(CellIndex.indexByString("A2"));
    cellSubtitulo.value = TextCellValue('ESTADO DE CUENTA');
    cellSubtitulo.cellStyle = tituloStyle;

    sheetObject.appendRow([TextCellValue('')]);
    _appendRowExcel(sheetObject, 'Cliente:', mes.nombreCliente ?? '', labelStyle);
    _appendRowExcel(sheetObject, 'Cuenta:', mes.numeroCuenta ?? '', labelStyle);
    _appendRowExcel(sheetObject, 'Tipo Cuenta:', mes.tipoCuenta ?? '', labelStyle);
    sheetObject.appendRow([TextCellValue('')]);

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
  static void _appendRowExcel(Sheet sheet, String label, String value, CellStyle style) {
    sheet.appendRow([TextCellValue(label), TextCellValue(value)]);
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: sheet.maxRows - 1)).cellStyle = style;
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