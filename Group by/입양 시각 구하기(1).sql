--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_INS ���̺� ������ ������ ������, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--��ȣ�ҿ����� �� �ÿ� �Ծ��� ���� Ȱ���ϰ� �Ͼ���� �˾ƺ��� �մϴ�. 
--09:00���� 19:59����, �� �ð��뺰�� �Ծ��� �� ���̳� �߻��ߴ��� ��ȸ�ϴ� SQL���� �ۼ����ּ���. �̶� ����� �ð��� ������ �����ؾ� �մϴ�.


SELECT 
  hour(DATETIME) as HOUR, count(*) as count 
from 
  ANIMAL_OUTS
where 
  9 <= hour(DATETIME) and hour(DATETIME)<=19
group by 
  HOUR
order by 
  HOUR