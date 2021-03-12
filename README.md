# recycle_dialog

기능 요구사항 
 - WidgetA 화면에서 DialogB를 열고 DialogB의 설정(입력)되고 DialogB 에서 새로운 WidgetC 페이지를 열수 있으며 새로움 WidgetC에서는 DialogB를 다시 열어서 이전에 입력된 데이터를 수정 할수 있어야 한다.
 - WidgetC에서 열어서 편집한 DialogB에 입력된 데이터는 WidgetC를 닫아도 WidgetA 화면에 떠있던 DialogB에는 수정된 데이터가 반영되어있어야 한다.



## 개발 
데이터가 공유되면 되기때문에 상태관리로 처리하기로 정함.
상태관리는 대표적으로 provider와 Getx가 있기때문에 둘다 구현함.

- Provider 환경에서 적용된 소스 feature/provider 브런치에서 확인 할 수 있다.
- Getx 환경에서 적용된 소스 feature/getx 브런치에서 확인 할 수 있다.

