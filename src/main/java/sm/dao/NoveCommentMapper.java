package sm.dao;

import sm.pojo.NoveComment;

public interface NoveCommentMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_comment
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer commentId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_comment
     *
     * @mbggenerated
     */
    int insert(NoveComment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_comment
     *
     * @mbggenerated
     */
    int insertSelective(NoveComment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_comment
     *
     * @mbggenerated
     */
    NoveComment selectByPrimaryKey(Integer commentId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_comment
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(NoveComment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_comment
     *
     * @mbggenerated
     */
    int updateByPrimaryKeyWithBLOBs(NoveComment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table nove_comment
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(NoveComment record);
}