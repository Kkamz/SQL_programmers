--문제 설명
--ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
--ANIMAL_INS 테이블 구조는 다음과 같으며, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는 
--각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.
--보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
--0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.


WITH RECURSIVE HOUR AS
(
	SELECT 
	  0 AS h 
	UNION ALL
	SELECT 
	  h+1 
	FROM 
	  HOUR 
	WHERE 
	  h<23
)
SELECT 
  h AS HOUR, COALESCE(COUNT(ANIMAL_ID),0) AS COUNT
FROM 
  HOUR LEFT JOIN ANIMAL_OUTS ANI ON HOUR.h = HOUR(ANI.DATETIME)
GROUP BY 
  HOUR.h