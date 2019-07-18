# Device Fabrication(제작) Technology

**Etching(식각; 새기다)**

**Planar technology** : 회로만들때 차례로 레이어를 쌓는방법 ; 집적도가 높고 가격이 싸다

1. 실리콘을 산화시킴(SiO2)
2. SiO2를 부분적으로 제거
3. **Dopant atom(도핑원자)**을 노출된 실리콘에 섭입
4. 도핑 원자가 실리콘으로 확산됨



## Oxidation

SiO2 : 부도체(배리어)로 사용

**Dry oxidation** : 속도 느림, 얇음 [Si + O*2* = SiO*2*]

**Wet oxidation** : 속도 빠름, 두꺼움 [Si + 2H*2*O(물) = SiO*2* + 2H*2*]



(100)방향 : 적은 Interface Trap, 높은 Electron surface mobility



![1563432071855](.\1563432071855.png)



## Photo Lithography(인쇄)

![1563432296714](.\1563432296714.png)



1. SiO2+Si 된거 위에 **Photoresist(감광액)** 올린다
2.  UV를 원하는 패턴이 그려진 **Photomast**에 통과해 포토리지스트에 쏘면 Positive, Negative 패턴이 새겨짐
3. **HF(에칭가스)**를 이용해 SiO2층을 벗겨냄(패턴에 따라)



## Wet Lithography(Immersion Lithography)

![1563432876623](.\1563432876623.png)



Wet Lithography : 파장이 더 짧아져서 더 정교한 패턴을 넣을 수 잇다.



## Electron Lithograph

* **Photo(Optical) Lithography**  : 마스크를 미리 만들어놓고 존나 찍어내는방법
* 많은 처리량, 좋은 결과,  낮은 비용, 만들기 쉬움
  
* 집적도 한계, 마스크가 비쌈
  
* **E-beam Lithography** : 전자를 하나하나쏴서 정확하게 찍어내는 방법
  * 마스크없이 바로 리소그래프 가능
  * 존나 조금만 가능





## Pattern Transfer-Etching

![1563433607089](.\1563433607089.png)

* Wet etching :  Isotropic(등방성), good selectivity(원하는거만 제거)
* Dry etching : anisotropic(일방성), bad selectivity(다 제거) -> 여기서 멈추라는 가스를 발라줘야함



**Antenna effect** : 플라즈마가 SiO2를 때리는데 너무 쌔게 때려서

​								안테나처럼 SiO2를 넘어서 반도체에 damage를 가하는것



## Doping

**Predeposition ** : 이온을 쏴주는거

(Ion Implantation , Gas-source Doping, Solid-source Diffusion)

**Drive-in** : 쏴준 이온을 원하는 깊이까지 넣어주는것



### [Predeposition] Ion Implantation

![1563445148218](.\1563445148218.png)

Dopant 이온을 쏴주는거

**Anneal(heating)** : Ion Implantation 후처리 과정

* Damage Removal (거친 표면을 매끈하게 만들어서 Trap을 줄여줌)
* Dopant activation (물질이 이온화가 더 잘되게 해줌)

장점

* 온도가 작음

* 재연성이 높음 -> 복구하기 쉬움

* 정교하고 정밀

  

### [Drive-in] Ion Distribution : Gaussian Distribution

![1563446163565](.\1563446163565.png)

**Projected(Implantation) Range(R)** : 이온이 움직인 평균 거리

**Projected(Implantation) Straggle(ΔR)** : 분산, 이온이 퍼져있는 정도

**Lateral Straggle(ΔR*L*)** : 수평분산, 이온이 수평으로 퍼져있는 정도



![1563446459515](.\1563446459515.png)

P(인)을 Si(실리콘)에 도핑시킨 정도를 그래프에 나타낸 것

-> 에너지를 많이 인가할 수록 diffusion은 많이 일어나지만 도핑농도는 낮아진다



## Dopant Diffusion

![1563447003917](.\1563447003917.png)



Dopant Diffusion이 가우스 분포를 그린다!

### Shallow junction and Rapid Thermal Annealing

**Shallow junction**(접합; 성질이 다른 두 영역 간의 경계) : Junction을 좁게 : 고성능 디바이스

**Thermal Annealing** : Ion Implantation 이후 damage를 recover하기 위해 필요

-> **RTP**(Rapid Thermal Processing, **RTA** ; Rapid Thermal Annealing)

​	 : Shallow juntion을 유지하기 위해 빨리 뜨겁게 굽는거





## Thin-Film Deposition(박막 증착 공정)

**Deposition** : 햄버거처럼 차곡차곡 쌓는 공정

![1563449197200](.\1563449197200.png)

* **Crystalline** : 완벽한 주기적 구조 (실리콘 웨이퍼, 다이아몬드)

* **Polycrystalline** : 여러 결정들이 모여있는거 (표면 : grain boundary)

  각각 grain(부분)들에 원자들이 많음 -> Polycrystalline

  Grain Size(10~10,000 nm) 이하면  Single-Crystalline 물질과 똑같은 특성을 가짐

* **Amorphous** : 질서가 없는거 (SiO2, 낮은 온도에서 공정된 Si)



Crystalline : 트랜지스터 성능 high, 캐리어 모빌리티 high

Amorphous, Polycrystalline : 트랜지스터 성능 low, 캐리어 모빌리티 low

-> Thin Film Transistor(디스플레이) 만드는데 적합



### Physical vapor deposition(PVD) 

**Sputtering(펑펑이)**

진공상태 용기안에서 불활성기체(아르곤)을 채워 코팅재료(Target)에 방전시키면

아르곤이 이온화되면서 코팅재료에 충돌하게 되고, 코팅 재료에서 기판에 달라붙어 코팅이 되는 원리

(도체 : DC 전압, 부도체 : RF 전압)

* **Reactive sputtering** : Sputtering + chemical reaction

  질소가 차 있는 용기안에 Ti(티타늄) 타겟으로 아르곤을 쏘면 TiN필름이 생성





![1563455430559](.\1563455430559.png)



그리고 얘들은 다 이어져야함(**Metallization**) ; 보통 알루미늄 사용

**Electromigration** : 방전으로 인해 전자가 Grain Boundary를 따라 움직이는 것 

-> AI 원자가 전자에 의해 밀려서 Void와 Hillock(작은 언덕)이 발생(Al에 Cu를 넣어서 방지)



**Cupper(구리)**

- 알루미늄보다 낮은 저항, 낮은 확산계수(Electromigration 억제)

- Etching이 어려움 // Damascene 공법으로 해결

- Band gap 때문에 Cu가 SiO2를 Diffusion으로 지나가서 회로가 고장날 수 있음

  // Diffusion barrier형성으로 해결

- CMP로 제거



**Planarization** : Flat surface는 언제나 옳다 // optical lithography를 크게 개선시키기 때문

- CMP Planarization : front-end process에서 실행될 수 있음(불순물 침입 여부가 크게 안중요)





### Chemical vapor deposition(CVD)

Sputtering : 방향성이 있어서 단차가 일정하지 못함(bad step coverage)

CVD : gas-phase reaction으로 deposition이 Confomal(등각) 해지는것

* High-temparerature oxide(HTO) : 높은 온도로 입자들이 빨라져서 부분적으로 등각해지는것 - Even

* Low-pressure chemical vapor deposition(LPCVD) : 균일한 두께

* Plasma-enhance chemical vapor deposition(PECVD) : 플라즈마의 전자가 가스에 에너지를 인가

  -> 반응을 키우고 온도를 낮출 수 있음



**In situ doping** : Deposition 될때 dopant가 추가되는것



#### Epitaxy

단결정으로 이루어진 웨이퍼에 얇은 박막결정을 성장시키는것(기판과 같은 구조, 방향성)

![1563453586037](.\1563453586037.png)



* **Homoepitaxy** : lattice-matched epitaxy -> 일정하게 쌓이는거(ideal)

* **Heteroepitaxy** : lattice-mismatched epitaxy, strained(변형된) layer epitaxy

  ​							 -> 불균형하게 쌓이는거

![1563454382222](.\1563454382222.png)

* **superlattice** : a ~ 10a (nm) 두께의 2종 이상의 결정층이 주기적으로 쌓인 결정 구조

  -> 결국 아래쪽은 작고 위쪽은 넓은 구조로 된다

  * strained layer superlattice(SLS) : 두가지 재료를 critical thickness(50nm)이하로 성장시킨것

    너무 얇으면 평균값으로 자라나서(uniform strain)해서 accomodate한다

![1563455257752](.\1563455257752.png)



위에 아무고토 없으면 에피택시가 고대로 자라나고

위에 SiO2층이 있으면 비어있는곳만 자라남



## 총 정리

![1563463889849](.\1563463889849.png)

0. **웨이퍼 제작** : 반도체의 기본재료, Si GaAS를 이용해 디스크모양

1. **Oxidation** : 웨이퍼를 산화시켜 웨이퍼 표면에 산화막(SiO2를 만드는 과정)

   * Dry Oxidation + Wet Oxidation

2. **Lithography** : 웨이퍼 표면에 패턴을 인쇄하는 과정

   * **Photo lithography** : 회로를 그린 Mask를 이용해 웨이퍼 표면에 패턴을 인쇄하는 과정

     * Dry lithography + Wet lithography

     * 1. 웨이퍼 표면에 Photo Resist를 바른다
       2. UV 등의 exposure을 마스크에 통과시킨다(양각/음각)

   * Electron Beam lithography : 전자 하나하나를 때려박아서 패턴을 그리는 방법

3. Oxide **etching** : Photo Resist에 그려진 Pattern대로 웨이퍼 표면을 제거하는 과정

   * **Dry Etching** : Plasma, Ion Beam을 쏴서 에칭 // anIsotropic // good selectivity // end point
   * **Wet Etching** : HF(에칭가스)와 같은 현상액을 이용해 에칭 // Isotropic(등방성) // bad selectivity

4. As **Implantation** : Predeposition, Dopant 물질을 쏴주는거

   * 온도가 작음 / 재연성이 좋음 / 정밀, 정교
   * 높은 에너지로 쏘면 diffusion 증가, concentraition 감소

5. Annealing and diffusion

   * **Annealing** : 열을 가해서 거친 표면을 깎아 Trap을 줄이고 Ionization이 더 잘되게 해줌
     * RTP(RTA) : Shallow Junction을 위해 빠르고 뜨겁게 굽는거
   * **Diffusion** : Drive-in, 가우시안 분포를 따라 퍼지는거
     * Implantation Range : Dopant가 움직인 평균 거리
     * Implantation Straggle : Dopant가 퍼져있는 정도
     * Lateral Straggle : 수평분산, 수평으로 퍼져있는 정도
     * **Shallow Junction** : 접합면을 좁게 만들어야 고성능 디바이스

6. Al **Deposition** : 웨이퍼 위에 전기적 특성을 띄는 물질을 Thin Film에 코팅시키는 방법

   - **PVD(Physical Vapor Deposition)** : **Metalization**에서 사용(금속으로 소자들을 이어주는 과정)

     * **Sputtering Deposition** : 진공용기안에서 아르곤에 전기를주면 Target과 부딪혀 Target의 물질이 웨이퍼에 코팅되는 방법

       * Reactive Sputtering : N안에서 타겟(Ti)으로 아르곤을 쏘면 TiN이 생성되 코팅되는것

     * Electromigration : 방전으로 인해 전자가 Grain Boundary를 따라 움직이는 것

       (알루미늄에 구리를 넣어서 방지)

     * Evaporation, Electron-beam evaporation

   - **CVD(Chemical Vapor Deposition)** : Deposition 재료를 웨이퍼 위에서 화학반응시켜서 떨어뜨리는거

     * PVD(Bad step Coverage; 울퉁불퉁)와 다르게 Conformal(일정)함
     * HTO(Heat), LPCVD(Low Pressure), PECVD(Plasma)
     * In situ doping : CVD공정 중간에도 dopant implantation 가능
     * **Epitaxy** : 코팅된 재료들이 Substrate(기존물질)위에 crystalline layer(결정)을 형성하는거
       * Homoepitaxy : lattice-matched epitaxy(ideal)
       * Heteroepitaxy : lattice-mismatched epitaxy, stained layer epitaxy(변형됨)
       * **superlattice** : 존나 얇은 여러 결정층이 많이 쌓인거
         * strained layer superlattice : 두 재료들이 평균값으로 성장 -> mismatch accomodate(순응)

7. Lithography : 알루미늄 깎기

8. Metal etching : 7번에 그려진 패턴에 따라 메탈 에칭

9. CVD nitride deposition : Encapsulation, 오염으로부터 소자보호

10. Lithography and bonding window etching : 덮은거 리소그래피 + 에칭

11. Removal of oxide from back side of wafer : 뒤에 SiO2부분 에칭

12. Deposition of Au on back side : 뒤에 Au Decomposition

13. Dicing and packaging : 검사 후 패키징

    * **Dicing** : Operating lift test(존나 오래함), Burn-in(높은 온도와 압력)

    * **Packaging** : 
      1. 웨이퍼 상의 칩들을 분리(분리된 칩 : die)
      2. 도선 접착 후(automated wire bonding + solder bump(매칭 패드와 연결 후 녹이는거))
      3. 세라믹 or 메탈 커버로 밀봉

![1563470115690](.\1563470115690.png)