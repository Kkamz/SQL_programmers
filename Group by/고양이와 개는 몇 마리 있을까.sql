--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_INS ���̺� ������ ������ ������, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--���� ��ȣ�ҿ� ���� ���� �� ����̿� ���� ���� �� �������� ��ȸ�ϴ� SQL���� �ۼ����ּ���. �̶� ����̸� ������ ���� ��ȸ���ּ���.

SELECT 
  ANIMAL_TYPE, count(*) as count 
from 
  ANIMAL_INS
group by 
  ANIMAL_TYPE
order by 
  ANIMAL_TYPE