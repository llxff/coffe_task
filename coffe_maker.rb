module CoffeeMaker

  WarmerPlateStatus = [:WARMER_EMPTY, :POT_EMPTY, :POT_NOT_EMPTY]
  BoilerStatus = [:EMPTY, :NOT_EMPTY] 
  BrewButtonStatus= [ :PUSHED, :NOT_PUSHED ]
  BoilerState = [:ON, :OFF]
  WarmerState = [:ON, :OFF]
  IndicatorState = [:ON, :OFF]
  ReliefValveState = [:OPEN, :CLOSED]


  class CoffeeMakerAPI

    # Эта функция возвращает состояние датчика нагревательной
    # подставки. Датчик определяет, есть ли на подставке кофейник
    # и есть ли в нем кофе.
    # return WarmerPlateStatus
    def GetWarmerPlateStatus; end


    # Эта функция возвращает состояние переключателя кипятильника.
    # Это поплавковый переключатель, который определяет, осталось
    # ли в кипятильнике воды больше, чем на половину чашки.
    # return BoilerStatus
    def GetBoilerStatus; end

    # Эта функция возвращает состояние кнопки «Сварить».
    # Это кнопка без фиксации, которая запоминает свое состояние.
    # При каждом обращении данная функция возвращает
    # запомненное состояние,после чего сбрасывает его
    # в NOT_PUSHED (не нажата).
    #
    # Таким образом, даже если интервалы между вызовами
    # функции очень велики, она все равно распознает,
    # что кнопка «Сварить» нажата.
    # return BrewButtonStatus
    def GetBrewButtonStatus; end

    # Эта функция включает или выключает
    # нагревательный элемент кипятильника.

    def SetBoilerState(boiler_state); end

    # Эта функция включает или выключает
    # нагревательный элемент подставки.
    # return nil

    def SetWarmerState(warmer_state); end


    # Эта функция включает или выключает световой индикатор.
    # Индикатор должен загораться по завершении процесса варки
    # и гаснуть, когда пользователь нажимает кнопку «Сварить».
    # return nil
    def SetIndicatorState(indicator_state); end

    # Эта функция открывает или закрывает клапан сброса давления.
    # Если клапан закрыт, то давление пара в кипятильнике подает
    # горячую воду в кофейный фильтр. Если клапан открыт, то пар
    # выходит из кипятильника наружу, так что вода не подается
    # в фильтр.
    # return nil

    def SetReliefValveState(relief_valve_state); end
  end
end