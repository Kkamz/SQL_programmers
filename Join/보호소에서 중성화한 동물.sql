--문제 설명
--ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는 
--각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.
--ANIMAL_OUTS 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다.
--ANIMAL_OUTS 테이블의 ANIMAL_ID는 ANIMAL_INS의 ANIMAL_ID의 외래 키입니다.
--보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다. 
--보호소에 들어올 당시에는 중성화1되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회하는 SQL 문을 작성해주세요.

SELECT 
  AI.ANIMAL_ID, AI.ANIMAL_TYPE, AI.NAME
from 
  ANIMAL_INS as AI left outer join ANIMAL_OUTS as AO on AI.ANIMAL_ID = AO.ANIMAL_ID
where 
  AI.SEX_UPON_INTAKE like '%Intact%' and (AO.SEX_UPON_OUTCOME like '%Spayed%' or AO.SEX_UPON_OUTCOME like '%Neutered%' )
order by 
  AI.ANIMAL_ID