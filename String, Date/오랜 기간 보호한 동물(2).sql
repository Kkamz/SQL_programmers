--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_INS ���̺� ������ ������ ������, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--ANIMAL_OUTS ���̺��� ���� ��ȣ�ҿ��� �Ծ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_OUTS ���̺� ������ ������ ������, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME�� 
--���� ������ ���̵�, ���� ��, �Ծ���, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�. ANIMAL_OUTS ���̺��� ANIMAL_ID�� ANIMAL_INS�� ANIMAL_ID�� �ܷ� Ű�Դϴ�.
--�Ծ��� �� ���� ��, ��ȣ �Ⱓ�� ���� ����� ���� �� ������ ���̵�� �̸��� ��ȸ�ϴ� SQL���� �ۼ����ּ���. �̶� ����� ��ȣ �Ⱓ�� �� ������ ��ȸ�ؾ� �մϴ�.


SELECT 
  INS.ANIMAL_ID, INS.NAME
from 
  ANIMAL_INS AS INS left JOIN ANIMAL_OUTS as OUTS on INS.ANIMAL_ID = OUTS.ANIMAL_ID
where 
  OUTS.DATETIME is not null
order by 
  OUTS.DATETIME - INS.DATETIME DESC limit 2