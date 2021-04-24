library journals;

class JournalEntry {
  late String _title;
  late String _plant;
  late int _age;
  late int _height;
  late bool _wasWatered;
  late bool _wasTrained;
  late bool _isFlowering;

  JournalEntry(){
    this._title       = '';
    this._plant       = '';
    this._age         = 0;
    this._height      = 0;
    this._isFlowering = false;
    this._wasTrained  = false;
    this._wasWatered  = false;
  }

  JournalEntry.full(String title, String plant, int age, int height, bool isFlowering, bool wasTrained, bool wasWatered) {
    this._title       = _title;
    this._plant       = _plant;
    this._age         = _age;
    this._height      = _height;
    this._isFlowering = _wasWatered;
    this._wasTrained  = _wasTrained;
    this._wasWatered  = _isFlowering;
  }
}