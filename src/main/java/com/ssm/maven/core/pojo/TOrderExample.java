package com.ssm.maven.core.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TOrderExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TOrderExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOrderidIsNull() {
            addCriterion("orderid is null");
            return (Criteria) this;
        }

        public Criteria andOrderidIsNotNull() {
            addCriterion("orderid is not null");
            return (Criteria) this;
        }

        public Criteria andOrderidEqualTo(String value) {
            addCriterion("orderid =", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotEqualTo(String value) {
            addCriterion("orderid <>", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidGreaterThan(String value) {
            addCriterion("orderid >", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidGreaterThanOrEqualTo(String value) {
            addCriterion("orderid >=", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidLessThan(String value) {
            addCriterion("orderid <", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidLessThanOrEqualTo(String value) {
            addCriterion("orderid <=", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidLike(String value) {
            addCriterion("orderid like", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotLike(String value) {
            addCriterion("orderid not like", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidIn(List<String> values) {
            addCriterion("orderid in", values, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotIn(List<String> values) {
            addCriterion("orderid not in", values, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidBetween(String value1, String value2) {
            addCriterion("orderid between", value1, value2, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotBetween(String value1, String value2) {
            addCriterion("orderid not between", value1, value2, "orderid");
            return (Criteria) this;
        }

        public Criteria andPaymentIsNull() {
            addCriterion("payment is null");
            return (Criteria) this;
        }

        public Criteria andPaymentIsNotNull() {
            addCriterion("payment is not null");
            return (Criteria) this;
        }

        public Criteria andPaymentEqualTo(String value) {
            addCriterion("payment =", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotEqualTo(String value) {
            addCriterion("payment <>", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentGreaterThan(String value) {
            addCriterion("payment >", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentGreaterThanOrEqualTo(String value) {
            addCriterion("payment >=", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentLessThan(String value) {
            addCriterion("payment <", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentLessThanOrEqualTo(String value) {
            addCriterion("payment <=", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentLike(String value) {
            addCriterion("payment like", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotLike(String value) {
            addCriterion("payment not like", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentIn(List<String> values) {
            addCriterion("payment in", values, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotIn(List<String> values) {
            addCriterion("payment not in", values, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentBetween(String value1, String value2) {
            addCriterion("payment between", value1, value2, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotBetween(String value1, String value2) {
            addCriterion("payment not between", value1, value2, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentypeIsNull() {
            addCriterion("paymentype is null");
            return (Criteria) this;
        }

        public Criteria andPaymentypeIsNotNull() {
            addCriterion("paymentype is not null");
            return (Criteria) this;
        }

        public Criteria andPaymentypeEqualTo(Integer value) {
            addCriterion("paymentype =", value, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeNotEqualTo(Integer value) {
            addCriterion("paymentype <>", value, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeGreaterThan(Integer value) {
            addCriterion("paymentype >", value, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("paymentype >=", value, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeLessThan(Integer value) {
            addCriterion("paymentype <", value, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeLessThanOrEqualTo(Integer value) {
            addCriterion("paymentype <=", value, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeIn(List<Integer> values) {
            addCriterion("paymentype in", values, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeNotIn(List<Integer> values) {
            addCriterion("paymentype not in", values, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeBetween(Integer value1, Integer value2) {
            addCriterion("paymentype between", value1, value2, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPaymentypeNotBetween(Integer value1, Integer value2) {
            addCriterion("paymentype not between", value1, value2, "paymentype");
            return (Criteria) this;
        }

        public Criteria andPostmoneyIsNull() {
            addCriterion("postmoney is null");
            return (Criteria) this;
        }

        public Criteria andPostmoneyIsNotNull() {
            addCriterion("postmoney is not null");
            return (Criteria) this;
        }

        public Criteria andPostmoneyEqualTo(String value) {
            addCriterion("postmoney =", value, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyNotEqualTo(String value) {
            addCriterion("postmoney <>", value, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyGreaterThan(String value) {
            addCriterion("postmoney >", value, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyGreaterThanOrEqualTo(String value) {
            addCriterion("postmoney >=", value, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyLessThan(String value) {
            addCriterion("postmoney <", value, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyLessThanOrEqualTo(String value) {
            addCriterion("postmoney <=", value, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyLike(String value) {
            addCriterion("postmoney like", value, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyNotLike(String value) {
            addCriterion("postmoney not like", value, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyIn(List<String> values) {
            addCriterion("postmoney in", values, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyNotIn(List<String> values) {
            addCriterion("postmoney not in", values, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyBetween(String value1, String value2) {
            addCriterion("postmoney between", value1, value2, "postmoney");
            return (Criteria) this;
        }

        public Criteria andPostmoneyNotBetween(String value1, String value2) {
            addCriterion("postmoney not between", value1, value2, "postmoney");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNull() {
            addCriterion("createtime is null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNotNull() {
            addCriterion("createtime is not null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeEqualTo(Date value) {
            addCriterion("createtime =", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotEqualTo(Date value) {
            addCriterion("createtime <>", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThan(Date value) {
            addCriterion("createtime >", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("createtime >=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThan(Date value) {
            addCriterion("createtime <", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("createtime <=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIn(List<Date> values) {
            addCriterion("createtime in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotIn(List<Date> values) {
            addCriterion("createtime not in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeBetween(Date value1, Date value2) {
            addCriterion("createtime between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("createtime not between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeIsNull() {
            addCriterion("updatetime is null");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeIsNotNull() {
            addCriterion("updatetime is not null");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeEqualTo(Date value) {
            addCriterion("updatetime =", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeNotEqualTo(Date value) {
            addCriterion("updatetime <>", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeGreaterThan(Date value) {
            addCriterion("updatetime >", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("updatetime >=", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeLessThan(Date value) {
            addCriterion("updatetime <", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeLessThanOrEqualTo(Date value) {
            addCriterion("updatetime <=", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeIn(List<Date> values) {
            addCriterion("updatetime in", values, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeNotIn(List<Date> values) {
            addCriterion("updatetime not in", values, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeBetween(Date value1, Date value2) {
            addCriterion("updatetime between", value1, value2, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeNotBetween(Date value1, Date value2) {
            addCriterion("updatetime not between", value1, value2, "updatetime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeIsNull() {
            addCriterion("paymenttime is null");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeIsNotNull() {
            addCriterion("paymenttime is not null");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeEqualTo(Date value) {
            addCriterion("paymenttime =", value, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeNotEqualTo(Date value) {
            addCriterion("paymenttime <>", value, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeGreaterThan(Date value) {
            addCriterion("paymenttime >", value, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeGreaterThanOrEqualTo(Date value) {
            addCriterion("paymenttime >=", value, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeLessThan(Date value) {
            addCriterion("paymenttime <", value, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeLessThanOrEqualTo(Date value) {
            addCriterion("paymenttime <=", value, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeIn(List<Date> values) {
            addCriterion("paymenttime in", values, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeNotIn(List<Date> values) {
            addCriterion("paymenttime not in", values, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeBetween(Date value1, Date value2) {
            addCriterion("paymenttime between", value1, value2, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andPaymenttimeNotBetween(Date value1, Date value2) {
            addCriterion("paymenttime not between", value1, value2, "paymenttime");
            return (Criteria) this;
        }

        public Criteria andSendtimeIsNull() {
            addCriterion("sendtime is null");
            return (Criteria) this;
        }

        public Criteria andSendtimeIsNotNull() {
            addCriterion("sendtime is not null");
            return (Criteria) this;
        }

        public Criteria andSendtimeEqualTo(Date value) {
            addCriterion("sendtime =", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotEqualTo(Date value) {
            addCriterion("sendtime <>", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeGreaterThan(Date value) {
            addCriterion("sendtime >", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("sendtime >=", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeLessThan(Date value) {
            addCriterion("sendtime <", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeLessThanOrEqualTo(Date value) {
            addCriterion("sendtime <=", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeIn(List<Date> values) {
            addCriterion("sendtime in", values, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotIn(List<Date> values) {
            addCriterion("sendtime not in", values, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeBetween(Date value1, Date value2) {
            addCriterion("sendtime between", value1, value2, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotBetween(Date value1, Date value2) {
            addCriterion("sendtime not between", value1, value2, "sendtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeIsNull() {
            addCriterion("endtime is null");
            return (Criteria) this;
        }

        public Criteria andEndtimeIsNotNull() {
            addCriterion("endtime is not null");
            return (Criteria) this;
        }

        public Criteria andEndtimeEqualTo(Date value) {
            addCriterion("endtime =", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeNotEqualTo(Date value) {
            addCriterion("endtime <>", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeGreaterThan(Date value) {
            addCriterion("endtime >", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("endtime >=", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeLessThan(Date value) {
            addCriterion("endtime <", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeLessThanOrEqualTo(Date value) {
            addCriterion("endtime <=", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeIn(List<Date> values) {
            addCriterion("endtime in", values, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeNotIn(List<Date> values) {
            addCriterion("endtime not in", values, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeBetween(Date value1, Date value2) {
            addCriterion("endtime between", value1, value2, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeNotBetween(Date value1, Date value2) {
            addCriterion("endtime not between", value1, value2, "endtime");
            return (Criteria) this;
        }

        public Criteria andClosetimeIsNull() {
            addCriterion("closetime is null");
            return (Criteria) this;
        }

        public Criteria andClosetimeIsNotNull() {
            addCriterion("closetime is not null");
            return (Criteria) this;
        }

        public Criteria andClosetimeEqualTo(Date value) {
            addCriterion("closetime =", value, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeNotEqualTo(Date value) {
            addCriterion("closetime <>", value, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeGreaterThan(Date value) {
            addCriterion("closetime >", value, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("closetime >=", value, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeLessThan(Date value) {
            addCriterion("closetime <", value, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeLessThanOrEqualTo(Date value) {
            addCriterion("closetime <=", value, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeIn(List<Date> values) {
            addCriterion("closetime in", values, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeNotIn(List<Date> values) {
            addCriterion("closetime not in", values, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeBetween(Date value1, Date value2) {
            addCriterion("closetime between", value1, value2, "closetime");
            return (Criteria) this;
        }

        public Criteria andClosetimeNotBetween(Date value1, Date value2) {
            addCriterion("closetime not between", value1, value2, "closetime");
            return (Criteria) this;
        }

        public Criteria andShippingnameIsNull() {
            addCriterion("shippingname is null");
            return (Criteria) this;
        }

        public Criteria andShippingnameIsNotNull() {
            addCriterion("shippingname is not null");
            return (Criteria) this;
        }

        public Criteria andShippingnameEqualTo(String value) {
            addCriterion("shippingname =", value, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameNotEqualTo(String value) {
            addCriterion("shippingname <>", value, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameGreaterThan(String value) {
            addCriterion("shippingname >", value, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameGreaterThanOrEqualTo(String value) {
            addCriterion("shippingname >=", value, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameLessThan(String value) {
            addCriterion("shippingname <", value, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameLessThanOrEqualTo(String value) {
            addCriterion("shippingname <=", value, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameLike(String value) {
            addCriterion("shippingname like", value, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameNotLike(String value) {
            addCriterion("shippingname not like", value, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameIn(List<String> values) {
            addCriterion("shippingname in", values, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameNotIn(List<String> values) {
            addCriterion("shippingname not in", values, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameBetween(String value1, String value2) {
            addCriterion("shippingname between", value1, value2, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingnameNotBetween(String value1, String value2) {
            addCriterion("shippingname not between", value1, value2, "shippingname");
            return (Criteria) this;
        }

        public Criteria andShippingcodeIsNull() {
            addCriterion("shippingcode is null");
            return (Criteria) this;
        }

        public Criteria andShippingcodeIsNotNull() {
            addCriterion("shippingcode is not null");
            return (Criteria) this;
        }

        public Criteria andShippingcodeEqualTo(String value) {
            addCriterion("shippingcode =", value, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeNotEqualTo(String value) {
            addCriterion("shippingcode <>", value, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeGreaterThan(String value) {
            addCriterion("shippingcode >", value, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeGreaterThanOrEqualTo(String value) {
            addCriterion("shippingcode >=", value, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeLessThan(String value) {
            addCriterion("shippingcode <", value, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeLessThanOrEqualTo(String value) {
            addCriterion("shippingcode <=", value, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeLike(String value) {
            addCriterion("shippingcode like", value, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeNotLike(String value) {
            addCriterion("shippingcode not like", value, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeIn(List<String> values) {
            addCriterion("shippingcode in", values, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeNotIn(List<String> values) {
            addCriterion("shippingcode not in", values, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeBetween(String value1, String value2) {
            addCriterion("shippingcode between", value1, value2, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andShippingcodeNotBetween(String value1, String value2) {
            addCriterion("shippingcode not between", value1, value2, "shippingcode");
            return (Criteria) this;
        }

        public Criteria andAdminidIsNull() {
            addCriterion("adminid is null");
            return (Criteria) this;
        }

        public Criteria andAdminidIsNotNull() {
            addCriterion("adminid is not null");
            return (Criteria) this;
        }

        public Criteria andAdminidEqualTo(Integer value) {
            addCriterion("adminid =", value, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidNotEqualTo(Integer value) {
            addCriterion("adminid <>", value, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidGreaterThan(Integer value) {
            addCriterion("adminid >", value, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidGreaterThanOrEqualTo(Integer value) {
            addCriterion("adminid >=", value, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidLessThan(Integer value) {
            addCriterion("adminid <", value, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidLessThanOrEqualTo(Integer value) {
            addCriterion("adminid <=", value, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidIn(List<Integer> values) {
            addCriterion("adminid in", values, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidNotIn(List<Integer> values) {
            addCriterion("adminid not in", values, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidBetween(Integer value1, Integer value2) {
            addCriterion("adminid between", value1, value2, "adminid");
            return (Criteria) this;
        }

        public Criteria andAdminidNotBetween(Integer value1, Integer value2) {
            addCriterion("adminid not between", value1, value2, "adminid");
            return (Criteria) this;
        }

        public Criteria andMessageIsNull() {
            addCriterion("message is null");
            return (Criteria) this;
        }

        public Criteria andMessageIsNotNull() {
            addCriterion("message is not null");
            return (Criteria) this;
        }

        public Criteria andMessageEqualTo(String value) {
            addCriterion("message =", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageNotEqualTo(String value) {
            addCriterion("message <>", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageGreaterThan(String value) {
            addCriterion("message >", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageGreaterThanOrEqualTo(String value) {
            addCriterion("message >=", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageLessThan(String value) {
            addCriterion("message <", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageLessThanOrEqualTo(String value) {
            addCriterion("message <=", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageLike(String value) {
            addCriterion("message like", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageNotLike(String value) {
            addCriterion("message not like", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageIn(List<String> values) {
            addCriterion("message in", values, "message");
            return (Criteria) this;
        }

        public Criteria andMessageNotIn(List<String> values) {
            addCriterion("message not in", values, "message");
            return (Criteria) this;
        }

        public Criteria andMessageBetween(String value1, String value2) {
            addCriterion("message between", value1, value2, "message");
            return (Criteria) this;
        }

        public Criteria andMessageNotBetween(String value1, String value2) {
            addCriterion("message not between", value1, value2, "message");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}