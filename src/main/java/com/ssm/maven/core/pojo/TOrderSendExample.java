package com.ssm.maven.core.pojo;

import java.util.ArrayList;
import java.util.List;

public class TOrderSendExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TOrderSendExample() {
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

        public Criteria andSendnameIsNull() {
            addCriterion("sendname is null");
            return (Criteria) this;
        }

        public Criteria andSendnameIsNotNull() {
            addCriterion("sendname is not null");
            return (Criteria) this;
        }

        public Criteria andSendnameEqualTo(String value) {
            addCriterion("sendname =", value, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameNotEqualTo(String value) {
            addCriterion("sendname <>", value, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameGreaterThan(String value) {
            addCriterion("sendname >", value, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameGreaterThanOrEqualTo(String value) {
            addCriterion("sendname >=", value, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameLessThan(String value) {
            addCriterion("sendname <", value, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameLessThanOrEqualTo(String value) {
            addCriterion("sendname <=", value, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameLike(String value) {
            addCriterion("sendname like", value, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameNotLike(String value) {
            addCriterion("sendname not like", value, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameIn(List<String> values) {
            addCriterion("sendname in", values, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameNotIn(List<String> values) {
            addCriterion("sendname not in", values, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameBetween(String value1, String value2) {
            addCriterion("sendname between", value1, value2, "sendname");
            return (Criteria) this;
        }

        public Criteria andSendnameNotBetween(String value1, String value2) {
            addCriterion("sendname not between", value1, value2, "sendname");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andPhonenoIsNull() {
            addCriterion("phoneno is null");
            return (Criteria) this;
        }

        public Criteria andPhonenoIsNotNull() {
            addCriterion("phoneno is not null");
            return (Criteria) this;
        }

        public Criteria andPhonenoEqualTo(Integer value) {
            addCriterion("phoneno =", value, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoNotEqualTo(Integer value) {
            addCriterion("phoneno <>", value, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoGreaterThan(Integer value) {
            addCriterion("phoneno >", value, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoGreaterThanOrEqualTo(Integer value) {
            addCriterion("phoneno >=", value, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoLessThan(Integer value) {
            addCriterion("phoneno <", value, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoLessThanOrEqualTo(Integer value) {
            addCriterion("phoneno <=", value, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoIn(List<Integer> values) {
            addCriterion("phoneno in", values, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoNotIn(List<Integer> values) {
            addCriterion("phoneno not in", values, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoBetween(Integer value1, Integer value2) {
            addCriterion("phoneno between", value1, value2, "phoneno");
            return (Criteria) this;
        }

        public Criteria andPhonenoNotBetween(Integer value1, Integer value2) {
            addCriterion("phoneno not between", value1, value2, "phoneno");
            return (Criteria) this;
        }

        public Criteria andProvinceIsNull() {
            addCriterion("province is null");
            return (Criteria) this;
        }

        public Criteria andProvinceIsNotNull() {
            addCriterion("province is not null");
            return (Criteria) this;
        }

        public Criteria andProvinceEqualTo(String value) {
            addCriterion("province =", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotEqualTo(String value) {
            addCriterion("province <>", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceGreaterThan(String value) {
            addCriterion("province >", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceGreaterThanOrEqualTo(String value) {
            addCriterion("province >=", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLessThan(String value) {
            addCriterion("province <", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLessThanOrEqualTo(String value) {
            addCriterion("province <=", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLike(String value) {
            addCriterion("province like", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotLike(String value) {
            addCriterion("province not like", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceIn(List<String> values) {
            addCriterion("province in", values, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotIn(List<String> values) {
            addCriterion("province not in", values, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceBetween(String value1, String value2) {
            addCriterion("province between", value1, value2, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotBetween(String value1, String value2) {
            addCriterion("province not between", value1, value2, "province");
            return (Criteria) this;
        }

        public Criteria andCityIsNull() {
            addCriterion("city is null");
            return (Criteria) this;
        }

        public Criteria andCityIsNotNull() {
            addCriterion("city is not null");
            return (Criteria) this;
        }

        public Criteria andCityEqualTo(String value) {
            addCriterion("city =", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotEqualTo(String value) {
            addCriterion("city <>", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThan(String value) {
            addCriterion("city >", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThanOrEqualTo(String value) {
            addCriterion("city >=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThan(String value) {
            addCriterion("city <", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThanOrEqualTo(String value) {
            addCriterion("city <=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLike(String value) {
            addCriterion("city like", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotLike(String value) {
            addCriterion("city not like", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityIn(List<String> values) {
            addCriterion("city in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotIn(List<String> values) {
            addCriterion("city not in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityBetween(String value1, String value2) {
            addCriterion("city between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotBetween(String value1, String value2) {
            addCriterion("city not between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andRegionIsNull() {
            addCriterion("region is null");
            return (Criteria) this;
        }

        public Criteria andRegionIsNotNull() {
            addCriterion("region is not null");
            return (Criteria) this;
        }

        public Criteria andRegionEqualTo(String value) {
            addCriterion("region =", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionNotEqualTo(String value) {
            addCriterion("region <>", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionGreaterThan(String value) {
            addCriterion("region >", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionGreaterThanOrEqualTo(String value) {
            addCriterion("region >=", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionLessThan(String value) {
            addCriterion("region <", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionLessThanOrEqualTo(String value) {
            addCriterion("region <=", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionLike(String value) {
            addCriterion("region like", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionNotLike(String value) {
            addCriterion("region not like", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionIn(List<String> values) {
            addCriterion("region in", values, "region");
            return (Criteria) this;
        }

        public Criteria andRegionNotIn(List<String> values) {
            addCriterion("region not in", values, "region");
            return (Criteria) this;
        }

        public Criteria andRegionBetween(String value1, String value2) {
            addCriterion("region between", value1, value2, "region");
            return (Criteria) this;
        }

        public Criteria andRegionNotBetween(String value1, String value2) {
            addCriterion("region not between", value1, value2, "region");
            return (Criteria) this;
        }

        public Criteria andDetailedIsNull() {
            addCriterion("detailed is null");
            return (Criteria) this;
        }

        public Criteria andDetailedIsNotNull() {
            addCriterion("detailed is not null");
            return (Criteria) this;
        }

        public Criteria andDetailedEqualTo(String value) {
            addCriterion("detailed =", value, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedNotEqualTo(String value) {
            addCriterion("detailed <>", value, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedGreaterThan(String value) {
            addCriterion("detailed >", value, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedGreaterThanOrEqualTo(String value) {
            addCriterion("detailed >=", value, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedLessThan(String value) {
            addCriterion("detailed <", value, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedLessThanOrEqualTo(String value) {
            addCriterion("detailed <=", value, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedLike(String value) {
            addCriterion("detailed like", value, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedNotLike(String value) {
            addCriterion("detailed not like", value, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedIn(List<String> values) {
            addCriterion("detailed in", values, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedNotIn(List<String> values) {
            addCriterion("detailed not in", values, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedBetween(String value1, String value2) {
            addCriterion("detailed between", value1, value2, "detailed");
            return (Criteria) this;
        }

        public Criteria andDetailedNotBetween(String value1, String value2) {
            addCriterion("detailed not between", value1, value2, "detailed");
            return (Criteria) this;
        }

        public Criteria andPostalcodeIsNull() {
            addCriterion("postalcode is null");
            return (Criteria) this;
        }

        public Criteria andPostalcodeIsNotNull() {
            addCriterion("postalcode is not null");
            return (Criteria) this;
        }

        public Criteria andPostalcodeEqualTo(Integer value) {
            addCriterion("postalcode =", value, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeNotEqualTo(Integer value) {
            addCriterion("postalcode <>", value, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeGreaterThan(Integer value) {
            addCriterion("postalcode >", value, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeGreaterThanOrEqualTo(Integer value) {
            addCriterion("postalcode >=", value, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeLessThan(Integer value) {
            addCriterion("postalcode <", value, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeLessThanOrEqualTo(Integer value) {
            addCriterion("postalcode <=", value, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeIn(List<Integer> values) {
            addCriterion("postalcode in", values, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeNotIn(List<Integer> values) {
            addCriterion("postalcode not in", values, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeBetween(Integer value1, Integer value2) {
            addCriterion("postalcode between", value1, value2, "postalcode");
            return (Criteria) this;
        }

        public Criteria andPostalcodeNotBetween(Integer value1, Integer value2) {
            addCriterion("postalcode not between", value1, value2, "postalcode");
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