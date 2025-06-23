/// 自定义简单的事件总线。

typedef void EventCallback(arg);

class EventBus {
  /* ---------- 单例模式。 ---------- */
  // 私有构造函数。
  EventBus._internal();

  // 保存单例。
  static final EventBus _singleton = EventBus._internal();

  // 工厂模式创建单例。
  factory EventBus() => _singleton;

  /* ---------- 自定义事件总线各方法。 ---------- */
  final _eMap = <Object, List<EventCallback>?>{};

  void on(String eventName, EventCallback f) {
    _eMap[eventName] ??= <EventCallback>[];
    _eMap[eventName]!.add(f);
  }

  void off(String eventName, [EventCallback? f]) {
    var list = _eMap[eventName];
    if (list == null) {
      return;
    }
    if (f == null) {
      _eMap.remove(eventName);
    } else {
      list.remove(f);
    }
  }

  void emit(String eventName, [arg]) {
    var list = _eMap[eventName];
    if (list == null) {
      return;
    }
    var iterator = list.iterator;
    while (iterator.moveNext()) {
      iterator.current(arg);
    }
  }
}

var eventBus = EventBus();
