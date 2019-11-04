# Electonic Engineering

Holy...



## 물리전자

### 3단원

[물리전자 3단원 정리](./물리전자/README.md)


**continuous assignment(연속할당문)**
* assign문을 이용하여 net형(wire) 객체에 스칼라 또는 벡터 형태의 값을 할당
`assign wire x = a;`
`assign wire [3:0] x = b;`

* 우변 수식의 값에 변화(event)가 발생 -> 좌변의 객체에 값의 할당이 일어남

* 조합회로의 모델링에 이용될 수 있음

**Procedural assignment(절차형할당문)**
* always, initial, task, function과 같은 procedure(절차) 내부에서 사용
* 시뮬레이션 실행 흐름이 precedure 내의 할당문에 도달했을 때 할당을 위한 트리거가 발생
* 연속 할당문 : 문장의 실행 (X) 우변 수식의 값 변화 (O)
* 절차 할당문 : 문장의 실행(O) 우변 수식의 값 변화 (X)
* **Blocking 연산자**
	* 우변에 있는 변수값이 좌변으로 전부 넘어가기 전에는 문장을 실행 X
	* ```
		m=~(a|b); // 모든 연산 실행 값이 m에 저장되고
		y=~(m&c); // y로 연산 값이 저장
* **Non-Blocking 연산자**
	* 우변에 뭐가 있든 다음 문장과 같이 실행
	* ```
		m<=~(a|b); // 실행하는 동시에
		y<=~(m&c); // 같이 실행
	* 이전의 변수 m값을 기억할 필요가 있음
