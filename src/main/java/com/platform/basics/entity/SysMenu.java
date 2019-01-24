package com.platform.basics.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_menu")
public class SysMenu implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -713887107534896846L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 图标
     */
    private String icon;

    /**
     * 父级菜单
     */
    private Integer pid;

    /**
     * 目录等级
     */
    private Integer level;

    /**
     * 菜单名称
     */
    private String name;

    /**
     * 排序id
     */
    private Integer soft;

    /**
     * 菜单url
     */
    private String url;

    @Column(name = "level_number")
    private Integer levelNumber;
    
    /**
     * .是否为内嵌页面
     */
    private Boolean iframe;

    /**
     * 是否为系统级的菜单 1为系统菜单0不是
     */
    private Byte sys;

    /**
     * 创建时间
     */
    @Column(name = "gmt_create")
    private Date gmtCreate;

    /**
     * 更改时间
     */
    @Column(name = "gmt_modified")
    private Date gmtModified;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取图标
     *
     * @return icon - 图标
     */
    public String getIcon() {
        return icon;
    }

    /**
     * 设置图标
     *
     * @param icon 图标
     */
    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    /**
     * 获取父级菜单
     *
     * @return pid - 父级菜单
     */
    public Integer getPid() {
        return pid;
    }

    /**
     * 设置父级菜单
     *
     * @param pid 父级菜单
     */
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    /**
     * 获取目录等级
     *
     * @return level - 目录等级
     */
    public Integer getLevel() {
        return level;
    }

    /**
     * 设置目录等级
     *
     * @param level 目录等级
     */
    public void setLevel(Integer level) {
        this.level = level;
    }

    /**
     * 获取菜单名称
     *
     * @return name - 菜单名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置菜单名称
     *
     * @param name 菜单名称
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 获取排序id
     *
     * @return soft - 排序id
     */
    public Integer getSoft() {
        return soft;
    }

    /**
     * 设置排序id
     *
     * @param soft 排序id
     */
    public void setSoft(Integer soft) {
        this.soft = soft;
    }

    /**
     * 获取菜单url
     *
     * @return url - 菜单url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置菜单url
     *
     * @param url 菜单url
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * @return level_number
     */
    public Integer getLevelNumber() {
        return levelNumber;
    }

    /**
     * @param levelNumber
     */
    public void setLevelNumber(Integer levelNumber) {
        this.levelNumber = levelNumber;
    }
    

    public Boolean getIframe() {
		return iframe;
	}

	public void setIframe(Boolean iframe) {
		this.iframe = iframe;
	}

	/**
     * 获取是否为系统级的菜单 1为系统菜单0不是
     *
     * @return sys - 是否为系统级的菜单 1为系统菜单0不是
     */
    public Byte getSys() {
        return sys;
    }

    /**
     * 设置是否为系统级的菜单 1为系统菜单0不是
     *
     * @param sys 是否为系统级的菜单 1为系统菜单0不是
     */
    public void setSys(Byte sys) {
        this.sys = sys;
    }

    /**
     * 获取创建时间
     *
     * @return gmt_create - 创建时间
     */
    public Date getGmtCreate() {
        return gmtCreate;
    }

    /**
     * 设置创建时间
     *
     * @param gmtCreate 创建时间
     */
    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    /**
     * 获取更改时间
     *
     * @return gmt_modified - 更改时间
     */
    public Date getGmtModified() {
        return gmtModified;
    }

    /**
     * 设置更改时间
     *
     * @param gmtModified 更改时间
     */
    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }
}