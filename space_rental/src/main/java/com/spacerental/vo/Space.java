package com.spacerental.vo;

import java.util.ArrayList;

import lombok.Data;

@Data
public class Space {
	private int spaceNo;
	private String spaceName;
	private String type;
	private String content;
	private int maximum;
	private String bim;
	private String smoking;
	private String food;
	private String wifi;
	private String computer;
	private String hostId;
	private int hostNo;

	private ArrayList<Rent> rent;
	private SpaceFile file;//대표사진 flag=1
	private ArrayList<SpaceFile> files; //flag=0
}
