--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_INS ���̺� ������ ������ ������, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--���� ��ȣ�ҿ� ���� ��� ������ �̸��� ��ȣ �������� ��ȸ�ϴ� SQL���� �ۼ����ּ���. 
--�̶� ����� ANIMAL_ID �������� �����ּ���. 
--SQL�� �����ϸ� ������ ���� ��µǾ�� �մϴ�.

SELECT NAME, DATETIME from ANIMAL_INS
order by ANIMAL_ID desc