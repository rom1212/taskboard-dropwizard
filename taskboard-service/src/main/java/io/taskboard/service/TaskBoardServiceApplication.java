package io.taskboard.service;

import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import io.swagger.jaxrs.config.BeanConfig;
import io.swagger.jaxrs.listing.ApiListingResource;
import io.swagger.jaxrs.listing.SwaggerSerializers;

public class TaskBoardServiceApplication extends Application<TaskBoardServiceConfiguration> {

    public static void main(final String[] args) throws Exception {
        new TaskBoardServiceApplication().run(args);
    }

    @Override
    public String getName() {
        return "TaskBoardService";
    }

    @Override
    public void initialize(final Bootstrap<TaskBoardServiceConfiguration> bootstrap) {
        // TODO: application initialization
    }

    @Override
    public void run(final TaskBoardServiceConfiguration configuration,
                    final Environment environment) {
        // TODO: implement application

        // Setup Swagger spec generation.
        environment.jersey().register(new ApiListingResource());
        environment.jersey().register(new SwaggerSerializers());
        BeanConfig config = new BeanConfig();
        config.setTitle("Task Board Service API");
        config.setVersion("0.1.0");
        config.setResourcePackage("io.taskboard.service.resources");
        config.setScan(true);

    }

}
