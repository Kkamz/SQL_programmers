--���� ����
--ANIMAL_INS ���̺��� ���� ��ȣ�ҿ� ���� ������ ������ ���� ���̺��Դϴ�. 
--ANIMAL_INS ���̺� ������ ������ ������, 
--ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE�� 
--���� ������ ���̵�, ���� ��, ��ȣ ������, ��ȣ ���� �� ����, �̸�, ���� �� �߼�ȭ ���θ� ��Ÿ���ϴ�.
--��ȣ�ҿ����� �� �ÿ� �Ծ��� ���� Ȱ���ϰ� �Ͼ���� �˾ƺ��� �մϴ�. 
--0�ú��� 23�ñ���, �� �ð��뺰�� �Ծ��� �� ���̳� �߻��ߴ��� ��ȸ�ϴ� SQL���� �ۼ����ּ���. �̶� ����� �ð��� ������ �����ؾ� �մϴ�.


WITH RECURSIVE HOUR AS
(
	SELECT 
	  0 AS h 
	UNION ALL
	SELECT 
	  h+1 
	FROM 
	  HOUR 
	WHERE 
	  h<23
)
SELECT 
  h AS HOUR, COALESCE(COUNT(ANIMAL_ID),0) AS COUNT
FROM 
  HOUR LEFT JOIN ANIMAL_OUTS ANI ON HOUR.h = HOUR(ANI.DATETIME)
GROUP BY 
  HOUR.h