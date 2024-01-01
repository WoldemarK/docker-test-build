package org.example.dockertestbuild.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/test")
public class TestDockerRestController {

    @GetMapping("/m")
    public String getMessage() {
        return "SOME MESSAGE";

    }
    @GetMapping(value = "/name",
            headers = "some=Header",
            consumes = "application/json")
    @ResponseBody
    public String getMessage(@RequestParam String name) {
        return "This is some " + name;
    }
}
