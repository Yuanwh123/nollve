package sm.pojo;

public class NoveOrderStatus {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column nove_orderstatus.orderStatus_id
     *
     * @mbggenerated
     */
    private Integer orderstatusId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column nove_orderstatus.orderstatus_name
     *
     * @mbggenerated
     */
    private String orderstatusName;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column nove_orderstatus.orderStatus_id
     *
     * @return the value of nove_orderstatus.orderStatus_id
     *
     * @mbggenerated
     */
    public Integer getOrderstatusId() {
        return orderstatusId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column nove_orderstatus.orderStatus_id
     *
     * @param orderstatusId the value for nove_orderstatus.orderStatus_id
     *
     * @mbggenerated
     */
    public void setOrderstatusId(Integer orderstatusId) {
        this.orderstatusId = orderstatusId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column nove_orderstatus.orderstatus_name
     *
     * @return the value of nove_orderstatus.orderstatus_name
     *
     * @mbggenerated
     */
    public String getOrderstatusName() {
        return orderstatusName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column nove_orderstatus.orderstatus_name
     *
     * @param orderstatusName the value for nove_orderstatus.orderstatus_name
     *
     * @mbggenerated
     */
    public void setOrderstatusName(String orderstatusName) {
        this.orderstatusName = orderstatusName == null ? null : orderstatusName.trim();
    }
}