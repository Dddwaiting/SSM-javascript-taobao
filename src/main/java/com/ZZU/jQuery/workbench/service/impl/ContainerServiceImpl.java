package com.ZZU.jQuery.workbench.service.impl;

import com.ZZU.jQuery.workbench.mapper.ContainerMapper;
import com.ZZU.jQuery.workbench.pojo.Container;
import com.ZZU.jQuery.workbench.service.ContainerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContainerServiceImpl implements ContainerService {

    @Autowired
    private ContainerMapper containerMapper;

    @Override
    public int addContainer(Container container) {
        return containerMapper.insert(container);
    }
}
