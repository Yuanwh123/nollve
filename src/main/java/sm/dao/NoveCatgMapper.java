package sm.dao;

import sm.pojo.NoveCatg;

public interface NoveCatgMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_catg
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer catgId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_catg
     *
     * @mbggenerated
     */
    int insert(NoveCatg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_catg
     *
     * @mbggenerated
     */
    int insertSelective(NoveCatg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_catg
     *
     * @mbggenerated
     */
    NoveCatg selectByPrimaryKey(Integer catgId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_catg
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(NoveCatg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_catg
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(NoveCatg record);
}