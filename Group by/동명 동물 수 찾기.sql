--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_INS ���̺� ������ ������ ������, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--���� ��ȣ�ҿ� ���� ���� �̸� �� �� �� �̻� ���� �̸��� �ش� �̸��� ���� Ƚ���� ��ȸ�ϴ� SQL���� �ۼ����ּ���. 
--�̶� ����� �̸��� ���� ������ ���迡�� �����ϸ�, ����� �̸� ������ ��ȸ���ּ���.

SELECT 
  NAME, count(*) as count 
from 
  ANIMAL_INS
where 
  NAME is not null
group by 
  NAME
Having 
  count > 1
order by 
  NAME