package com.abyan.dao;

import java.util.List;

import com.abyan.entity.Tag;

public interface TagDAO {
	
	public List<Tag> getTag();
	
	public void saveTag(Tag tag);
	
	public Tag getTagByID(int tagID);
	
	public void deleteTag(int tagID);

}
