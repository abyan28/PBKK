package com.abyan.services;

import java.util.List;

import com.abyan.entity.Tag;

public interface TagService {
	
	public List<Tag> getTag();
	
	public void saveTag(Tag tag);
	
	public Tag getTagByID(int tagID);
	
	public void deleteTag(int tagID);

}
