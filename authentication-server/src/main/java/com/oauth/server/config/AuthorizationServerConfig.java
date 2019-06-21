package com.oauth.server.config;

import com.oauth.server.service.impl.CustomerUserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

@Configuration
@EnableAuthorizationServer

public class AuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {
    //认证管理器

    @Autowired
    @Qualifier(value = "authenticationManagerBean")
    AuthenticationManager authenticationManager;

    //存储链接
    @Autowired
    RedisConnectionFactory redisConnectionFactory;

    @Autowired
    CustomerUserServiceImpl customerUserService;


    //token存放位置
    @Bean
    public RedisTokenStore tokenStore() {
        RedisTokenStore redisTokenStore = new RedisTokenStore(redisConnectionFactory);

        redisTokenStore.setAuthenticationKeyGenerator(new RandomAuthenticationKeyGenerator());

        return redisTokenStore;
    }

    //配置认证管理器以及用户信息业务实现 用来配置授权（authorization）以及令牌（token）的访问端点和令牌服务(token services)。

    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) {
        endpoints.tokenStore(tokenStore())
                .userDetailsService(customerUserService)
                .authenticationManager(authenticationManager)
                .reuseRefreshTokens(false)
                .allowedTokenEndpointRequestMethods(HttpMethod.GET, HttpMethod.POST);//若无，refresh_token会有UserDetailsService is required错误

    }


    //    //配置认证规则，那些需要认证那些不需要 用来配置令牌端点(Token Endpoint)的安全约束.
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
        security
                .tokenKeyAccess("permitAll()")
                .checkTokenAccess("permitAll()") //isAuthenticated()

                .allowFormAuthenticationForClients();
    }

    //配置客户端
    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {


        clients.inMemory()
                .withClient("user-service0")//客户端账户
                .resourceIds("1")//只能对资源服务器对应的id进行访问 ，对应的资源服务器也有一样的编号
                .authorizedGrantTypes("password", "authorization_code", "client_credentials", "refresh_token")//授权方式
                .scopes("service")//作用域
                .secret("{noop}1234567")
                .and()
                .withClient("user-service")
                .authorizedGrantTypes("client_credentials", "password", "refresh_token", "authorization_code")
                .scopes("all")
                .secret("{noop}123456").redirectUris("http://www.baidu.com")
                .accessTokenValiditySeconds(110)// //Access token is only valid for 2 minutes.
                .refreshTokenValiditySeconds(600);//Refresh token is only valid for 10 minutes.;
    }
}
