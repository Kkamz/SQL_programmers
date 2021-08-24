--문제 설명
--ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
--ANIMAL_INS 테이블 구조는 다음과 같으며, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는 
--각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.
--보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
--09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.


SELECT 
  hour(DATETIME) as HOUR, count(*) as count 
from 
  ANIMAL_OUTS
where 
  9 <= hour(DATETIME) and hour(DATETIME)<=19
group by 
  HOUR
order by 
  HOUR