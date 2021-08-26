--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--ANIMAL_OUTS ���̺��� ���� ��ȣ�ҿ��� �Ծ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME�� ���� ������ ���̵�, ���� ��, �Ծ���, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--ANIMAL_OUTS ���̺��� ANIMAL_ID�� ANIMAL_INS�� ANIMAL_ID�� �ܷ� Ű�Դϴ�.
--�������� �Ǽ��� �Ϻ� ������ �Ծ����� �߸� �ԷµǾ����ϴ�. 
--��ȣ �����Ϻ��� �Ծ����� �� ���� ������ ���̵�� �̸��� ��ȸ�ϴ� SQL���� �ۼ����ּ���. �̶� ����� ��ȣ �������� ���� ������ ��ȸ�ؾ��մϴ�.


SELECT 
  INS.ANIMAL_ID , INS.NAME 
From 
  ANIMAL_INS as INS inner join ANIMAL_OUTS as OUTS on INS.ANIMAL_ID = OUTS.ANIMAL_ID
where 
  INS.DATETIME > OUTS.DATETIME
order by 
  INS.DATETIME