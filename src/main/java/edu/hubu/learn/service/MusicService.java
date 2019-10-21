package edu.hubu.learn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;

import edu.hubu.learn.dao.MusicDao;
import edu.hubu.learn.entity.Music;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
public class MusicService {

    @Autowired
    private MusicDao musicDao;

    public Music getMusic(Long id) {
        return musicDao.findById(id).get();
    }



	public List<Music> getMusics() {
        return musicDao.findAll(new Sort(Direction.DESC, "id"));
    }

    public List<Music> searchMusics(String keyword) {
        log.info(keyword);
        Music music = new Music();
        music.setSongname(keyword);
        ExampleMatcher matcher = ExampleMatcher.matching().withMatcher("songname", match->match.contains());
        Example<Music> example = Example.of(music, matcher);
        Sort sort = new Sort(Direction.DESC, "id");
        return musicDao.findAll(example, sort);
    }


    public Music addMusic(Music music) {
        return musicDao.save(music);
    }

	public void deleteMusic(Long id) {
        musicDao.deleteById(id);
    }
    
    public void modifyMusic(Music music) {
        musicDao.save(music);
	}


	



}