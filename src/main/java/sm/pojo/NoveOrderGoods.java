package sm.pojo;

public class NoveOrderGoods {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column nove_order_goods.order_goods_id
     *
     * @mbggenerated
     */
    private Integer orderGoodsId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column nove_order_goods.goodsid
     *
     * @mbggenerated
     */
    private Integer goodsid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column nove_order_goods.orderid
     *
     * @mbggenerated
     */
    private String orderid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column nove_order_goods.order_goods_id
     *
     * @return the value of nove_order_goods.order_goods_id
     *
     * @mbggenerated
     */
    public Integer getOrderGoodsId() {
        return orderGoodsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column nove_order_goods.order_goods_id
     *
     * @param orderGoodsId the value for nove_order_goods.order_goods_id
     *
     * @mbggenerated
     */
    public void setOrderGoodsId(Integer orderGoodsId) {
        this.orderGoodsId = orderGoodsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column nove_order_goods.goodsid
     *
     * @return the value of nove_order_goods.goodsid
     *
     * @mbggenerated
     */
    public Integer getGoodsid() {
        return goodsid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column nove_order_goods.goodsid
     *
     * @param goodsid the value for nove_order_goods.goodsid
     *
     * @mbggenerated
     */
    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column nove_order_goods.orderid
     *
     * @return the value of nove_order_goods.orderid
     *
     * @mbggenerated
     */
    public String getOrderid() {
        return orderid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column nove_order_goods.orderid
     *
     * @param orderid the value for nove_order_goods.orderid
     *
     * @mbggenerated
     */
    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }
}