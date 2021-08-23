--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--���� ��ȣ�ҿ� ���� ���� �� �̸��� Lucy, Ella, Pickle, Rogan, Sabrina, Mitty�� ������ ���̵�� �̸�, ���� �� �߼�ȭ ���θ� ��ȸ�ϴ� SQL ���� �ۼ����ּ���.

SELECT 
  ANIMAL_ID, NAME, SEX_UPON_INTAKE from ANIMAL_INS
where 
  NAME in ('Lucy','Ella','Pickle', 'Rogan', 'Sabrina', 'Mitty')
order by 
  ANIMAL_ID