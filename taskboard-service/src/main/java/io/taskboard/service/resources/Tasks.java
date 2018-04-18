package io.taskboard.service.resources;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.SwaggerDefinition;
import io.swagger.annotations.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;

@Path("/v1/tasks")
@Api(tags = "Tasks")
@SwaggerDefinition(tags = { @Tag(name = "tasks", description = "Task APIs"), })
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class Tasks {
	private static final Logger LOG = LoggerFactory.getLogger(Tasks.class);

	@GET
	@Path("/")
	@ApiOperation(value = "listTasks", response = String.class, responseContainer = "List")
	public List<String> listTasks() throws Exception {
		LOG.info("List Tasks");
		return new ArrayList<String>();
	}

}
