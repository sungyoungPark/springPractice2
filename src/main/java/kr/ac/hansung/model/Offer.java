package kr.ac.hansung.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@Getter
@Setter
@NoArgsConstructor
@ToString

public class Offer {
	
	
	private int id;  
	private int year;
	private int semester;
	
	@Size(min=1, max=100, message="���� �ڵ尡 �߸��Ǿ����ϴ�.")
	private String course_code;
	
	@NotEmpty(message="������� �־��ּ���")
	private String course_name;
	
	@Size(min=1, max=7, message="���� ������ �߸��Ǿ����ϴ�.")
	private String division;
	
	@Range(min=1,max=3)	
	private int credits;
	
}
