--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_INS ���̺� ������ ������ ������, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--ANIMAL_INS ���̺� ��ϵ� ��� ���ڵ忡 ����, �� ������ ���̵�� �̸�, ���� ��¥1�� ��ȸ�ϴ� SQL���� �ۼ����ּ���. �̶� ����� ���̵� ������ ��ȸ�ؾ� �մϴ�.

SELECT 
  ANIMAL_ID, NAME, DATE_FORMAT(DATETIME, '%Y-%m-%d') as ��¥ 
from 
  ANIMAL_INS