--�Ծ� �Խ��ǿ� ���� ������ �Խ��Ϸ� �մϴ�. ������ ���� ��, �̸�, ���� �� �߼�ȭ ���θ� ���̵� ������ ��ȸ�ϴ� SQL���� �ۼ����ּ���. 
--�̶� ���α׷����� �𸣴� ������� NULL�̶�� ��ȣ�� �𸣱� ������, �̸��� ���� ������ �̸��� "No name"���� ǥ���� �ּ���.

SELECT ANIMAL_TYPE, ifnull(NAME,'No name'), SEX_UPON_INTAKE 
from ANIMAL_INS
order by ANIMAL_ID