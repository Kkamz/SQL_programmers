--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--ANIMAL_OUTS ���̺��� ���� ��ȣ�ҿ��� �Ծ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME�� ���� ������ ���̵�, ���� ��, �Ծ���, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--ANIMAL_OUTS ���̺��� ANIMAL_ID�� ANIMAL_INS�� ANIMAL_ID�� �ܷ� Ű�Դϴ�.
--��ȣ�ҿ��� �߼�ȭ ������ ��ģ ���� ������ �˾ƺ��� �մϴ�. 
--��ȣ�ҿ� ���� ��ÿ��� �߼�ȭ1���� �ʾ�����, ��ȣ�Ҹ� ���� ��ÿ��� �߼�ȭ�� ������ ���̵�� ���� ��, �̸��� ��ȸ�ϴ� ���̵� ������ ��ȸ�ϴ� SQL ���� �ۼ����ּ���.

SELECT 
  AI.ANIMAL_ID, AI.ANIMAL_TYPE, AI.NAME
from 
  ANIMAL_INS as AI left outer join ANIMAL_OUTS as AO on AI.ANIMAL_ID = AO.ANIMAL_ID
where 
  AI.SEX_UPON_INTAKE like '%Intact%' and (AO.SEX_UPON_OUTCOME like '%Spayed%' or AO.SEX_UPON_OUTCOME like '%Neutered%' )
order by 
  AI.ANIMAL_ID