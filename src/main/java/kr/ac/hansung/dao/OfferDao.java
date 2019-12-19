package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Offer;

@Repository
public class OfferDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource datasource) {
		jdbcTemplate = new JdbcTemplate(datasource);
	}

	public int getRowCount() {

		String sqlStatement = "select count(*) from offers";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}

	// query and return a multiple object
	public Offer getOffer(String name) {

		String sqlStatement = "select * from offers where name=? "; // placeholder

		return jdbcTemplate.queryForObject(sqlStatement, new Object[] { name }, new RowMapper<Offer>() {

			@Override
			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {

				Offer offer = new Offer();
				offer.setId(rs.getInt("id"));
				offer.setYear(rs.getInt("year"));
				offer.setSemester(rs.getInt("semester"));
				offer.setCourse_code(rs.getString("course_code"));
				offer.setCourse_name(rs.getString("course_name"));
				offer.setDivision(rs.getString("division"));
				offer.setCredits(rs.getInt("credits"));

				return offer;
			}

		});
	}

	// query and return a multiple object
	public List<Offer> getOffers() {

		String sqlStatement = "select * from offers "; // placeholder
		return jdbcTemplate.query(sqlStatement, new RowMapper<Offer>() {

			@Override
			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offer offer = new Offer();
				offer.setId(rs.getInt("id"));
				offer.setYear(rs.getInt("year"));
				offer.setSemester(rs.getInt("semester"));
				offer.setCourse_code(rs.getString("course_code"));
				offer.setCourse_name(rs.getString("course_name"));
				offer.setDivision(rs.getString("division"));
				offer.setCredits(rs.getInt("credits"));

				return offer;
			}

		});

	}

	public List<Offer> getOffer(String year, String semester) {

		String sqlStatement = "select * from offers where year=" + year + "&& semester = " + semester; // placeholder
		return jdbcTemplate.query(sqlStatement, new RowMapper<Offer>() {

			@Override
			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offer offer = new Offer();
				// offer.setId(rs.getInt("id"));
				offer.setYear(rs.getInt("year"));
				offer.setSemester(rs.getInt("semester"));
				offer.setCourse_code(rs.getString("course_code"));
				offer.setCourse_name(rs.getString("course_name"));
				offer.setDivision(rs.getString("division"));
				offer.setCredits(rs.getInt("credits"));

				return offer;
			}

		});

	}

	public List<Offer> getFirstOffers() {

		String sqlStatement = "select year, semester ,sum(credits) "
				+ "from offers group by year, semester "
				+ "having year <= date_format(now(),'%Y')"; // placeholder  현재 년도보다 작은 년도에 수강신청 기록만 갖고옴.
		return jdbcTemplate.query(sqlStatement, new RowMapper<Offer>() {

			@Override
			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offer offer = new Offer();
				// offer.setId(rs.getInt("id"));
				offer.setYear(rs.getInt("year"));
				offer.setSemester(rs.getInt("semester"));
				// offer.setCourse_code(rs.getString("course_code"));
				// offer.setCourse_name(rs.getString("course_name"));
				// offer.setDivision(rs.getString("division"));
				offer.setCredits(rs.getInt("sum(credits)"));

				return offer;
			}

		});

	}

	public boolean insert(Offer offer) {

		int year = offer.getYear();
		int semester = offer.getSemester();
		String course_code = offer.getCourse_code();
		String course_name = offer.getCourse_name();
		String division = offer.getDivision();
		int credits = offer.getCredits();

		String sqlStatement = "insert into offers (year, semester, course_code, course_name, division, credits) values (?,?,?,?,?,?)";

		return (jdbcTemplate.update(sqlStatement,
				new Object[] { year, semester, course_code, course_name, division, credits }) == 1);
	}

	public boolean update(Offer offer) {

		int id = offer.getId();
		int year = offer.getYear();
		int semester = offer.getSemester();
		String course_code = offer.getCourse_code();
		String course_name = offer.getCourse_name();
		String division = offer.getDivision();
		int credits = offer.getCredits();

		String sqlStatement = "update offers set year = ? , semester= ?, course_code= ? , course_name= ? , division= ? , credits= ? where id = ? ";

		return (jdbcTemplate.update(sqlStatement,
				new Object[] { year, semester, course_code, course_name, division, credits, id }) == 1);
	}

	public boolean delete(String course_code) {
		String sqlStatement = "delete from offers where course_code=?";
		return (jdbcTemplate.update(sqlStatement, new Object[] { course_code }) == 1);
	}

	public List<Offer> getNewOffer() {
		String sqlStatement = "select * from offers where year > date_format(now(),'%Y')"; // placeholder  현재 년도보다 zms 년도에 수강신청 기록만 갖고옴.(새로운 수강신청)
		return jdbcTemplate.query(sqlStatement, new RowMapper<Offer>() {

			@Override
			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offer offer = new Offer();
				//offer.setId(rs.getInt("id"));
				offer.setYear(rs.getInt("year"));
				offer.setSemester(rs.getInt("semester"));
				offer.setCourse_code(rs.getString("course_code"));
				offer.setCourse_name(rs.getString("course_name"));
				offer.setDivision(rs.getString("division"));
				offer.setCredits(rs.getInt("credits"));

				return offer;
			}

		});
		
	}
}
