--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--ANIMAL_OUTS ���̺��� ���� ��ȣ�ҿ��� �Ծ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME�� ���� ������ ���̵�, ���� ��, �Ծ���, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--ANIMAL_OUTS ���̺��� ANIMAL_ID�� ANIMAL_INS�� ANIMAL_ID�� �ܷ� Ű�Դϴ�.
--õ���������� ���� �Ϻ� �����Ͱ� ���ǵǾ����ϴ�. �Ծ��� �� ����� �ִµ�, ��ȣ�ҿ� ���� ����� ���� ������ ID�� �̸��� ID ������ ��ȸ�ϴ� SQL���� �ۼ����ּ���.


SELECT 
  OUTS.ANIMAL_ID, OUTS.NAME
FROM 
  ANIMAL_OUTS as OUTS LEFT OUTER JOIN ANIMAL_INS as INS ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE 
  INS.ANIMAL_ID is NULL
ORDER BY 
  OUTS.ANIMAL_ID