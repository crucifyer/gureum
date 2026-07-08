![platform](https://img.shields.io/badge/platform-macos-lightgrey)

# 구름 입력기 cli 도구

[구름 입력기](https://github.com/gureum/gureum) 에 cli 로 한/영 전환 신호를 주는 패치를 하여 본인사용 전용 릴리즈 빌드를 하기 위한 저장소 입니다.

버전번호는 변경하지 않고, 자동 업데이트 확인 기능을 삭제했습니다.

개인 변경 버전이므로 버그 보고 기능도 껐습니다.

cli 의 활용을 위해 karabiner-elements 를 설정해야 합니다. [gureum-karabiner](https://github.com/crucifyer/gureum-karabiner)

## 빌드 방법

[Xcode](https://apps.apple.com/kr/app/xcode/id497799835?mt=12), [homebrew](https://brew.sh/) 설치

Xcode 는 한번 실행해야 완전히 설치됩니다.

```bash
# ruby 설치
brew install ruby
echo 'export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/4.0.0/bin:$PATH"' >> ~/.zprofile
source ~/.zprofile
# 저장소 복제
git clone https://github.com/crucifyer/gureum.git
cd gureum
# 환경 설치
make init
# 빌드 및 설치
./local-build.sh
```

재부팅을 하면 시스템 설정 > 키보드 > 입력 소스 > 편집 에서 구름 입력기를 추가할 수 있습니다.

이후는 [gureum-karabiner](https://github.com/crucifyer/gureum-karabiner) 에서 설정하세요.