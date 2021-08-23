--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--��ȣ���� ������ �߼�ȭ�Ǿ����� �ƴ��� �ľ��Ϸ� �մϴ�. 
--�߼�ȭ�� ������ SEX_UPON_INTAKE �÷��� 'Neutered' �Ǵ� 'Spayed'��� �ܾ ����ֽ��ϴ�. ������ ���̵�� �̸�, �߼�ȭ ���θ� ���̵� ������ ��ȸ�ϴ� SQL���� �ۼ����ּ���. 
--�̶� �߼�ȭ�� �Ǿ��ִٸ� 'O', �ƴ϶�� 'X'��� ǥ�����ּ���.

SELECT 
  ANIMAL_ID, NAME, 
    (case when SEX_UPON_INTAKE like "%Neutered%" then "O"
    when SEX_UPON_INTAKE like "%Spayed%" then "O"
    else "X"
    END) as �߼�ȭ 
from 
  ANIMAL_INS
order by 
  ANIMAL_ID