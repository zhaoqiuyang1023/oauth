package com.resource.server.entity.ao;


import lombok.Data;

@Data
public class OauthAo {

    private String grant_type;
    private String username;
    private String password;
    private String scope;
    private String client_id;
    private String client_secret;

}
