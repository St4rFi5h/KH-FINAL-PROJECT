package kr.or.eutchapedia;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
public class TilesConfiguration implements WebMvcConfigurer {
	
	/* Tiles 설정파일 읽어옴 */
	@Bean
	public TilesConfigurer tilesConfigurer() {
		final TilesConfigurer tilesConfigurer = new TilesConfigurer();
		
		tilesConfigurer.setDefinitions(new String[] {"/WEB-INF/tiles/tiles.xml"});
		tilesConfigurer.setCheckRefresh(true);
		
		return tilesConfigurer;
	}
	
	/* 뷰 우선순위 1번으로 세팅 */
	@Bean
	public TilesViewResolver tilesViewResolver() {
		final TilesViewResolver tilesViewResolver = new TilesViewResolver();
		
		tilesViewResolver.setViewClass(TilesView.class);
		tilesViewResolver.setOrder(1);
		
		return tilesViewResolver;
	}
	
}
