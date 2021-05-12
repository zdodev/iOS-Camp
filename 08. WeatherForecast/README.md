# WeatherApp

날씨 API와 통신하는 기능을 구현하였습니다. (UI 미구현)

## 기능

- 현재 위치정보 수집
- 날씨 API를 통해 데이터를 요청하고 받은 데이터 디코딩

## 설계 및 구현

### 날씨 데이터를 받아오기 위한 WeatherCenter 타입 구현

- `func currentWeather(latitude:longitude:completionHandler:)`

위도와 경도를 받아서 현재 날씨를 받아옵니다.

- `func forecastWeather(latitude:longitude:completionHandler:)`

위도와 경도를 받아서 5일 예보 날씨를 받아옵니다.

### CoreLocation을 활용한 현재 위치정보 수집

- `func currentLocationUpdate()`

현재 위치의 위도와 경도를 실제 주소로 변환합니다.