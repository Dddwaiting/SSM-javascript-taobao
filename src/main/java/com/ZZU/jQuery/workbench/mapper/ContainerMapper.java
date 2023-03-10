package com.ZZU.jQuery.workbench.mapper;

import com.ZZU.jQuery.workbench.pojo.Container;
import java.util.List;

public interface ContainerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_container
     *
     * @mbggenerated Fri Dec 16 18:17:29 CST 2022
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_container
     *
     * @mbggenerated Fri Dec 16 18:17:29 CST 2022
     */
    int insert(Container record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_container
     *
     * @mbggenerated Fri Dec 16 18:17:29 CST 2022
     */
    Container selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_container
     *
     * @mbggenerated Fri Dec 16 18:17:29 CST 2022
     */
    List<Container> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_container
     *
     * @mbggenerated Fri Dec 16 18:17:29 CST 2022
     */
    int updateByPrimaryKey(Container record);
}