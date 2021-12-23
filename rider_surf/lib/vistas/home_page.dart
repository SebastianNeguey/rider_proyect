import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rider_surf/vistas/widgets/menu_widget.dart';

class InputPage extends StatefulWidget {
  static final String routName = 'home';
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<InputPage> {
  String _fecha = '';
  String _textnombre = '';
  String _textapellido = '';
  String _textrut = '';

  TextEditingController _inputFieldDateController = new TextEditingController();
  final isSelected = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Principal')),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
          children: <Widget>[
            Divider(),
            _crearFecha(context),
            Divider(),
            _selectButton(),
            Divider(),
            _selectInstructor(),
            Divider(),
            _nombreInput(),
            Divider(),
            _apellidoInput(),
            Divider(),
            _rutInput(),
          ],
        ),
        drawer: MenuWidget());
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
        enableInteractiveSelection: false,
        controller: _inputFieldDateController,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Seleccionar Fecha',
            labelText: 'Fecha para agendar',
            suffixIcon: Icon(Icons.perm_contact_calendar),
            icon: Icon(Icons.calendar_today)),
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        });
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2025));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  Widget _selectButton() {
    return ToggleButtons(
      color: Colors.black.withOpacity(0.60),
      selectedColor: Color(0xFF6200EE),
      selectedBorderColor: Color(0xFF6200EE),
      fillColor: Color(0xFF6200EE).withOpacity(0.08),
      splashColor: Color(0xFF6200EE).withOpacity(0.12),
      hoverColor: Color(0xFF6200EE).withOpacity(0.04),
      borderRadius: BorderRadius.circular(4.0),
      constraints: BoxConstraints(minHeight: 36.0),
      isSelected: isSelected,
      onPressed: (index) {
        // Respond to button selection
        setState(() {
          for (var i = 0; i < isSelected.length; i++) {
            if (i == index) {
              isSelected[i] = true;
            } else {
              isSelected[i] = false;
            }
          }
        });
      },
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('10:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('11:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('12:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('13:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('14:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('15:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('16:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('17:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('18:00'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('19:00'),
        ),
      ],
    );
  }

  Widget _selectInstructor() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'One',
        'Two',
        'Free',
        'Four',
        'Five',
        'Six',
        'Seven',
        'Nine',
        'Ten',
        'Eleven',
        'Twelve',
        'Trirteen',
        'Fourteen',
        'Fiveteen',
        'Sixteen',
        'Seventeen'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget _nombreInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_textnombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Sólo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
          _textnombre = valor;
        });
      },
    );
  }

  Widget _apellidoInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_textapellido.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Sólo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
          _textapellido = valor;
        });
      },
    );
  }

  Widget _rutInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_textrut.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Sólo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
          _textrut = valor;
        });
      },
    );
  }
}
