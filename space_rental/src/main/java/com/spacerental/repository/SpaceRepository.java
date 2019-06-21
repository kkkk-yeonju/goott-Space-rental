package com.spacerental.repository;

import java.util.List;

import com.spacerental.common.Pagination;
import com.spacerental.vo.Host;
import com.spacerental.vo.Space;
import com.spacerental.vo.SpaceFile;

public interface SpaceRepository {

	int insertHost(Host host);
	int insertHost2(Host host);
	
	int insertSpace(Space space);

	void insertSpaceFile(SpaceFile file);
	
	int selectHostListCnt(String type);

	List<Host> selectHost(Pagination pagination, String type);

	Host selectHostByHostNo(int hostNo);

	SpaceFile selectHostFile(int hostNo);

	List<SpaceFile> selectSpaceFilesBySpaceNo(int spaceNo);

	List<SpaceFile> selectHostFilesByHostNo(int hostNo);

	List<Space> selectSpacesByHostNo(int hostNo);

	Space selectSpaceBySpaceNo(int spaceNo);

	SpaceFile selectSpaceFile(int spaceNo);

}
