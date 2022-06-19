## AssetBundle 



### DefaultBundle

> 하위 항목에 대한 기본 자신 번들을 결정하는 위젯!

(명시적으로 지정하지 않은 경우 AssetImages에 사용할 변들을 결장하기 위해 Image에서 사용됌)

example)

DefaultAssetBundle.of를 사용하여 AssetBundle을 가정하면
이제 TestAssetBundle의 "Hello world!"가 표시되옵나이다 (리소스 / 테스트를 요청할 때)


---

### AssetBundle Class

> 어플리케이션에서 사용하는 리소스 모임

assetbundle들은 어플리케이션에서 사용할 수 있는 이미지 및 문자열과 같은 리소스를 포함 => 리소스에 대한 어플리케이션의 사용자 인터페이스를 차단하지 않고 네트워크(NetworkAssetBundle) 또는 로컬 파일 시스템에서 투명하게 로드할 수 있음.

어플리케이션 프로그램에는 빌드될 때 응용 프로그램과 함께 패키지된 리소스가 포함된 rootBundle이 있음 / 어플리케이션의 루트번들에 리소스를 추가하려면 어플리케이션의 pubspect.yaml에서 asset 추가

---

### NetworkAssetBundle

> 네트워크를 통해 리소스를 로드하는 assetBundle

asset bundle은 리소스를 캐시하진 않지만 기본네트워크 stack은 자체적으로 일정 수준의 캐시를 구현할 수 있음

```dart
var baseUrl = Uri(
    scheme: 'https',
    host: 'dart.dev',
    path: '/guides/libraries/library-tour',
    fragment: 'numbers');
NetworkAssetBundle(Uri baseUrl)
```

